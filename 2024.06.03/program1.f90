program program1
  implicit none
  integer :: i, num, sum_even, sum_odd, unit

  sum_even = 0
  sum_odd = 0
  unit = 10

  open(unit=unit, file='liczby.txt', status='old')

  do i = 1, 15
    read(unit, *) num
    if (mod(num, 2) == 0) then
      sum_even = sum_even + num
    else
      sum_odd = sum_odd + num
    end if
  end do

  close(unit)

  print *, 'Suma liczb parzystych: ', sum_even
  print *, 'Suma liczb nieparzystych: ', sum_odd
end program program1

