! A fortran95 program for G95
! By WQY
program main
  implicit none
  integer re_i
  integer :: i,n,j,next

  print *,"Entre com o numero"
  read *,n

  do i=1,n
        next=1
        do j=1,i
            next = next * j
        end do
        write(*,*)"O fatorial de",i," e ",next
  end do

  !write(*,*) "Hello World!"
  re_i = system("pause")
end
