cmake_minimum_required(VERSION 3.22.1)

project(x86Backend VERSION 1.0 LANGUAGES CXX)
add_compile_options(-g -D _DEBUG  -std=c++20 -Wall -Wc++14-compat -Wextra -Wcast-qual -Wcast-align  -Wfloat-equal -Wchar-subscripts -Wconversion -Woverloaded-virtual -Wstack-protector	-Wformat-nonliteral -Wempty-body -Wformat-security -Wformat=2	-Wformat-signedness -Wlogical-op -Wopenmp-simd -Wnon-virtual-dtor -Winline -Wconditionally-supported -Wpacked -Wpointer-arith -Winit-self -Wredundant-decls -Wshadow -Wmissing-declarations -Wsign-conversion -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=2 -Wsuggest-attribute=noreturn -Wsuggest-final-methods -Wsuggest-final-types -Wundef -Wctor-dtor-privacy -Waggressive-loop-optimizations -Wsuggest-override -Wswitch-default -Wsync-nand -flto-odr-type-merging -Wunreachable-code -Wunused -Wuseless-cast -Wvariadic-macros -fstrict-overflow -Wno-literal-suffix -Wno-missing-field-initializers	-Wno-narrowing -Wno-old-style-cast -fstack-protector -Wno-varargs -fcheck-new -fsized-deallocation -fno-omit-frame-pointer	-Wlarger-than=16384 -Wstack-usage=168384	-pie -fPIE -fext-numeric-literals)

include_directories(src/IR src/IR/Value src/IR/Instructions src/IR/Module src/IR/Storage src/IR/DumpIR src/IR/AstToIR src/IR/TranslateTox86
                    src/Elf 
                    src/Legacy src/Legacy/include

                    src/Legacy/ATC/RandomStuff/ src/Legacy/ATC/Logger src/Legacy/ATC/Buffer src/Legacy/ATC/ConsoleColors src/Legacy/ATC/Utils src/Legacy/ATC/Debug src/Legacy/ATC/SuperStack src/Legacy/ATC/my_safety
                    src/Legacy/Common/ src/Legacy/Common/StandartAWP  src/Legacy/Common/Structures/ src/Legacy/Common/Structures/Program src/Legacy/Common/Structures/Token/ src/Legacy/Common/Structures/Tabels/ src/Legacy/Common/LexicalCtx src/Legacy/Common/Utils/)

add_executable (x86Backend 
                            src/main.cpp 

                            src/IR/Value/Value.cpp 
                            src/IR/Instructions/Instruction.cpp

                            src/IR/Module/Module.cpp
                            src/IR/Storage/Storage.cpp
                             
                            src/IR/AstToIR/Builder.cpp  src/IR/AstToIR/AstToIR.cpp src/IR/AstToIR/StringPool.cpp src/IR/AstToIR/ValueLabel.cpp  
                            src/IR/DumpIR/DumpIR.cpp 
)