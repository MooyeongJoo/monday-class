      subroutine vonmises(s,vm)
      real s(6),vm

      vm=(s(1)-s(2))**2+(s(2)-s(3))**
     $  2+(s(3)-s(1))**2+6*(s(4)**2+s(5)**2+s(6)**2)
      vm=sqrt(vm/2.)

      return
      end subroutine
