.PHONY:clean
CC = gcc
RM = rm

EXE = simple
OBJS = ./out/main.o ./out/foo.o

$(EXE): $(OBJS)
	gcc -o $(EXE) $(OBJS)
./out/main.o: ./source/main.c
	gcc -o ./out/main.o -c ./source/main.c
./out/foo.o: ./source/foo.c
	gcc -o ./out/foo.o -c ./source/foo.c
clean:
	$(RM) $(EXE) $(OBJS)
