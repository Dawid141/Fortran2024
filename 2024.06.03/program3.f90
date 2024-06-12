program program3
  implicit none
  character(len=256) :: nazwa_pliku
  character(len=80) :: slowo
  integer :: liczba_samoglosek, unit

  nazwa_pliku = 'slowo.txt'
  unit = 10

  open(unit, file=nazwa_pliku, status='old')
  read(unit, *) slowo
  close(unit)

  liczba_samoglosek = policz_samogloski(trim(slowo))
  print *, 'Liczba samoglosek w slowie ', trim(slowo), liczba_samoglosek

contains
  function policz_samogloski(slowo) result(liczba_samoglosek)
    implicit none
    character(len=*), intent(in) :: slowo
    integer :: liczba_samoglosek, i, lenght
    character :: znak

    liczba_samoglosek = 0
    lenght = len_trim(slowo)

    do i = 1, lenght
      znak = slowo(i:i)
      select case (znak)
      case ('a', 'e', 'i', 'o', 'u')
        liczba_samoglosek = liczba_samoglosek + 1
      end select
    end do
  end function policz_samogloski
end program program3
