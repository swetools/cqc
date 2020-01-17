CC = gcc
CFLAGS = -O3 -Wall -Wextra -Werror -ggdb3 -march=native \
		 -fsanitize=undefined -fsanitize=address -fsanitize=leak
SELFTEST_FLAGS = --verbose --verbose

.PHONY : check

check : selftest
	./$< $(SELFTEST_FLAGS)

selftest : selftest.c cqc.h Makefile
	$(CC) -o $@ $(CPPFLAGS) $(CFLAGS) $< $(LDFLAGS)

.PHONY : clean

clean :
	rm -f selftest
	rm -f *.o
