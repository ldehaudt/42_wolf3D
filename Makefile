NAME1 = wolf3d
NAME2 = coin_hunter
CC = gcc
CFLAGS = -O3 -Wall -Wextra -Werror
SRC1 = wolf3d.c control.c dimensions.c fill.c project3d.c fill_walls.c \
pickups.c stupid_program.c
OBJ1 = $(SRC1:.c=.o)
SRC2 = wolf3d.c control.c dimensions.c fill.c project3d.c fill_walls.c \
pickups.c cool_program.c
OBJ2 = $(SRC2:.c=.o)

GRAPHICS = -framework OpenGL -framework AppKit -lpthread
MLX_LNK = -L ./minilibx_macos -lmlx
FT_LNK = -L ./libft -lft

all:
	$(CC) $(CFLAGS) $(MLX_LNK) $(FT_LNK) $(GRAPHICS) $(SRC1) -o $(NAME1)
	$(CC) $(CFLAGS) $(MLX_LNK) $(FT_LNK) $(GRAPHICS) $(SRC2) -o $(NAME2)

clean:
	rm -f $(OBJ1)
	rm -f $(OBJ2)

fclean: clean
	rm -f $(NAME1)
	rm -f $(NAME2)

re:	fclean all
