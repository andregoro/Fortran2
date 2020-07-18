! A fortran95 program for G95
! By WQY
 !program main
 ! implicit none
 ! integer re_i
 ! write(*,*) "Hello World!"
 ! re_i = system("pause")
!end
program files1


    ! Opens the file stud_rec.txt

    ! Parameters inside open: In proper order!
    !
    ! unit   = Id for the file. An integer. If it is an expression/variable
    !          Then, it should return an integer. COMPULSORY.
    ! form   = FORMATTED or UNFORMATTED. OPTIONAL. By default, it is FORMATTED.
    ! file   = A string. It is the file name. OPTIONAL but RECOMMENDED.
    ! status = Status of the file! OPTIONAL. Has 5 string values.
    !          "OLD" = File already present. Throws error when file not present.
    !          "NEW" = File available for the first time. Throws error when file present.
    !          "SCRATCH" = File to be created temporarily. Data storing/extracting
    !               done within the execution period. At the end of the execution, the
    !               file is deleted.
    !          "REPLACE" = To replace an existing file. Deletes the old file.
    !          "UNKNOWN" = The file details not known. - Safest option. DEFAULT option.
    ! iostat = Integer variable. OPTIONAL. It's value is 0 if the file is open.
    !          The value is non-zero if there is an error in opening the file.
    ! access = Type of file. Has two string values. SEQUENTIAL or DIRECT.
    !          OPTIONAL. By default, it is SEQUENTIAL.
    ! recl   = An integer constant or expression .gt. 0. Specifies the maximum length
    !          of records in direct acces files. COMPULSORY for direct access files.
    ! action = Says what to be done to the file. READ, WRITE, READWRITE.
    !          READ/WRITE options disable the WRITE/READ option. OPTIONAL. Default is
    !          READWRITE.
    ! err    = Statement number to which the line of control should jump is an error is
    !          encountered. OPTIONAL.

    implicit none
    integer, parameter :: u = 10, g=2
    integer :: roll, ios, gradess(g), no, i, j, rno, f=0
    character :: stud_name*25

    open(unit=u, file="stud_rec.txt", status="replace", iostat=ios)

    if(ios/=0) then
        print *, "File cannot be opened"
        stop
    end if

    rewind u
    ! Places the file reading pointer at the beginning of the file

    print *, "Enter the number of entries:"
    read *, no

    10 format(i4,3x,a25,3x,2i4)
    ! For specifying the format in which the data has to be written

    do i=1,no
        print *, "Enter the roll number for student ", i, ":"
        read *, roll
        print *, "Enter the name for student ", i, ":"
        read *, stud_name
        print *, "Enter the grades for student ", i, ":"
        do j=1,g
            read *, gradess(j)
        end do
        write(unit = u, fmt = 10), roll, stud_name, gradess
        ! Writes the content to the file using the format "10"

        ! Parameters inside write: In proper order!
        !
        ! unit = Id for the file. An integer. If it is an expression/variable
        !        Then, it should return an integer. OPTIONAL. COMPULSORY for
        !        indicating the file. By default, it prints on the screen.
        ! fmt  = An integer variable/expression. Indicates the format to be used.
        !        COMPULSORY for formatted data. OPTIONAL. Pre-fixed format by
        !        default.
        ! rec  = Key of the data group. Data used to differentiate data groups.
        !        COMPULSORY for DIRECT access files.
        ! advance = Used for moving the position of the cursor after printing
        !           contents given to it. 2 string values.
        !           "yes" = For moving the cursor to the next line after printing.
        !           "no" = For keeping the cursor on the same position.
        !           OPTIONAL, "yes" is default.
    end do

    end file u ! appears to be optional here.
    ! Closes the file writing/reading operations

    rewind u ! appears to be optional here.
    ! Moves the file reading pointer to the beginning of the file

    close(unit = u)
    ! Closes the file

    print *, "Writing done!... Let's read data shall we?"

    rno = 10 ! roll no. of the data set which will be printed.

    open(unit = u, file = "stud_rec.txt", status = "old", iostat=ios)

    if(ios/=0) then
        print *, "File cannot be opened"
        stop
    end if

    do
        read(unit=u, fmt = 10, iostat = ios), roll, stud_name, gradess
        if(ios < 0) exit ! ios<0 indicates end of file

        print *, "File read roll no:", roll

        if(roll == rno) then
            f = 1
            print *, "Roll no. found!"
            print *, "Roll no:",roll
            print *, "Name:",stud_name
            print *, "Grades:",gradess
            print *, "Just like this, all the data can be extracted and printed!"
            exit
        end if

    end do

    if (f == 1) then
        f = 0
        print *, "Congratulations! Your data was retrieved!"
    else
        print *, "Sorry!, Data not available!"
    end if

!    end file u
!    rewind u
    close(unit=u)

    print *, " Searching done!... Let's replace a data shall we?"

    rno = 5 ! Roll number data to be changed

    open(unit = u, file = "stud_rec.txt", status = "old", iostat=ios)

    if(ios/=0) then
        print *, "File cannot be opened"
        stop
    end if

    do
        read(unit=u, fmt = 10, iostat = ios), roll, stud_name, gradess
        if(ios < 0) exit ! ios<0 indicates end of files

        print *, "File read roll no:", roll

        if(roll == rno) then
            f = 1
            print *, "Roll no. found!"
            backspace u
            print *, "Enter the new roll number for student ", i, ":"
            read *, roll
            print *, "Enter the new name for student ", i, ":"
            read *, stud_name
            print *, "Enter the new grades for student ", i, ":"
            do j=1,g
                read *, gradess(j)
            end do
            ! DO NOT UPDATE DATA IN THIS MANNER! IT WIPES THE UPCOMING DATA
            write(unit = u, fmt = 10), roll, stud_name, gradess
            exit
        end if

    end do

    if (f == 1) then
        print *, "Congratulations! Your data was edited!"
    else
        print *, "Sorry!, Data not edited!"
    end if

!    end file u
!    rewind u
    close(unit=u)

end program files1
