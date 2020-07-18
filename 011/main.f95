! A fortran95 program for G95
! By WQY
program main
  implicit none
  integer re_i
  real x,y,l,a
  real, parameter :: pi= 4*atan(1.4)
  character q

  write(*,*) "entre com um valor x e y"
  read *, x,y

  l=sqrt(x**2+y**2)
  print *,"l= ",l

  a=(atan(y/x))*180/pi
  print *,"a= ",a

  if(x >=0 .and. y>=0) then
    q='1'
  else if(x<=0 .and.y >=0) then
    q='2'
  else
    q='3'
  end if

  print *,q
  re_i = system("pause")
end
