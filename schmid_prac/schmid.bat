gfortran -c schmid.f -o schmid.o
gfortran -c norm.f -o norm.o
gfortran -o schmid schmid.o norm.o
schmid