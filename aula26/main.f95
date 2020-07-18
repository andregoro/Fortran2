! A fortran95 program for G95
! By WQY
program main
  implicit none
  integer re_i,i
  integer, parameter :: n=100
!  write(*,*) "Hello World!"
    real(kind=8),dimension(0:n) :: x,sinx,cosx,secx,tanx,cscx &
    ,cotx
    real, parameter :: p1 =  2*asin(1.0)
    real :: increment

    increment=2*p1/(real(n))

    do i=0,n
        x(i)=i*increment
        !sinx(i)
    end do

  sinx=sin(x)
  cosx=cos(x)
  tanx=sinx/cosx
  cscx=1.0/sinx
  secx=1.0/cosx
  cotx=1.0/tanx

  15 format("The sine of ",f10.4," is: ",f10.4)

  do i=0,n
    print 15,x(i),sinx(i)
  end do

  re_i = system("pause")
end
