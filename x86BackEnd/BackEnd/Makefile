CFLAGS  :=  -g -D _DEBUG  -std=c++20 -Wall -Wc++14-compat -Wextra -Wcast-qual -Wcast-align -Weffc++ -Wfloat-equal -Wchar-subscripts -Wconversion -Woverloaded-virtual -Wstack-protector	-Wformat-nonliteral -Wempty-body -Wformat-security -Wformat=2	-Wformat-signedness -Wlogical-op -Wopenmp-simd -Wnon-virtual-dtor -Winline -Wconditionally-supported -Wpacked -Wpointer-arith -Winit-self -Wredundant-decls -Wshadow -Wmissing-declarations -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=2 -Wsuggest-attribute=noreturn -Wsuggest-final-methods -Wsuggest-final-types -Wundef -Wctor-dtor-privacy -Waggressive-loop-optimizations -Wsuggest-override -Wswitch-default -Wsync-nand -flto-odr-type-merging -Wunreachable-code -Wunused -Wuseless-cast -Wvariadic-macros -fstrict-overflow -Wno-literal-suffix -Wno-missing-field-initializers	-Wno-narrowing -Wno-old-style-cast -fstack-protector -Wno-varargs -fcheck-new -fsized-deallocation -fno-omit-frame-pointer	-Wlarger-than=16384 -Wstack-usage=168384	-pie -fPIE -fext-numeric-literals

SANYTIZER = #-fsanitize=address,leak,alignment,bool,bounds,enum,float-cast-overflow,float-divide-by-zero,integer-divide-by-zero,leak,nonnull-attribute,null,object-size,return>
LINK_FLAGS = #-lpthread  -lasan -pg

INCLUDE_PATH 	 = ./include ./IR
FILES_TO_COMPILE = ./src/main.cpp ./src/AsmCtx.cpp ./src/SetTokenTree.cpp \
				   ./IR/Value.cpp ./IR/Module.cpp ./src/Builder.cpp ./IR/ValueLabel.cpp ./src/AstToIR.cpp ./IR/Instruction.cpp ./src/DebugIR.cpp #./src/TranslateToAsm.cpp

ATC_INCLUDE = ./ATC/RandomStuff/ ./ATC/Logger ./ATC/Buffer ./ATC/ConsoleColors ./ATC/Utils ./ATC/Debug ./ATC/SuperStack ./ATC/my_safety/
ATC_FILES   = ./ATC/Buffer/my_buffer.cpp ./ATC/Logger/Logger.cpp ./ATC/Logger/tostring.cpp ./ATC/Logger/FunctionLogger.cpp ./ATC/SuperStack/SuperStack.cpp ./ATC/SuperStack/DebugFunctions.cpp ./ATC/my_safety/my_safety.cpp 
  
COMMON_INCLUDE  = ../Common/ ../Common/StandartAWP  ../Common/Structures/ ../Common/Structures/Program ../Common/Structures/Token/ ../Common/Structures/Tabels/ ../Common/LexicalCtx ../Common/Utils/
COMMONT_COMPILE = ../Common/StandartAWP/GetStd.cpp ../Common/Structures/Program/Program.cpp ../Common/Structures/Token/Token.cpp ../Common/Structures/Tabels/Tabels.cpp ../Common/Structures/Tabels/NameTable.cpp ../Common/Utils/GraphVis.cpp ../Common/LexicalCtx/LexicalCtx.cpp ../Common/Utils/LangUtils.cpp 

OUT_NAME = x86Backend.out
ARGS = test0.awp test.out

all: separator clear clear_screen
	@g++ $(addprefix -I, $(INCLUDE_PATH)) $(addprefix -I, $(ATC_INCLUDE)) $(addprefix -I, $(COMMON_INCLUDE)) $(FILES_TO_COMPILE) $(ATC_FILES) $(COMMONT_COMPILE) -o $(OUT_NAME) $(SANYTIZER) $(CFLAGS) $(LFLAGS) $(LFLAGS) 

run:
	@echo ---------------------------------------------------------------- 
	@echo Poleteli!!!!
	./$(OUT_NAME) $(ARGS)
	
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
