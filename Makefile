SRC         = src/mon.c deps/ms.c deps/commander.c
OBJ         = $(SRC:.c=.o)
CFLAGS      = -D_GNU_SOURCE -std=c99 -I deps/
LDFLAGS     = -static

mon: $(OBJ)
	$(CC) $(OBJ) -o $@ $(LDFLAGS)

.SUFFIXES: .c .o
.c.o:
	$(CC) $< $(CFLAGS) -c -o $@ $(LDFLAGS)

clean:
	rm -f mon $(OBJ)

.PHONY: clean install uninstall
