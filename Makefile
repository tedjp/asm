PROGRAMS = true

all: $(PROGRAMS)

true: true.o

%: %.o
	ld -o $@ $^

%.o: %.s
	as -o $@ $^

clean:
	rm -f $(PROGRAMS) *.o

check: true
	./true

.PHONY: \
	all \
	check \
	clean \
	#
