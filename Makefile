
reverse: reverse.o
	g++ -O0 -o $@ $^

clean:
	rm reverse *.o