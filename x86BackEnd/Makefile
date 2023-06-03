CFLAGS  :=  -g -D _DEBUG  -std=c++20 -Wall -Wc++14-compat -Wextra -Wcast-qual -Wcast-align  -Wfloat-equal -Wchar-subscripts -Wconversion -Woverloaded-virtual -Wstack-protector	-Wformat-nonliteral -Wempty-body -Wformat-security -Wformat=2	-Wformat-signedness -Wlogical-op -Wopenmp-simd -Wnon-virtual-dtor -Winline -Wconditionally-supported -Wpacked -Wpointer-arith -Winit-self -Wredundant-decls -Wshadow -Wmissing-declarations -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=2 -Wsuggest-attribute=noreturn -Wsuggest-final-methods -Wsuggest-final-types -Wundef -Wctor-dtor-privacy -Waggressive-loop-optimizations -Wsuggest-override -Wswitch-default -Wsync-nand -flto-odr-type-merging -Wunreachable-code -Wunused -Wuseless-cast -Wvariadic-macros -fstrict-overflow -Wno-literal-suffix -Wno-missing-field-initializers	-Wno-narrowing -Wno-old-style-cast -fstack-protector -Wno-varargs -fcheck-new -fsized-deallocation -fno-omit-frame-pointer	-Wlarger-than=16384 -Wstack-usage=168384	-pie -fPIE -fext-numeric-literals
# -Weffc++
SANYTIZER =# -fsanitize=address,leak,alignment,bool,bounds,enum,float-cast-overflow,float-divide-by-zero,integer-divide-by-zero,leak,nonnull-attribute,null,object-size,return>
LINK_FLAGS =# -lpthread  -lasan -pg

INCLUDE_PATH 	 = include src/IR src/Elf src/Legacy src/Legacy/include
ATC_INCLUDE		 = ATC/RandomStuff/ ATC/Logger ATC/Buffer ATC/ConsoleColors ATC/Utils ATC/Debug ATC/SuperStack ATC/my_safety
COMMON_INCLUDE  = src/Legacy/Common/ src/Legacy/Common/StandartAWP  src/Legacy/Common/Structures/ src/Legacy/Common/Structures/Program src/Legacy/Common/Structures/Token/ src/Legacy/Common/Structures/Tabels/ src/Legacy/Common/LexicalCtx src/Legacy/Common/Utils/

FILES_TO_COMPILE = src/main.cpp 
IR_FILES 		 = src/IR/Value.cpp src/IR/Instruction.cpp src/IR/Builder.cpp src/IR/StringPool.cpp  src/IR/Module.cpp src/IR/ValueLabel.cpp src/IR/AstToIR.cpp  src/IR/DebugIR.cpp 
Elf_FILES =  src/Elf/Elf.cpp src/Elf/ProgramBuffer.cpp src/Elf/RegistersUsage.cpp src/Elf/IRContext.cpp src/Elf/PutIRinElf.cpp src/Elf/Commands.cpp

ATC_FILES = ATC/Utils/Utils.cpp ATC/Buffer/my_buffer.cpp ATC/Logger/Logger.cpp ATC/Logger/tostring.cpp ATC/Logger/FunctionLogger.cpp ATC/SuperStack/SuperStack.cpp ATC/SuperStack/DebugFunctions.cpp ./ATC/my_safety/my_safety.cpp 	
ATC_OBJ	  = 		  Utils.o     		   my_buffer.o				Logger.o 			  tostring.o			  FunctionLogger.o					SuperStack.o				  DebugFunctions.o        			 my_safety.o 

COMMONT_COMPILE  = src/Legacy/AsmCtx.cpp src/Legacy/SetTokenTree.cpp  src/Legacy/Common/StandartAWP/GetStd.cpp src/Legacy/Common/Structures/Program/Program.cpp src/Legacy/Common/Structures/Token/Token.cpp src/Legacy/Common/Structures/Tabels/Tabels.cpp src/Legacy/Common/Structures/Tabels/NameTable.cpp src/Legacy/Common/Utils/GraphVis.cpp src/Legacy/Common/LexicalCtx/LexicalCtx.cpp src/Legacy/Common/Utils/LangUtils.cpp 
COMMON_OBJ 		 =		AsmCtx.o		SetTokenTree.o		 GetStd.o								 Program.o								Token.o								  Tabels.o								 NameTable.o				   GraphVis.o 						 LexicalCtx.o 					LangUtils.o																				

OUT_NAME = x86Backend.out
ARGS = tests/test0.awp test.out


all: separator clear clear_screen
	@g++ $(addprefix -I, $(INCLUDE_PATH)) $(addprefix -I, $(ATC_INCLUDE)) $(addprefix -I, $(COMMON_INCLUDE))  $(FILES_TO_COMPILE) $(IR_FILES) $(Elf_FILES) -o $(OUT_NAME) $(ATC_OBJ) $(COMMON_OBJ) $(SANYTIZER) $(CFLAGS) 

build:
	@g++  $(addprefix -I, $(INCLUDE_PATH)) $(addprefix -I, $(ATC_INCLUDE)) $(addprefix -I, $(COMMON_INCLUDE))   $(ATC_FILES) $(COMMONT_COMPILE)	  -c $(SANYTIZER)
	# g++ $(addprefix -I, $(ATC_INCLUDE))  $(addprefix -I, $(COMMON_INCLUDE))  -c $(SANYTIZER) $(LFLAGS)

run: 
	@echo ---------------------------------------------------------------- 
	@echo Poleteli!!!!
	./$(OUT_NAME) $(ARGS)
	gcc tests/dump.s src/Elf/stdlib.o -o asm.out
	objdump -D asm.out > logs/example_dump.txt
	objdump -D ASM.out > logs/result_dump.txt
	./asm.out
	./ASM.out

clear:
	rm -rf $(OUT_NAME) 
	
clear_screen:
	@clear

separator:
	@echo -------------------------------------------------------------------