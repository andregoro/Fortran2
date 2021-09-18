program main
    implicit none
    
end program main

subroutine Basic_Syntax()
implicit none
real ::a,b,result

a=12.0
b=210
result = a + b
print*,'The total is ',result 
end subroutine Basic_Syntax

subroutine Data_Types()
implicit none
   !two byte integer
   integer(kind = 2) :: shortval
   
   !four byte integer
   integer(kind = 4) :: longval
   
   !eight byte integer
   integer(kind = 8) :: verylongval
   
   !sixteen byte integer
   integer(kind = 16) :: veryverylongval
   
   !default integer 
   integer :: defval
        
   print *, huge(shortval)
   print *, huge(longval)
   print *, huge(verylongval)
   print *, huge(veryverylongval)
   print *, huge(defval)

end subroutine Data_Types

subroutine Variables()
implicit none

   ! declaring variables
   integer :: total      
   real :: average 
   complex :: cx  
   logical :: done 
   character(len=80) :: message ! a string of 80 characters
   
   !assigning values
   total = 20000  
   average = 1666.67   
   done = .true.   
   message = "A big Hello from Tutorials Point" 
   cx = (3.0, 5.0) ! cx = 3.0 + 5.0i

   Print *, total
   Print *, average
   Print *, cx
   Print *, done
   Print *, message
   
end subroutine Variables
subroutine Constant()
implicit none
!
   ! gravitational acceleration
   real, parameter :: g = 9.81   
   
   ! variable declaration
   real :: s ! displacement   
   real :: t ! time  
   real :: u ! initial speed  
   
   ! assigning values 
   t = 5.0   
   u = 50  
   
   ! displacement   
   s = u * t - g * (t**2) / 2  
   
   ! output 
   print *, "Time = ", t
   print *, 'Displacement = ',s  

end subroutine Constant
subroutine Operatos()
 ! variable declaration
   integer :: a, b, c, d, e
   
   ! assigning values 
   a = 20   
   b = 10
   c = 15
   d = 5
  
   e = (a + b) * c / d      ! ( 30 * 15 ) / 5
   print *, "Value of (a + b) * c / d is :    ",  e 

   e = ((a + b) * c) / d    ! (30 * 15 ) / 5
   print *, "Value of ((a + b) * c) / d is  : ",  e 

   e = (a + b) * (c / d);   ! (30) * (15/5)
   print *, "Value of (a + b) * (c / d) is  : ",  e 

   e = a + (b * c) / d;     !  20 + (150/5)
   print *, "Value of a + (b * c) / d is  :   " ,  e 
end subroutine Operatos

subroutine Decisions()
implicit none
character ::g ='B'

if ( .TRUE. ) then
   print*,"true"   
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
subroutine Loops()
implicit none

integer::n=0
do n=0,6
   print*,n
end do 

n=0
do while (n<6)
   n=n+1
   print*,n
end do

n=0

nloop: do n=1,3
   print*,n
end do nloop

end subroutine Loops

subroutine Numbers()
implicit none

   !two byte integer
   integer(kind = 2) :: shortval
   
   !four byte integer
   integer(kind = 4) :: longval
   
   !eight byte integer
   integer(kind = 8) :: verylongval
   
   !sixteen byte integer
   integer(kind = 16) :: veryverylongval

end subroutine Numbers

subroutine Character()
implicit none
 character(len = 15) :: surname, firstname 
   character(len = 6) :: title 
   character(len = 40):: name
   character(len = 25)::greetings
   
   title = 'Mr. ' 
   firstname = 'Rowan ' 
   surname = 'Atkinson'
   
   name = title//firstname//surname
   greetings = 'A big hello from Mr. Bean'
   
   print *, 'Here is ', name
   print *, greetings
end subroutine Character

subroutine string()
implicit none
  character(len = 8) :: dateinfo ! ccyymmdd
   character(len = 4) :: year, month*2, day*2

   character(len = 10) :: timeinfo ! hhmmss.sss
   character(len = 2)  :: hour, minute, second*6

   call  date_and_time(dateinfo, timeinfo)

   !  let’s break dateinfo into year, month and day.
   !  dateinfo has a form of ccyymmdd, where cc = century, yy = year
   !  mm = month and dd = day

   year  = dateinfo(1:4)
   month = dateinfo(5:6)
   day   = dateinfo(7:8)

   print*, 'Date String:', dateinfo
   print*, 'Year:', year
   print *,'Month:', month
   print *,'Day:', day

   !  let’s break timeinfo into hour, minute and second.
   !  timeinfo has a form of hhmmss.sss, where h = hour, m = minute
   !  and s = second

   hour   = timeinfo(1:2)
   minute = timeinfo(3:4)
   second = timeinfo(5:10)

   print*, 'Time String:', timeinfo
   print*, 'Hour:', hour
   print*, 'Minute:', minute
   print*, 'Second:', second  
end subroutine string