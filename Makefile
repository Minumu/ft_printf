#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tshevchu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/22 16:54:23 by tshevchu          #+#    #+#              #
#    Updated: 2017/05/24 13:12:57 by tshevchu         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libftprintf.a

INCLUDES = -I

FLAGS = -Wall -Wextra -Werror

OBJECTS = ft_printf.o check_struct.o record_struct.o print_s_c.o syntax_s.o print_wc_ws.o\
additional_print_wc_ws.o additional_wchar.o print_d_i_o_x.o syntax_d_i.o syntax_o_x.o\
additional_functions_number.o handle_size.o lib_functions.o lib_functions2.o additional_u.o\
syntax_u.o

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)

%.o: ./%.c
	gcc $(FLAGS) -o $@ -c $<

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
