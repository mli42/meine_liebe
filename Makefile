# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mli <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/07 17:22:00 by mli               #+#    #+#              #
#    Updated: 2020/03/17 17:19:43 by mli              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

SRCS_FILES = ft_memset.c ft_bzero.c ft_strlen.c ft_toupper.c ft_tolower.c \
			 ft_strchr.c ft_strrchr.c ft_strncmp.c ft_strlcpy.c ft_strlcat.c \
			 ft_strnstr.c ft_atoi.c ft_isalpha.c ft_isdigit.c ft_isalnum.c \
			 ft_isascii.c ft_isprint.c ft_memcpy.c ft_memccpy.c ft_memmove.c \
			 ft_memchr.c ft_memcmp.c ft_calloc.c ft_strdup.c ft_substr.c \
			 ft_strtrim.c ft_strjoin.c ft_split.c ft_strmapi.c \
			 ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
			 ft_putchar.c ft_putstr.c ft_putnbr.c \
			 ft_lstnew.c ft_lstadd_front.c ft_lstlast.c ft_lstadd_back.c \
			 ft_lstsize.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \
			 ft_strcmp.c ft_memalloc.c ft_free.c ft_atoi_ptr.c ft_nbrlen.c \
			 ft_abs.c ft_itoa_lbase.c

OBJS = ${SRCS_FILES:.c=.o}

$(NAME): ${OBJS} 
	@echo ""
	@ar rcs ${NAME} ${OBJS}

.c.o:
	@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}
	@printf "\033[0;33m▓\033[0m"

all: ${NAME}

clean:
	@echo "\033[1m\x1b[33mRemove libft... |\x1b[32m| done\x1b[0m"
	@rm -rf ${OBJS}

fclean: clean
	@echo "\033[1m\x1b[33mRemove all libft|\x1b[32m| done\x1b[0m"
	@rm -rf ${NAME}

re: fclean all

.PHONY: all clean fclean re
