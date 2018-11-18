##
## EPITECH PROJECT, 2018
## PSU_my_printf_2018
## File description:
## makefile
##

NAME	=	libmy.a

SRC	=	src/my_printf.c	\
		src/check_str.c	\
		src/mod_1.c	\
		src/mod_2.c	\
		src/call_format.c	\
		src/call_format_u.c	\
		lib/my_print_base.c	\
		lib/my_print_longs.c	\
		lib/my_print_special.c	\
		lib/my_prints_basics.c	\
		lib/utils.c	\
		lib/getstr.c


CFLAG	=	-g -W -Werror -Wextra

INCFLAG	=	-I.

OBJ	=	$(SRC:.c=.o)

all: $(NAME)

$(NAME):	$(OBJ)
		ar rc $(NAME) $(OBJ)
		rm -rf $(OBJ)
		ranlib $(NAME)

clean:
		rm -rf $(OBJ)
		rm -rf $(NAME)

fclean: clean
		rm -rf $(NAME)

re:	$(NAME)
