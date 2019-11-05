# sample Makefile

objects = main.o command.o display.o files.o \
insert.o search.o utils.o kbd.o

CC = g++

VPATH = src

edit : $(objects)
	$(CC) -o edit $(objects)

main.o :

command.o : command.cpp

display.o : display.cpp

files.o : files.cpp

insert.o : insert.cpp

search.o : search.cpp

utils.o : utils.cpp

kbd.o : kbd.cpp

.PHONY : clean
clean :
	-rm edit $(objects)
