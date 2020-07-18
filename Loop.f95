program Loop

    ! implicit none
    ! integer :: nfact =1
    ! integer :: n =1
    ! integer :: n2 =1
    ! integer :: k
    ! do n = 1,10
    !     nfact = nfact *n
    !     print*,n," ",nfact
    ! end do

    ! do while (n2 .le. 10)
    !     print*,n2
    !     n2=n2+1
    ! end do


    !      kloop: do k = 1, 3

    !         print*, "(k): ",k

    !      end do kloop

    implicit none
    integer::i,j

    do i = 10,100
        print*,i
    end do

    do while (j <10)
        print*,j
        j=j+1
    end do

end program Loop
