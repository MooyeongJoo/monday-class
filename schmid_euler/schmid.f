      subroutine schmid(sigma,rss)
      implicit none
      real n(12,3),b(12,3),norm,m(12,3,3),sigma(3,3),rss(12),an,bn,a
      integer i,j,nss,is,k


      open(3,file='slipsystem.txt',status='old')

      do j=1,12
        read(3,*)n(j,1),n(j,2),n(j,3),b(j,1),b(j,2),b(j,3)
      enddo

      an=norm(n)
      bn=norm(b)

      do i=1,3
        do j=1,12
          n(j,i)=n(j,i)/an
          b(j,i)=b(j,i)/bn
        enddo
      enddo

      do i=1,3
      do j=1,3
        do k=1,12
      m(k,i,j)=0.5*(n(k,i)*b(k,j)+n(k,j)*b(k,i))
      enddo
      enddo
      enddo

      rss(:)=0.
      do i=1,3
      do j=1,3
        do k=1,12
      rss(k)=rss(k)+(m(k,i,j)*sigma(i,j))
      enddo
      enddo
      enddo
      do i=1,12
      write(*,*)'rss',i,':',rss(i)
      enddo
      close(3)
      end
