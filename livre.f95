! subroutine name

!    implicit none
!     !t
!     ! integer(king=2) :: shortval

!        !four byte integer
!    integer(kind = 4) :: longval

!    !eight byte integer
!    integer(kind = 8) :: verylongval

!    !sixteen byte integer
! !    integer(kind = 16) :: veryverylongval

!     ! print *,huge(shortval)
!     print *,huge(longval)
!     print  *,huge(verylongval)

! end subroutine name

! subroutine escolha
!        integer :: a = 10

!    ! check the logical condition using if statement
!    if (a < 20 ) then

!    !if condition is true then print the following
!    print*, "a is less than 20"
!    end if
! end subroutine escolha

! subroutine intent_example (a, b, c, d)
! implicit none

!    ! dummy arguments
!    real, intent (in) :: a
!    real, intent (in) :: b
!    real, intent (in) :: c
!    real, intent (out) :: d

!    d = b * b - 4.0 * a * c

! end subroutine intent_example
subroutine s(n)
  implicit none
  integer, intent (in) :: n
  integer::b,c
  integer,dimension(:),allocatable::num2! dinamico
  allocate(num2(n))
 ! call system('cls')

  do b = n-(n-1), n
    print*,"Digite um numero ",b
    read*,num2(b)
    call system('cls')
  end do

  do c=n-(n-1),n
    print*,"Numero um ",num2(c)
  end do
end subroutine s
subroutine sw()
  implicit none
  integer::a,n
  character ss*20
  integer,dimension(5)::num!statico
  a=0

  do while(ss .ne. "nao")
      print*,"Digite um tamanho"
      read*,n
      call s(n)
      print*,"continuar ? \n sim ou nao"
      read*,ss
  end do
  !print*,a

  ! do a = 1, 5
  !    ! print*,a
  !     num(a)=a
  !     if (a .eq. 5) then
  !         exit
  !     end if
  ! end do
  ! a=1
  ! do while(a .lt. 5)
  !     print*,num(a)
  !     a=a+1
  ! end do
end subroutine sw
program livre
implicit none

! real,dimension(126)::x,y
! real,dimension(126)::p,q

! do i=1,100
!   x(i)=i*0.1
!   y(i)=sin(x(i))*(1-cos(x(i)/3.0))
! end do

! open(1,file='data1.dat',status='new')

! do i=1,100
!   write(1,*) x(i),y(i)
! end do

! close(1)
!=================================================================================================
! open(2,file='data1.dat',status='old')

! do i=1,100
!   read(2,*) p(i),q(i)
! end do

! close(2)

! do i = 1,100
!    write(*,*) p(i), q(i)
! end do

! do i = 1,126
!   write(*,*) p(i), q(i)
! end do
! print*,"fim"

type st
integer(kind=8)::n
end type st

type(st)::s
  s%n=10
print*,s%n


end program livre
