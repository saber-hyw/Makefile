# sample Makefile

objects = main.o command.o display.o files.o \
insert.o search.o utils.o kbd.o
CC = g++

edit : $(objects)
	$(CC) -o edit $(objects)

main.o :

command.o : command.h

display.o : display.h

files.o : files.h

insert.o : insert.h

search.o : search.h

utils.o : utils.h

kbd.o : kbd.h

.PHONY : clean
clean :
	-rm edit $(objects)
