CFLAGS  :=  -g -D _DEBUG  -std=c++20 		-Wall  -Wc++14-compat  				-Wextra  				-Wcast-qual    				-Wcast-align   					   \
				-Weffc++   -Wfloat-equal 	-Wchar-subscripts  					-Wconversion   			-Woverloaded-virtual   		-Wstack-protector				   \
				-Wformat-nonliteral    		-Wempty-body     					-Wformat-security       -Wformat=2	   				-Wformat-signedness	   			   \
			    -Wlogical-op           		-Wopenmp-simd    					-Wnon-virtual-dtor 	    -Winline	   				-Wconditionally-supported          \
				-Wpacked   -Wpointer-arith  -Winit-self       	 				-Wredundant-decls       -Wshadow 					-Wmissing-declarations 			   \
				-Wsign-conversion      		-Wsign-promo     					-Wstrict-null-sentinel  -Wstrict-overflow=2			-Wsuggest-attribute=noreturn  	   \
				-Wsuggest-final-methods     -Wsuggest-final-types 				-Wundef 				-Wctor-dtor-privacy 		-Waggressive-loop-optimizations    \
				-Wsuggest-override     		-Wswitch-default 					-Wsync-nand    				-flto-odr-type-merging 			   						   \
				-Wunreachable-code     		-Wunused         					-Wuseless-cast 		    -Wvariadic-macros 			-fstrict-overflow 				   \
				-Wno-literal-suffix    		-Wno-missing-field-initializers		-Wno-narrowing 			-Wno-old-style-cast 		-fstack-protector				   \
				-Wno-varargs           		-fcheck-new     					-fsized-deallocation    -fno-omit-frame-pointer 									   \
				-Wlarger-than=16384    		-Wstack-usage=168384 					-pie -fPIE 				-fext-numeric-literals

SANYTIZER = #-fsanitize=address,leak,alignment,bool,bounds,enum,float-cast-overflow,float-divide-by-zero,integer-divide-by-zero,leak,nonnull-attribute,null,object-size,return>
LFLAGS   := #-lpthread   -lasan -pg

INCLUDE_PATH 	 = ./include 
FILES_TO_COMPILE = ./src/main.cpp ./src/ProcessData.cpp ./src/HashTable.cpp ./src/HashFunctions.cpp ./src/MeasureDistribution.cpp ./src/MeasurePerfomance.cpp ./src/List.cpp

ATC_INCLUDE = ./ATC/RandomStuff/ ./ATC/Logger ./ATC/Buffer ./ATC/ConsoleColors ./ATC/Utils ./ATC/Debug
ATC_FILES   = ./ATC/Buffer/my_buffer.cpp ./ATC/Logger/Logger.cpp ./ATC/Logger/tostring.cpp ./ATC/Logger/FunctionLogger.cpp  
  
OUT_NAME = table.out

all: separator clear clear_screen
	@g++ -DNDEBUG $(addprefix -I, $(INCLUDE_PATH)) $(addprefix -I, $(ATC_INCLUDE)) $(FILES_TO_COMPILE) $(ATC_FILES) -o $(OUT_NAME) -mavx2 -O2 $(SANYTIZER) $(CFLAGS) $(LFLAGS) $(LFLAGS) crc32.o 

run:
	@echo ---------------------------------------------------------------- 
	@echo 1 test
	@nice -n 19 ./$(OUT_NAME) resources/test_data/Hamlet.txt
	@echo ---------------------------------------------------------------- 

second:
	@nice -n 19 ./table.out resources/test_data/Holy.txt resources/test_data/Holy.txt 

profile:
	@echo ---------------------------------------------------------------- 
	@echo 2 test
	@nice -n 19 valgrind --tool=callgrind ./table.out resources/test_data/Holy.txt resources/test_data/Holy.txt
	@echo ---------------------------------------------------------------- 

clear:
	rm -rf $(OUT_NAME) 
	
clear_screen:
	@clear

separator:
	@echo -------------------------------------------------------------------
