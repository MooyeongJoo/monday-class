gfortran -c main.f -o main.o
gfortran -c vonmises.f -o vonmises.o
gfortran -c yf.f -o yf.o

gfortran -o yield main.o vonmises.o yf.o
cauchy
