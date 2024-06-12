program prog4
  implicit none
  integer :: n1, n2, suma

  ! Wczytanie wartoœci pocz¹tkowej i koñcowej
  print *, 'Podaj wartosc poczatkowa (N1):'
  read *, n1
  print *, 'Podaj wartosc koncowa (N2):'
  read *, n2

  suma = oblicz_sume(n1, n2)

  print '(A,I0,A,I0,A,I0)', 'Suma liczb naturalnych od ', n1, ' do ', n2, ' wynosi ', suma

contains

  recursive function oblicz_sume(n1, n2) result(suma)
    integer, intent(in) :: n1, n2
    integer :: suma

    if (n1 > n2) then
      suma = 0
    else
      suma = n1 + oblicz_sume(n1 + 1, n2)
    end if

  end function oblicz_sume

end program prog4
