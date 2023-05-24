CFLAGS  :=  -g -D _DEBUG  -std=c++20 -Wall -Wc++14-compat -Wextra -Wcast-qual -Wcast-align  -Wfloat-equal -Wchar-subscripts -Wconversion -Woverloaded-virtual -Wstack-protector	-Wformat-nonliteral -Wempty-body -Wformat-security -Wformat=2	-Wformat-signedness -Wlogical-op -Wopenmp-simd -Wnon-virtual-dtor -Winline -Wconditionally-supported -Wpacked -Wpointer-arith -Winit-self -Wredundant-decls -Wshadow -Wmissing-declarations -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=2 -Wsuggest-attribute=noreturn -Wsuggest-final-methods -Wsuggest-final-types -Wundef -Wctor-dtor-privacy -Waggressive-loop-optimizations -Wsuggest-override -Wswitch-default -Wsync-nand -flto-odr-type-merging -Wunreachable-code -Wunused -Wuseless-cast -Wvariadic-macros -fstrict-overflow -Wno-literal-suffix -Wno-missing-field-initializers	-Wno-narrowing -Wno-old-style-cast -fstack-protector -Wno-varargs -fcheck-new -fsized-deallocation -fno-omit-frame-pointer	-Wlarger-than=16384 -Wstack-usage=168384	-pie -fPIE -fext-numeric-literals
# -Weffc++
SANYTIZER = -fsanitize=address,leak,alignment,bool,bounds,enum,float-cast-overflow,float-divide-by-zero,integer-divide-by-zero,leak,nonnull-attribute,null,object-size,return>
LINK_FLAGS = -lpthread  -lasan -pg

INCLUDE_PATH 	 = include src/IR src/elf
ATC_INCLUDE		 = ATC/RandomStuff/ ATC/Logger ATC/Buffer ATC/ConsoleColors ATC/Utils ATC/Debug ATC/SuperStack ATC/my_safety
COMMON_INCLUDE  = ../Common/ ../Common/StandartAWP  ../Common/Structures/ ../Common/Structures/Program ../Common/Structures/Token/ ../Common/Structures/Tabels/ ../Common/LexicalCtx ../Common/Utils/

FILES_TO_COMPILE = src/main.cpp src/AsmCtx.cpp src/SetTokenTree.cpp 
IR_FILES 		 = src/IR/Value.cpp src/IR/Instruction.cpp src/IR/Builder.cpp src/IR/StringPool.cpp  src/IR/Module.cpp  src/IR/ValueLabel.cpp src/IR/AstToIR.cpp  src/IR/DebugIR.cpp 
ELF_FILES =  src/elf/Elf.cpp src/elf/Buffer.cpp #src/elf/RegistersUsage.cpp src/elf/PutIRctx.cpp src/elf/PutIRinElf.cpp 

ATC_FILES = ATC/Buffer/my_buffer.cpp ATC/Logger/Logger.cpp ATC/Logger/tostring.cpp ATC/Logger/FunctionLogger.cpp ATC/SuperStack/SuperStack.cpp ATC/SuperStack/DebugFunctions.cpp ./ATC/my_safety/my_safety.cpp 	
ATC_OBJ	  = 		   my_buffer.o				Logger.o 			  tostring.o			  FunctionLogger.o					SuperStack.o				  DebugFunctions.o        			 my_safety.o 

COMMONT_COMPILE  = ../Common/StandartAWP/GetStd.cpp ../Common/Structures/Program/Program.cpp ../Common/Structures/Token/Token.cpp ../Common/Structures/Tabels/Tabels.cpp ../Common/Structures/Tabels/NameTable.cpp ../Common/Utils/GraphVis.cpp ../Common/LexicalCtx/LexicalCtx.cpp ../Common/Utils/LangUtils.cpp 
COMMON_OBJ 		 =						 GetStd.o								 Program.o								Token.o								  Tabels.o								 NameTable.o				   GraphVis.o 						 LexicalCtx.o 					LangUtils.o																				

OUT_NAME = x86Backend.out
ARGS = test0.awp test.out


all: separator clear clear_screen
	@g++ $(addprefix -I, $(INCLUDE_PATH)) $(addprefix -I, $(ATC_INCLUDE)) $(addprefix -I, $(COMMON_INCLUDE))  $(FILES_TO_COMPILE) $(IR_FILES) $(ELF_FILES) -o $(OUT_NAME) $(ATC_OBJ) $(COMMON_OBJ) $(SANYTIZER) $(CFLAGS) 

build:
	@g++ $(addprefix -I, $(INCLUDE_PATH)) $(addprefix -I, $(ATC_INCLUDE)) $(addprefix -I, $(COMMON_INCLUDE))   $(ATC_FILES) $(COMMONT_COMPILE)	  -c $(SANYTIZER) $(CFLAGS)
	@g++ $(addprefix -I, $(ATC_INCLUDE))  $(addprefix -I, $(COMMON_INCLUDE))  -c $(SANYTIZER) $(LFLAGS)

run: 
	@echo ---------------------------------------------------------------- 
	@echo Poleteli!!!!
	./$(OUT_NAME) $(ARGS)
	gcc logs/dump.s logs/fin.o logs/fout.o -o asm.out
	./asm.out
	
clear:
	rm -rf $(OUT_NAME) 
	
clear_screen:
	@clear

separator:
	@echo -------------------------------------------------------------------


elf:
	gcc -I./ src/Elf.cpp src/ProgramBuffer.cpp -o elf.out 

prototype:
	gcc h.s -c 
	ld h.o -o prot.out
	objdump -D prot.out > dump.txt
