CC=clang++
CFLAGS=-c -Wall -O3 -std=c++11
LDFLAGS=-lgmp
SOURCES=main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=dhke
PREFIX=/usr/bin

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o

install:
	cp $(EXECUTABLE) $(PREFIX)

remove:
	rm -vi $(PREFIX)/$(EXECUTABLE)