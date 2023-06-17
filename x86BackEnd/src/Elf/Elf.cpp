#include <assert.h>
#include <stdio.h>

#include "Elf.hpp"

#define SUCCESS 0
#define FAILURE -1

#pragma GCC diagnostic ignored "-Wformat"

//////////////////////////////////////////////////////////////////////////////////////////////////////
static int SetEhdr (Elf64_Ehdr* elf);
static int SetPhdr (Elf64_Phdr* header, uint32_t p_type, Elf64_Addr segment_virtual_add, uint32_t rights_flags);

static int SetPhdrSize   (Elf64_Phdr* header, uint64_t size);
static int SetPhdrOffset (Elf64_Phdr* header, Elf64_Off segment_offset);

void Elf::SetElfHeaders (ElfHeaders* elf)
    {
    assert(elf);

    SetEhdr (&elf->elf_header);
    
    SetPhdr (&elf->code_phdr, PT_LOAD,  CODE_VIRTUAL_ADDRESS,   PF_X | PF_R);
    SetPhdr (&elf->stack_phdr, PT_GNU_STACK, 0,  PF_R | PF_W);

    elf->stack_phdr.p_align = 0x10;

    return SUCCESS;
    }

static int SetEhdr (Elf64_Ehdr* elf)
    {
    assert(elf);

    *elf = { .e_ident = { ELFMAG0, ELFMAG1, ELFMAG2, ELFMAG3, 
                          ELFCLASS64, ELFDATA2LSB, EV_CURRENT, 
                          ELFOSABI_SYSV },
             
             .e_type    = ET_EXEC,
             .e_machine = EM_X86_64,
             .e_version = EV_CURRENT,
             
             .e_entry = ENTRY_POINT,
             .e_phoff = PHDR_TABLE_OFFSET,
             
              .e_ehsize    = sizeof(Elf64_Ehdr),
              .e_phentsize = sizeof(Elf64_Phdr),
              .e_phnum     = NUMBER_OF_SEGMENTS,

            };

    return 1;
    }

static int SetPhdr (Elf64_Phdr* header, uint32_t p_type, Elf64_Addr segment_virtual_add, uint32_t rights_flags)
    {
    assert(header);

    *header = { .p_type  = p_type, 
                .p_flags = rights_flags, 
                .p_vaddr = segment_virtual_add,
              };

    return 0;
    }

static int SetPhdrSize (Elf64_Phdr* header, uint64_t size)
    {
    assert(header);
    
    header->p_filesz = size;
    header->p_memsz  = size;

    return SUCCESS;
    }

static int SetPhdrOffset (Elf64_Phdr* segment_hdr, Elf64_Off segment_offset)
    {
    assert(segment_hdr);
    
    segment_hdr->p_offset = segment_offset;

    return SUCCESS;
    }

//////////////////////////////////////////////////////////////////////////////////////////////////////
Elf::Elf ()
    {
    SetElfHeaders(&headers);

    BufferCtor (&elf->code_buf);
    BufferCtor (&elf->program_buf);
    }
    
Elf::~Elf ()
    {
    BufferDtor (&elf->code_buf);
    BufferDtor (&elf->program_buf);
    }

static int FlushSegmentData  (Elf64_Phdr* segment, Buffer* src, Buffer* program_buf);
static int FlushSegmentsData (Elf* elf);
static int FlushHeaders      (Elf* elf);

int WriteElf (Elf* elf, const char* path_to_out_file)
    {
    assert(elf);
    assert(path_to_out_file);

    FILE* out_file = fopen (path_to_out_file, "w");
    assert(out_file);
    
    SetPhdrSize (&elf->headers.code_phdr,   elf->code_buf.size); 

    elf->headers.stack_phdr.p_filesz = 0;
    elf->headers.stack_phdr.p_memsz  = 0;

    size_t current_program_size = sizeof(ElfHeaders); 

    SetPhdrOffset (&elf->headers.code_phdr,   current_program_size);
           current_program_size += elf->code_buf.size;

    FlushHeaders      (elf);
    FlushSegmentsData (elf);

    fwrite (elf->program_buf.buffer, sizeof(byte), current_program_size, out_file);
    
    fclose (out_file);
    return SUCCESS;
    }

static int FlushSegmentData (Elf64_Phdr* segment, Buffer* src, Buffer* program_buf)
    {
    assert(segment);
    assert(src);
    assert(program_buf);

    Elf64_Off segment_off = segment->p_offset;
    uint64_t data_size    = src->size;
    
    CopyToBuff (program_buf, segment_off, src->buffer, data_size);

    return SUCCESS;
    }

static int FlushSegmentsData (Elf* elf)
    {
    assert(elf);
    
    FlushSegmentData (&elf->headers.code_phdr,   &elf->code_buf,   &elf->program_buf);

    return SUCCESS;
    }

static int FlushHeaders (Elf* elf)
    {
    assert(elf);

    CopyToBuff (&elf->program_buf, 0, &(elf->headers), sizeof(ElfHeaders));
    return SUCCESS;
    };