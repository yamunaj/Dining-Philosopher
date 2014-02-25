output := philosopher_yj

CFLAGS :=
#CFLAGS += -DDEBUG

diningPhilosopher : diningPhilosopher.o monitor.o  
	gcc -o $(output) diningPhilosopher.o monitor.o -lpthread -lrt

monitor.o : monitor.c monitor.h 
	gcc -c monitor.c $(CFLAGS)
	
diningPhilosopher.o : diningPhilosopher.c monitor.h 
	gcc -c diningPhilosopher.c $(CFLAGS)

clean:
	rm *.o
	rm $(output)
