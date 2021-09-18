program tuto
  implicit none
  !call data_types()
  !call Operators()
  !call Decisions()
  call Dynamic_Arrays()
end program tuto


subroutine data_types()
implicit none
  logical :: done
  integer ::largeval
  ! print *,huge(largeval)

  integer(kind=2)::shortval
  
  integer(kind=4)::longval

  integer(kind=8)::verylongval

  integer(kind=16)::veryverylongval

  integer::defval

  character(len=40)::nome

   real::float
   float =10
   print *,float 
   print *,nome
   print *, huge(shortval)
   print *, huge(longval)
   print *, huge(verylongval)
   print *, huge(veryverylongval)
   print *, huge(defval)
   print *,done
end subroutine data_types

subroutine Operators()
implicit none
  print *," 1 .le. 5 ",1 .le. 5
  print *,".not. 1 .le. 5 ",.not. 1 .le. 5
end subroutine Operators

!if-else if-else Construct
subroutine Decisions()
   implicit none
  integer :: a
  character(len=2)::g
 
  g = 'B'
  a=100

  if (a == 10) then
      print*,"10"
  else if(a .eq. 20) then
      print*,"20"
  else
      print*,"100"  
  end if

   select case (g)
   
      case ('A') 
      print*, "Excellent!" 

      case ('B')
      
      case ('C') 
         print*, "Well done" 

      case ('D')
         print*, "You passed" 

      case ('F')
         print*, "Better try again" 

      case default
         print*, "Invalid grade" 
      
   end select

end subroutine Decisions

subroutine Nested_Loops()
   implicit none
   integer::i,j,k,n
   n=1
   iloop: do i = 1, 3      
      jloop: do j = 1, 3         
         kloop: do k = 1, 3              
         
            print*, "(i, j, k): ", i, j, k               
            
         end do kloop       
      end do jloop
   end do iloop
!-====================================================
   do while (n <=10)
      n = n + 1
      print*,n
   end do
!=====================================================
   do n=1,10
      print*,n
   end do
end subroutine Nested_Loops

subroutine Arrays()
implicit none
real::vetor(5)
integer::matriz(3,3),i,j,k

 print*,"vetor"
 do i=1,5
   vetor(i)=i*10
  end do
 do i=1,5
   print*,vetor(i)
 end do
 print*,"matriz"
 do i=1,3
   do j=1,3
      matriz(i,j)=i+j
   end do
  end do
 do i=1,3  
   do j=1,3
      print*,matriz(i,j)
   end do
 end do
end subroutine Arrays

subroutine Dynamic_Arrays()
 implicit none
 integer,dimension(:),allocatable ::vetor 
   allocate(vetor(2))
   vetor(0)=1
   vetor(1)=2
   vetor(2)=3
   print*,vetor(0)
   print*,vetor(1)
   print*,vetor(2)

end subroutine Dynamic_Arrays
subroutine Derived_Data_Types()
   implicit none
   type struct
      integer::num
   end type
   type(struct)est
   est%num=10

   print*,est%num

   ! !declaring array of books
   ! type(Books), dimension(2) :: list 
    
   ! !accessing the components of the structure
   
   ! list(1)%title = "C Programming"
   ! list(1)%author = "Nuha Ali"
   ! list(1)%subject = "C Programming Tutorial"
   ! list(1)%book_id = 6495407 
   
   ! list(2)%title = "Telecom Billing"
   ! list(2)%author = "Zara Ali"
   ! list(2)%subject = "Telecom Billing Tutorial"
   ! list(2)%book_id = 6495700
  
   ! !display book info
   
   ! Print *, list(1)%title 
   ! Print *, list(1)%author 
   ! Print *, list(1)%subject 
   ! Print *, list(1)%book_id  
   
   ! Print *, list(1)%title 
   ! Print *, list(2)%author 
   ! Print *, list(2)%subject 
   ! Print *, list(2)%book_id 

end subroutine Derived_Data_Types
subroutine Pointers()
   implicit none
   integer,pointer::p1
   allocate(p1)
   p1=1
   Print*,p1

   p1=p1+4
   Print*,p1


end subroutine Pointers
subroutine Basic_Input_Output()
implicit none
integer::num
read*,num
print*,num
end subroutine Basic_Input_Output

! subroutine File_Input_Output()
! implicit none

! real,dimension(10)::x,y
! integer :: i

! do i = 0, 10
!    x(i)=i*0.1
! end do
!    ! output data into a file 
!    open(1, file = 'data1.dat', status = 'new')  
!    do i=1,100  
!       write(1,*) x(i), y(i)   
!    end do  
!    close(1) 
! end subroutine File_Input_Output

function calling_func() result(retval)
   implicit none
   integer :: retval,i
   
   i=10
   retval=10+i

end function calling_func

!module
subroutine Intrinsic_Functions()
implicit none
real :: a,b
complex ::z
a=15.232
b=-20.5467

write(*,*)'abs',abs(a)
write(*,*)'aint',aint(a)
write(*,*)'ceiling',ceiling(a)
write(*,*)'floor',floor(a)

z=complex(a,b)
write(*,*) 'z',z

end subroutine Intrinsic_Functions 

subroutine Numeric_Precision()
implicit none

real(kind=4)::a,b,c
real(kind=8)::e,f,g
integer(kind=2)::i,j,k
integer(kind = 4) :: l, m, n
integer::kind_a, kind_i, kind_e, kind_l

kind_a=kind(a)
kind_i=kind(i)
kind_e=kind(e)
kind_l=kind(l)
   print *,'default kind for real is', kind_a
   print *,'default kind for int is', kind_i
   print *,'extended kind for real is', kind_e
   print *,'default kind for int is', kind_l

end subroutine Numeric_Precision

subroutine Programming_Style()
implicit none
real :: x ,z

if (x >= 0.0) then
   z=sqrt(x)
end if
end subroutine Programming_Style