PWD=$(shell pwd)
BIN=my_httpd
SRC=httpd.c
INCLUDE=.
CC=gcc
FLAGS=-w -o
LDFLAGS=#-static
LIB=

$(BIN):$(SRC)
	$(CC) $(FLAGS) $@ $^ $(LDFLAGS)

.PHONY:clean
clean:
	rm -rf $(BIN)

