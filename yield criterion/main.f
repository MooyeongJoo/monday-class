      program main
      real tsig(3),rsig(3)
      tsig(1)=1./sqrt(3.)
      tsig(2)=1./sqrt(3.)
      tsig(3)=0.

      call yf(tsig,rsig)

      write(*,*)'rsig:',rsig(1),rsig(2),rsig(3)

      end program
