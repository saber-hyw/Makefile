# sample Makefile
CC     := g++
CFLAGS := -g -Wall
TARGET := edit
# 取得当前所有.cpp (一般以字符串的形式)
SRCS   := $(wildcard *.cpp)
OBJS   := $(patsubst %.cpp, %.o, $(SRCS))

# VPATH := src

all : $(TARGET)
# 编译当前目录下所有的*.cpp 为对应的xxx.o
%.o : %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@

.PHONY : clean
clean :
	-rm $(TARGET) $(OBJS)
