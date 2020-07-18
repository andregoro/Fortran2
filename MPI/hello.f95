program hello

    use mpi
    implicit none

    integer :: ierr
    integer :: rank
    integer :: nprocs

    call MPI_INIT(ierr)

    call MPI_COMM_SIZE(MPI_COMM_WORLD,nprocs,ierr)

    call MPI_COMM_RANK(MPI_COMM_WORLD,rank,ierr)

    print *,"HELLO  ",rank," of ",nprocs,"Process(es) "

    call MPI_FINALIZE(ierr)
end program hello