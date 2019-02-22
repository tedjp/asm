PROGRAMS = true false

all: $(PROGRAMS)

true: true.o

false: false.o

%: %.o
	ld -o $@ $^

%.o: %.s
	as -o $@ $^

clean:
	rm -f $(PROGRAMS) *.o

check: true false
	./true
	! ./false

.PHONY: \
	all \
	check \
	clean \
	#
