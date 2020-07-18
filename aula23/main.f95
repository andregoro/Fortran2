! A fortran95 program for G95
! By WQY
program main
  implicit none
  integer re_i,a
  real :: ar

  read *,a,ar
  5 format(i6,f8.3)

  10 format("com formataçao",i5,4X,f5.2)

  print 10,a,ar
  print 5,a,ar
  print *,"sem formataçao",a,ar

  write(*,*) "Hello World!"
  re_i = system("pause")
end
