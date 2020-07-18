program name

    implicit none
    real :: numbers(5)
    integer :: mat(3,3),i,j        

do i = 1, 5
    numbers(i)=i*2
    print *,numbers(i)
end do

do i = 1,3
    do j = 1,3
        mat(i,j)=i+j
        print *,mat(i,j)
    end do   
end do


end program name
