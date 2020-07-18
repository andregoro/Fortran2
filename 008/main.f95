! A fortran95 program for G95
! By WQY
program main
 implicit none
    real :: a, b, c, s, p, Area
    integer :: d,e,re_i
    real :: f,g

    ! + Add
    ! - Subtract
    ! * Multiply
    ! / Divide
    ! ** exponent or power 2^3 = 8, 2**3
    ! mod(5,3) = 2 ! for both real and integer numbers
    ! Operator Precedence: a-b*c+g**5
    ! PEMDAS = Parenthesis Exponent Multiplication Division Addition Subtraction
    ! Please Excuse My Dear Aunt Sally


    !a = 8
    !b = 4
    !c = 5

    print *, "Enter the Sides of the triangle!"
    read *, a,b,c

    p = a+b+c
    s = p/2

    Area = (s*(s-a)*(s-b)*(s-c))**0.5
    !real = real

    print *, "The sides of the triangle are:"
    print *, "A = ",a," B = ",b," C = ",c
    print *, "The perimeter of the triangle is:", p
    print *, "The area of the triangle is:", area

    d = 4
    f = 6.7
    g = real(d)
    e = int(f)

    print *, "d = ",d," f = ",f
    print *, "g = ",g," e = ",e

  re_i = system("pause")
end
