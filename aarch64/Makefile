PROGRAMS = true false
all: $(PROGRAMS)

clean:
	rm -f -- $(PROGRAMS)

%.o: %.c
	as -o $@ $^

%: %.o
	ld -o $@ $^

check: true false
	./true
	! ./false

.PHONY: all clean check
