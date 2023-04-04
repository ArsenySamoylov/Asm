CFLAGS  := -g   -D _DEBUG  -std=c++20 		-Wall  -Wc++14-compat  				-Wextra  				-Wcast-qual    				-Wcast-align   					   \
				-Weffc++   -Wfloat-equal 	-Wchar-subscripts  					-Wconversion   			-Woverloaded-virtual   		-Wstack-protector				   \
				-Wformat-nonliteral    		-Wempty-body     					-Wformat-security       -Wformat=2	   				-Wformat-signedness	   			   \
			    -Wlogical-op           		-Wopenmp-simd    					-Wnon-virtual-dtor 	    -Winline	   				-Wconditionally-supported          \
				-Wpacked   -Wpointer-arith  -Winit-self       	 				-Wredundant-decls       -Wshadow 					-Wmissing-declarations 			   \
				-Wsign-conversion      		-Wsign-promo     					-Wstrict-null-sentinel  -Wstrict-overflow=2			-Wsuggest-attribute=noreturn  	   \
				-Wsuggest-final-methods     -Wsuggest-final-types 				-Wundef 				-Wctor-dtor-privacy 		-Waggressive-loop-optimizations    \
				-Wsuggest-override     		-Wswitch-default 					-Wsync-nand    				-flto-odr-type-merging 			   \
				-Wunreachable-code     		-Wunused         					-Wuseless-cast 		    -Wvariadic-macros 			-fstrict-overflow 				   \
				-Wno-literal-suffix    		-Wno-missing-field-initializers		-Wno-narrowing 			-Wno-old-style-cast 		-fstack-protector				   \
				-Wno-varargs           		-fcheck-new     					-fsized-deallocation    -fno-omit-frame-pointer 									   \
				-Wlarger-than=8192     		-Wstack-usage=8192 					-pie -fPIE 				-fext-numeric-literals


all: separator clear
	@clear
	@g++ -I./include ./src/main.cpp ./src/bmp.cpp ./src/blend_images.cpp ./src/gui.cpp -o alphaBlending.out -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio $(CFLAGS)

1: separator clear
	@clear
	@g++ -I./include ./src/main.cpp ./src/bmp.cpp ./src/blend_images2.cpp ./src/gui.cpp -o alphaBlending.out -mavx2 -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio $(CFLAGS)
	
run:
	./alphaBlending.out  table.bmp AskhatCat.bmp 300 220
clear:
	rm -rf alphaBlending.out 

clear_screen:
	@clear

separator:
	@echo -------------------------------------------------------------------
