.PHONY:clean
.PHONY:all
CC = gcc
RM = rm

EXE = simple
#OBJS = ./out/main.o ./out/foo.o
SOURCE = $(wildcard ./source/*.c)
source = $(addprefix ./source/,main.c foo.c)
OBJS = $(SOURCE:.c=.o)
x = first.c     second.s third.o
y = $(x)ooo
asd = $(filter %.c %.s,$(x))
xx := third
yy := $(xx)ooo
xx := $()

override obj := x.o y.o z.o


$(EXE): $(OBJS)
	gcc -o $@ $^
	@echo "MAKECMDGOALS = $(MAKECMDGOALS)"
./out/%.o: ./source/%.c
	gcc -o $@ -c $^
clean:
	$(RM) $(EXE)   $(OBJS) 
	@echo "MAKECMDGOALS = $(MAKECMDGOALS)"
all:
	@echo "$(strip $(x))"
