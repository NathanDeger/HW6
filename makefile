# Nathan DeGeronimo
# 9/22/2016
# CS3560
# Makefile
 
 
all: game.o main.o othello.o
	gcc -Wall -g -c game.o main.o othello.o
 
   
game.o: game.cc game.h
	gcc -Wall -g -c game.cc
   
 
main.o: main.cc game.h othello.h
	gcc -Wall -g -c main.cc
   
   
othello.o: othello.cc othello.h game.h piece.h colors.h
	gcc -Wall -g -c othello.cc
   
   
clean:
	rm *.o
   
   
archive:
	tar cvzf ../my_dir.tgz . && cd ..
