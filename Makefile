CC      = cc
SRC_DIR = src
INCLUDE = $(SRC_DIR)/include
CFLAGS  = -Wall -I$(INCLUDE)
SRC     = $(wildcard $(SRC_DIR)/*.c)
OBJ     = $(SRC:.c=.o)
TARGET  = final

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@ -lm

# Rule to compile each .c file into .o
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c $(INCLUDE)/%.h
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean

clean:
	rm -f $(OBJ) $(TARGET)

