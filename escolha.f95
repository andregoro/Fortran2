program selectCaseProg
implicit none

   ! local variable declaration
   character :: grade = 'B'
   integer :: a = 100

   select case (grade)

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

   print*, "Your grade is ", grade




   if (13 .le. 20 ) then
      print*, "a is less than 20"
   else
      print*, "a is not less than 20"
   end if

end program selectCaseProg