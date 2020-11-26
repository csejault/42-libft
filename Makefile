SRC		= ft_atoi.c ft_isalpha.c ft_itoa.c ft_memcmp.c ft_putchar_fd.c ft_split.c ft_strlcat.c ft_strncmp.c ft_substr.c ft_bzero.c ft_isascii.c ft_memcpy.c ft_putendl_fd.c ft_strchr.c ft_strlcpy.c ft_strnstr.c ft_tolower.c ft_calloc.c ft_isdigit.c ft_memccpy.c ft_memmove.c ft_putnbr_fd.c ft_strdup.c ft_strlen.c ft_strrchr.c ft_toupper.c ft_isalnum.c ft_isprint.c ft_memchr.c ft_memset.c ft_putstr_fd.c ft_strjoin.c ft_strmapi.c ft_strtrim.c
BONUS	= ft_lstnew.c ft_lstadd_front.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstsize.c ft_lstiter.c ft_lstmap.c
OBJ		= $(SRC:.c=.o)
BON_OBJ		= $(BONUS:.c=.o)
NAME		= libft.a
FLAGS		= -Wall -Wextra -Werror
CC		= gcc
RM		= rm -f

.c.o:		
		$(CC) $(FLAGS) -c $< -o $(<:.c=.o)


all:		$(NAME) bonus

$(NAME):	$(OBJ)
			ar rc $(NAME) $(OBJ)

bonus:		$(BON_OBJ)
			ar rc $(NAME) $(BON_OBJ)

clean:		
			$(RM) $(OBJ)
			$(RM) $(BON_OBJ)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re bonus
