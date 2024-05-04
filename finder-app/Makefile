TARGET = writer
SOURCES = writer.c
OBJECTS = $(SOURCES:.c=.o)
.DEFAULT_GOAL := all

CC = $(CROSS_COMPILE)gcc
CFLAGS ?= -Wall -Werror -Wextra

all: $(TARGET)
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean: 
	rm -f $(TARGET) $(OBJECTS)
