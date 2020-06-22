      program rot
      implicit none
      integer i,j
      real rot1(3,3),rot2(3,3),rot3(3,3),phi(3),coord(3,3)
      open(2,file='coordinate_origin.txt',status='old')

      do i=1,3
      read(2,*)coord(i,1),coord(i,2),coord(i,3)
      enddo


      open(1,file='angle.txt',status='old')
      read(1,*)phi(1),phi(2),phi(3)

      rot1(:,:)=0.
      rot2(:,:)=0.
      rot3(:,:)=0.


      rot1(1,1)=cos(phi(1))
      rot1(1,2)=sin(phi(1))
      rot1(2,1)=-sin(phi(1))
      rot1(2,2)=cos(phi(1))
      rot1(3,3)=1.

      rot2(1,1)=1.
      rot2(3,3)=cos(phi(2))
      rot2(2,3)=sin(phi(2))
      rot2(3,2)=-sin(phi(2))
      rot2(3,3)=cos(phi(2))

      rot3(1,1)=cos(phi(3))
      rot3(1,2)=sin(phi(3))
      rot3(2,1)=-sin(phi(3))
      rot3(2,2)=cos(phi(3))
      rot3(3,3)=1.




      coord=rot1*coord
      coord=rot2*coord
      coord=rot3*coord


      do i=1,3
      write(*,*)coord(i,1),coord(i,2),coord(i,3)
      enddo

      open(3,file='new_coordinate.txt',status='new')
      do i=1,3
      write(3,*)coord(i,1),coord(i,2),coord(i,3)
      enddo

      
      close(1)
      close(2)
      end
