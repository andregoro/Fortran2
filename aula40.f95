function fact_fun
    use fact1
    implicit none
    integer, parameter :: n=20
    integer*8 :: i
    integer*8, dimension(n) :: num,numfact

    num(1:n) =[(i,i=1,n)]
    numfact=fac_num(num,n)

    do i=1,
        print *,"The ",i,"! is:",numfact(i)
    end do
    
end function fact_fun