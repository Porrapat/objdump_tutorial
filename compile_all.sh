gcc -g -o inline.o inline.c
objdump -d -M intel -S inline.o > inline_result.txt

gcc -g -o infinite.o infinite.c
objdump -d -M intel -S infinite.o > infinite_result.txt

gcc -g -o example_left.o example_left.c
objdump -d -M intel -S example_left.o > example_left_result.txt

gcc -g -o example_right.o example_right.c
objdump -d -M intel -S example_right.o > example_right_result.txt

gcc -g -o example_left_add_more_var.o example_left_add_more_var.c
objdump -d -M intel -S example_left_add_more_var.o > example_left_add_more_var_result.txt

gcc -g -o example_right_add_more_var.o example_right_add_more_var.c
objdump -d -M intel -S example_right_add_more_var.o > example_right_add_more_var_result.txt