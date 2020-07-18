! A fortran95 program for G95
! By WQY
! A fortran95 program for G95
! By WQY
program main
  implicit none
  integer re_i
  real x,y,l,a
  real, parameter :: pi= 4*atan(1.4)

  write(*,*) "entre com um valor x e y"
  read *, x,y
  l=sqrt(x**2+y**2)
  print *,"l= ",l

  a=atan(y/x)
  print *,"a= ",a
  re_i = system("pause")
end
