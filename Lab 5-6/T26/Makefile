EXEC=T26
CC=gcc
CFLAGS=-O3
BISONFLAGS= -ydtg

ALL: lex.yy.c parser.tab.c
	$(CC) $(CFLAGS) $^ -o$(EXEC)

lex.yy.c: lexer.l
	flex $^

parser.tab.c: parser.y
	bison $(BISONFLAGS) $^ -oparser.tab.c

.PHONY: run
run: ALL
	./$(EXEC)

.PHONY: clean
clean:
	rm -f lex.yy.c parser.gv parser.tab.* $(EXEC)
