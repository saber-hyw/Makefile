# sample Makefile

objects = main.o command.o display.o files.o \
insert.o search.o utils.o kbd.o
CC = g++

edit : $(objects)
	$(CC) -o edit $(objects)

main.o : main.cpp
	$(CC) -c main.cpp

command.o : command.cpp command.h
	$(CC) -c command.cpp

display.o : display.cpp display.h
	$(CC) -c display.cpp

files.o : files.cpp files.h
	$(CC) -c files.cpp

insert.o : insert.cpp insert.h
	$(CC) -c insert.cpp

search.o : search.cpp search.h
	$(CC) -c search.cpp

utils.o : utils.cpp utils.h
	$(CC) -c utils.cpp

kbd.o : kbd.cpp kbd.h
	$(CC) -c kbd.cpp

.PHONY : clean
clean :
	-rm edit $(objects)
