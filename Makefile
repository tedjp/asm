DESTDIR=
INSTALL_PREFIX=/usr/local
PROGRAMS = true false bagels

all: $(PROGRAMS)

true: true.o

false: false.o

%: %.o
	ld -o $@ $^

%.o: %.s
	as -o $@ $^

bagels: bagel.s
	gcc -static -nostartfiles -o $@ $^

clean:
	rm -f $(PROGRAMS) *.o

check: true false
	./true
	! ./false

install: true false
	mkdir -p $(DESTDIR)$(INSTALL_PREFIX)/bin
	cp -f $^ $(DESTDIR)$(INSTALL_PREFIX)/bin

uninstall:
	for program in true false; do \
		rm -f $(DESTDIR)$(INSTALL_PREFIX)/bin/$$program; \
	done

.PHONY: \
	all \
	check \
	clean \
	install \
	uninstall \
	#
