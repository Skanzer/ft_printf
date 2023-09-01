NAME = libftprintf.a

FILENAMES = \
ft_utils.c\
ft_printf.c\

CFLAGS = -Wall -Wextra -Werror
OBJECTS = $(FILENAMES:.c=.o)

all: $(NAME)

clean:
		/bin/rm -f $(OBJECTS)

fclean: clean
		/bin/rm -f $(NAME)

re: fclean all 

$(NAME): $(OBJECTS)
		ar rc $@ $(OBJECTS)

%.o: %.c
		cc $(CFLAGS) -c $< -o $@

.PHONY: all clean fclean re