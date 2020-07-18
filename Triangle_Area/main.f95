! A fortran95 program for G95
! By WQY
program main
  implicit none
  real :: a,b,c,s,p,Area

  a=3
  b=4
  c=5

  p= a+b+c
  s=p/2

  Area=(s*(s-a)*(s-b)*(s-c))**0.5

  write(*,*)"Area do triangulo ",Area

 ! re_i = system("pause")
end
