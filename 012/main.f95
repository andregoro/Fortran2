! A fortran95 program for G95
! By WQY
program main
  implicit none
  integer re_i,a,b
  logical :: m,n

  a=4
  b=5
  m= .true.
  n= .false.
  write(*,*) "A=",a," B=",b
  write(*,*) "A==B?",a==b
  write(*,*) "A>B?",a>b
  write(*,*) "A<B?",a<b
  write(*,*) "A>=B?",a>=b
  write(*,*) "A<=B?",a<=b
  write(*,*) "A/=B?",a/=b


  write(*,*) ".not. M = ",.not.m
  re_i = system("pause")
end
