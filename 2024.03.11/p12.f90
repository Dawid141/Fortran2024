program p12
    implicit none

    integer,parameter :: range = selected_int_kind(15)
    integer(kind=range) :: suma, n
    print *,"range = ",range
    suma = 0_range
    n = 0_range

    do
        n=n+1
        if(n>1234567890) exit
        if(n==55) cycle
        if(n.EQ.122) cycle
        if(n>=20.AND.n<=30) cycle
        if(n.GE.20.AND.n.LE.30) cycle

        suma=suma+n
    end do

    print *,"suma =",suma
    stop
end program p12
