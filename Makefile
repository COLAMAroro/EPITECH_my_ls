##
## EPITECH PROJECT, 2018
## BSQ
## File description:
## Makefile for my_ls
##

NAME		=	my_ls

OBJ			=	$(SRC:.c=.o)

OUTPUT_DIR	=	.

SRC			=	my_ls.c

.PHONY:		all clean fclean re

all:		$(NAME)
	@echo -e "\e[95m[make all $(NAME)] \e[92m \e[1m'make all' done.\e[0m"

$(NAME):	$(OBJ)
	@echo -e "\e[95m[make $(NAME)] \e[93mCompiling the output file...\e[0m"
	$(CC) -o $(NAME) $(OBJ)

clean:
	@echo -e "\e[95m[make clean $(NAME)] \e[31mDeleting the compiled object files...\e[0m"
	rm -f $(OBJ)

fclean:		clean
	@echo -e "\e[95m[make fclean $(NAME)] \e[91mDeleting the compiled output file...\e[0m"
	rm -f $(NAME)

re:			fclean all
