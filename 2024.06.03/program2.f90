program program2
  implicit none
  real :: a, b, c, delta, root1, root2

  print *, 'Podaj wspolczynniki a, b i c: '
  read *, a, b, c

  delta = b**2 - 4.0 * a * c

  if (delta > 0.0) then
    root1 = (-b + sqrt(delta)) / (2.0 * a)
    root2 = (-b - sqrt(delta)) / (2.0 * a)

    print *, 'Pierwiastki sa rozne: ', root1, root2

  else if (delta == 0.0) then
    root1 = -b / (2.0 * a)
    print *, 'Pierwiastek jest podwojny: ', root1
  else
    print *, 'Nie ma rzeczywistych pierwiastków.'
  end if

end program program2

