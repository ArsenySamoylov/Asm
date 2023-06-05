run_test: 
	@echo ---------------------------------------------------------------- 
	@echo Poleteli!!!!
	build/x86Backend tests/test0.awp ASM.out
	gcc tests/dump.s src/IR/TranslateTox86/stdlib.o -o asm.out
	objdump -D asm.out > logs/example_dump.txt
	objdump -D ASM.out > logs/result_dump.txt
	./asm.out
	./ASM.out

test_time_difference:
