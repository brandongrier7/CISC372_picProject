
image:image.c image.h
	gcc -g image.c -o image -lm
omp:omp-image.c omp-image.h
	gcc -fopenmp -g omp-image.c -o omp-image -lm

pthr:pthread-image.c pthread-image.h
	gcc -g pthread-image.c -o pthread-image -lm -pthread -std=c99
clean:
	rm -f image output.png
