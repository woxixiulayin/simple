.PHONY:clean
.PHONY:all
CC = gcc
RM = rm

EXE = simple
OBJS = ./out/main.o ./out/foo.o


$(EXE): $(OBJS)
	gcc -o $@ $^
./out/main.o: ./source/main.c
	gcc -o $@ -c $^
./out/foo.o: ./source/foo.c
	gcc -o $@ -c $<
clean:
	$(RM) $(EXE) $(OBJS)
all:one second third
	@echo "\$$@ = $@"
	@echo "$$^ = $^"
	@echo "$$< = $<"
one second third:
