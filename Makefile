OUTPUT_PATH=../build
CFLAGS=-g -Wall -O3

all:
	$(MAKE) -C src all

install:
	$(MAKE) -C src install

tests: all
	$(MAKE) -C tests all

position_logger: all
	$(MAKE) -C examples
	
clean:
	$(RM) -rf build