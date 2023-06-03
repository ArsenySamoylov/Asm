cmake_minimum_required(VERSION 3.22.1)

project(x86Backend VERSION 1.0 LANGUAGES CXX)
add_compile_options(-g -D _DEBUG  -std=c++20 -Wall -Wc++14-compat -Wextra -Wcast-qual -Wcast-align  -Wfloat-equal -Wchar-subscripts -Wconversion -Woverloaded-virtual -Wstack-protector	-Wformat-nonliteral -Wempty-body -Wformat-security -Wformat=2	-Wformat-signedness -Wlogical-op -Wopenmp-simd -Wnon-virtual-dtor -Winline -Wconditionally-supported -Wpacked -Wpointer-arith -Winit-self -Wredundant-decls -Wshadow -Wmissing-declarations -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=2 -Wsuggest-attribute=noreturn -Wsuggest-final-methods -Wsuggest-final-types -Wundef -Wctor-dtor-privacy -Waggressive-loop-optimizations -Wsuggest-override -Wswitch-default -Wsync-nand -flto-odr-type-merging -Wunreachable-code -Wunused -Wuseless-cast -Wvariadic-macros -fstrict-overflow -Wno-literal-suffix -Wno-missing-field-initializers	-Wno-narrowing -Wno-old-style-cast -fstack-protector -Wno-varargs -fcheck-new -fsized-deallocation -fno-omit-frame-pointer	-Wlarger-than=16384 -Wstack-usage=168384	-pie -fPIE -fext-numeric-literals)

include_directories(src/IR src/Elf src/Legacy src/Legacy/include
                    ATC/RandomStuff/ ATC/Logger ATC/Buffer ATC/ConsoleColors ATC/Utils ATC/Debug ATC/SuperStack ATC/my_safety
                    src/Legacy/Common/ src/Legacy/Common/StandartAWP  src/Legacy/Common/Structures/ src/Legacy/Common/Structures/Program src/Legacy/Common/Structures/Token/ src/Legacy/Common/Structures/Tabels/ src/Legacy/Common/LexicalCtx src/Legacy/Common/Utils/)

add_executable (x86Backend 
                            src/main.cpp 
                            src/IR/Value.cpp src/IR/Instruction.cpp src/IR/Builder.cpp src/IR/StringPool.cpp  src/IR/Module.cpp src/IR/ValueLabel.cpp src/IR/AstToIR.cpp  src/IR/DebugIR.cpp 
                            src/Elf/Elf.cpp src/Elf/ProgramBuffer.cpp src/Elf/RegistersUsage.cpp src/Elf/IRContext.cpp src/Elf/PutIRinElf.cpp src/Elf/Commands.cpp 
                            ATC/Utils/Utils.cpp ATC/Buffer/my_buffer.cpp ATC/Logger/Logger.cpp ATC/Logger/tostring.cpp ATC/Logger/FunctionLogger.cpp ATC/SuperStack/SuperStack.cpp ATC/SuperStack/DebugFunctions.cpp ./ATC/my_safety/my_safety.cpp 
                            src/Legacy/AsmCtx.cpp src/Legacy/SetTokenTree.cpp  src/Legacy/Common/StandartAWP/GetStd.cpp src/Legacy/Common/Structures/Program/Program.cpp src/Legacy/Common/Structures/Token/Token.cpp src/Legacy/Common/Structures/Tabels/Tabels.cpp src/Legacy/Common/Structures/Tabels/NameTable.cpp src/Legacy/Common/Utils/GraphVis.cpp src/Legacy/Common/LexicalCtx/LexicalCtx.cpp src/Legacy/Common/Utils/LangUtils.cpp 
                            )