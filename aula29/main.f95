! A fortran95 program for G95
! By WQY
program main
  implicit none
  integer :: re_i,num,sum1,temp
  integer :: n,count1=0,i
  print *,"Enter a positive integer:"
  read *,num

  temp=num
  sum1=0
    do

        if (temp == 0) then
            exit
        else
            sum1 = sum1 + mod(temp,10)
            temp = temp/10
            print *, "Sum is:", sum1
            print *, "Temp is:", temp
        end if

end do
  write(*,*) "use cycly"

      do i=1,-2

        print *, "Enter value ", i, ":"
        read *, temp
        if (temp<0) then
            cycle
        else
            count1 = count1+1
        end if
      !  i=i+1
    end do
  !re_i = system("pause")
end
