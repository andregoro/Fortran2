program struct
    implicit none
    ! type Books
    !     character(len=50)::title
    !     character(len=50)::autor
    ! end type Books
    ! type(Books)::book1
    ! book1%title="Andre"
    ! book1%autor="num"

    type Livros
        integer(kind = 8)::numero
        integer(kind = 2)::numLo
        character(len=30)::nome
        real :: peso
    end type Livros

    type(Livros)::livro



    ! print*,book1%title
    ! print*,book1%autor

end program struct
