all: clear compile link 
    
clear:
	rm -rf test.o 
	rm -rf a.out

compile: print_slash
	as -a -o test.o test.s > temp.lst

link: 
	ld test.o -o a.out

print_slash:
	@echo --------------------------------------------------------

prot: clear_prot
	gcc printf_prot.cpp -o prototype

clear_prot:
	rm prototype

run_prot:
	@./prototype
	@echo