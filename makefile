simple: ./out/main.o ./out/foo.o
	gcc -o simple ./out/main.o ./out/foo.o
./out/main.o: ./source/main.c
	gcc -o ./out/main.o -c ./source/main.c
./out/foo.o: ./source/foo.c
	gcc -o ./out/foo.o -c ./source/foo.c
