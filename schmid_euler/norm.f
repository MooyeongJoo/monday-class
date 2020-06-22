      real function norm(n)
      implicit none
      real n(3)
      integer i
      norm=0.
      do i=1,3
      norm=norm+n(i)**2
      enddo
      norm=sqrt(norm)
c      write(*,*)'norm:',norm
c      return
      end
