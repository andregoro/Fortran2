! A fortran95 program for G95
! By WQY
program main
 implicit none
  integer re_i,i
  integer, parameter :: n=100
!  write(*,*) "Hello World!"
    real(kind=8),dimension(0:n) :: x,sinx,cosx,secx,tanx,cscx &
    ,cotx
    real, parameter :: pi =  2*asin(1.0)
    real :: increment

    increment=2*pi/(real(n))

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
  10 format(f10.4,5x,f10.4)

  open(unit=1,file="sinx.txt")
  do i=0,n
    !print 15,(x(i)/p1)*180,sinx(i)
    write(unit=1,fmt=10),(x(i)/pi)*100,sinx(i)
  end do
  close(unit=1)

  re_i = system("pause")
end
