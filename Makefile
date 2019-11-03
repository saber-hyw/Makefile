
# sample Makefile
edit : main.o command.o display.o files.o \
	insert.o search.o utils.o kbd.o
	g++ -o edit main.o command.o display.o files.o \
	insert.o search.o utils.o kbd.o

main.o : main.cpp
	g++ -c main.cpp

command.o : command.cpp command.h
	g++ -c command.cpp

display.o : display.cpp display.h
	g++ -c display.cpp

files.o : files.cpp files.h
	g++ -c files.cpp

insert.o : insert.cpp insert.h
	g++ -c insert.cpp

search.o : search.cpp search.h
	g++ -c search.cpp

utils.o : utils.cpp utils.h
	g++ -c utils.cpp

kbd.o : kbd.cpp kbd.h
	g++ -c kbd.cpp

clean :
	rm main.o command.o display.o files.o \
	insert.o search.o utils.o kbd.o
