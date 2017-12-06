CC=gcc
CFLAGS=-I.

build: src/hello.c
	mkdir -p bin
	gcc -o bin/hello-snappy-world src/hello.c

snap: .FORCE
	snapcraft

clean:
	rm -rf bin/*
	rm -rf *.o
	rm -rf *.snap
	snapcraft clean

.FORCE:
