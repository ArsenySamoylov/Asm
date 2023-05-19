#include <assert.h>
#include <stdio.h>

#include "Elf.hpp"

#define SUCCESS 0
#define FAILURE -1

#pragma GCC diagnostic ignored "-Wformat"

//////////////////////////////////////////////////////////////////////////////////////////////////////
static int SetEhdr (Elf64_Ehdr* elf);
static int SetPhdr (Elf64_Phdr* header, Elf64_Addr segment_virtual_add, uint32_t rights_flags);

static int SetPhdrSize   (Elf64_Phdr* header, uint64_t size);
static int SetPhdrOffset (Elf64_Phdr* header, Elf64_Off segment_offset);

int SetElfHeaders (ElfHeaders* elf)
    {
    assert(elf);

    SetEhdr (&elf->elf_header);
    

    SetPhdr (&elf->code_phdr,     CODE_VIRTUAL_ADDRESS, PF_X | PF_R);
    printf("setting VirAdd: 0x%x\n", elf->code_phdr.p_vaddr);
    SetPhdr (&elf->rodata_phdr, RODATA_VIRTUAL_ADDRESS, PF_R);
    
    return SUCCESS;
    }

static int SetEhdr (Elf64_Ehdr* elf)
    {
    assert(elf);
    
  //printf ("Header offset: 0x%x\n", header_table_offset);

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

static int SetPhdr (Elf64_Phdr* header, Elf64_Addr segment_virtual_add, uint32_t rights_flags)
    {
    assert(header);
    
    printf ("VirAdd: %x\n", segment_virtual_add);

    *header = { .p_type  = PT_LOAD, 
                .p_flags = rights_flags, 
                .p_vaddr = segment_virtual_add,
              };

    return 0;
    }

static int SetPhdrSize (Elf64_Phdr* header, uint64_t size)
    {
    assert(header);
    
    printf ("Phdr size: 0x%x\n", size);

    header->p_filesz = size;
    header->p_memsz  = size;

    return SUCCESS;
    }

static int SetPhdrOffset (Elf64_Phdr* segment_hdr, Elf64_Off segment_offset)
    {
    assert(segment_hdr);
    
    printf ("Setting offset: 0x%x\n", segment_offset);

    segment_hdr->p_offset = segment_offset;

    return SUCCESS;
    }

//////////////////////////////////////////////////////////////////////////////////////////////////////
int ElfCtor (Elf* elf)
    {
    assert(elf);

    SetElfHeaders(&elf->headers);
     printf("ElfXCtor VirAdd: 0x%x\n", elf->headers.code_phdr.p_vaddr);

    BufferCtor (&elf->code_buf);
    BufferCtor (&elf->rodata_buf);
    
    BufferCtor (&elf->program_buf);

    return SUCCESS;
    }
    
int ElfDtor (Elf* elf)
    {
    assert(elf);

    BufferDtor (&elf->code_buf);
    BufferDtor (&elf->rodata_buf);
    
    BufferDtor (&elf->program_buf);

    return SUCCESS;
    }

static int FlushSegmentData  (Elf64_Phdr* segment, Buffer* src, Buffer* program_buf);
static int FlushSegmentsData (Elf* elf);
static int FlushHeaders      (Elf* elf);

int WriteElf (Elf* elf, const char* path_to_out_file)
    {
    assert(elf);
    assert(path_to_out_file);

    FILE* out_file = fopen(path_to_out_file, "w");
    assert(out_file);
    
    printf("write elf VirAdd: 0x%x\n", elf->headers.code_phdr.p_vaddr);
    SetPhdrSize (&elf->headers.code_phdr,   elf->code_buf.current_size); 
    SetPhdrSize (&elf->headers.rodata_phdr, elf->rodata_buf.current_size);
     printf("write elf VirAdd: 0x%x\n", elf->headers.code_phdr.p_vaddr);

    size_t program_size = sizeof(ElfHeaders); 
    printf ("Write elf: program_size 0x%x\n", program_size);
    SetPhdrOffset (&elf->headers.code_phdr,   program_size);
           program_size += elf->code_buf.current_size;

    SetPhdrOffset (&elf->headers.rodata_phdr, program_size);
           program_size += elf->rodata_buf.current_size;

    FlushHeaders      (elf);
    FlushSegmentsData (elf);

    fwrite (elf->program_buf.buffer, sizeof(byte), program_size, out_file);
    
    fclose (out_file);
    return SUCCESS;
    }

static int FlushSegmentData (Elf64_Phdr* segment, Buffer* src, Buffer* program_buf)
    {
    assert(segment);
    assert(src);
    assert(program_buf);

    Elf64_Off segment_off = segment->p_offset;
    uint64_t data_size    = src->current_size;
    
    //printf("FlushSegmentData: segment_off: 0x%x, data_size: 0x%x\n", segment_off, data_size);
    //printf("data: %.4s\n", (char*) src->buffer);

    CopyToBuff (program_buf, segment_off, src->buffer, data_size);
    //printf("program_buf: %.4s\n", (char*) program_buf->buffer + segment_off);

    return SUCCESS;
    }

static int FlushSegmentsData (Elf* elf)
    {
    assert(elf);
    
    FlushSegmentData (&elf->headers.code_phdr,   &elf->code_buf,   &elf->program_buf);
    FlushSegmentData (&elf->headers.rodata_phdr, &elf->rodata_buf, &elf->program_buf);
    
    return SUCCESS;
    }

static int FlushHeaders (Elf* elf)
    {
    assert(elf);
    
    printf("Flusheaders VirAdd: 0x%x\n", elf->headers.code_phdr.p_vaddr); 
    CopyToBuff (&elf->program_buf, 0, &(elf->headers), sizeof(ElfHeaders));
    return SUCCESS;
    };


#pragma GCC diagnostic ignored "-Wnarrowing"

char test_op_codes[] = { 0x48, 0x83, 0xc4, 0x08, 
                         0x48, 0xc7, 0xc0, 0x3c, 0x00, 0x00, 0x00,
                         0x0f, 0x05};

int main()
    {
    Elf elf{};
    ElfCtor (&elf);

    elf.code_buf.buffer       = (byte*) test_op_codes;
    elf.code_buf.current_size = sizeof(test_op_codes);
    
    printf("ElfHdr = 0x%X, 2 * Phdr = 2* 0x%X, Total: 0x%x\n", 
           sizeof(Elf64_Ehdr), sizeof(Elf64_Phdr), sizeof(Elf64_Ehdr) + NUMBER_OF_SEGMENTS * sizeof(Elf64_Phdr));

    WriteElf (&elf, "kniga.out");
    //ElfDtor (&elf);

    return SUCCESS;

    /*
    FILE* test = fopen ("test.out", "wr");
    assert(test);

    Elf64_Ehdr elf_header{};
    SetElfHeader(&elf_header, sizeof(Elf64_Ehdr));

    Elf64_Phdr program_header{};
    SetProgramHeader (&program_header, 0, STARTING_ADDRESS, sizeof(test_op_codes));

    fwrite (&elf_header, sizeof(elf_header), 1, test);
    printf ("Current file position: 0x%x\n", ftell(test));

    fwrite (&program_header, sizeof(program_header), 1, test);
    printf ("Current file position: 0x%x\n", ftell(test));
    
    printf("ElfHdr = 0x%X, Phdr = 0x%X\n", sizeof(Elf64_Ehdr), sizeof(Elf64_Phdr));

    fwrite(test_op_codes, 1, sizeof(test_op_codes), test);
     
    fclose (test);
    
// chmod +rwxXst test.out
    */
    return 0;
    }




