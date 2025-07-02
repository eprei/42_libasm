NAME = libasm.a
NASM = nasm
AR = ar rc
CC = gcc
MAIN = main

SRCS = ft_strlen.s
#ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

%.o: %.s
	$(NASM) -f elf64 $< -o $@

test: $(NAME) main.c
	$(CC) main.c -L. -lasm -o $(MAIN)

run: test
	./$(MAIN)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all test run clean fclean re
