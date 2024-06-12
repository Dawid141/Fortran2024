program prog5
  implicit none
  real :: kwota_poczatkowa, kwota_koncowa, oprocentowanie
  integer :: liczba_lat, i

  kwota_poczatkowa = 1000.0
  kwota_koncowa = kwota_poczatkowa
  oprocentowanie = 0.02
  liczba_lat = 30

  do i = 1, liczba_lat
    kwota_koncowa = kwota_koncowa * (1.0 + oprocentowanie)
  end do

  print '(A,F12.2,A)', 'Kwota koncowa lokaty po 30 latach wynosi ', kwota_koncowa, ' PLN'

end program prog5
