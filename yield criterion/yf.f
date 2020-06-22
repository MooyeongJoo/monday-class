      subroutine yf(tsig,rsig)
      real tsig(3),rsig(3),phitilde,phi
      integer n
      n=1 !! homogeneous
      call vonmises(tsig,phitilde)

      do i=1,3
        rsig(i)=tsig(i)*(1./phitilde)**(1./n)
      enddo

      call vonmises(rsig,phi)
      write(*,*)'phi:',phitilde
      return
      end subroutine
