NAME = libasm.a
NASM = nasm
AR = ar rc
CC = gcc
MAIN = main
CFLAGS = -g -O0

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s
# ft_read.s ft_strdup.s

OBJS = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

%.o: %.s
	$(NASM) -f elf64 $< -o $@

test: $(NAME) main.c
		$(CC) $(CFLAGS) -c main.c -o main.o
		$(CC) $(CFLAGS) main.o -L. -lasm -o $(MAIN)

run: test
	./$(MAIN)

clean:
	rm -f $(OBJS) main.o

fclean: clean
	rm -f $(NAME) $(MAIN)

re: fclean all

.PHONY: all test run clean fclean re
