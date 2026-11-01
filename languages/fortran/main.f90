program hello
  implicit none
  integer :: values(6) = [3, 1, 4, 1, 5, 9]
  print *, "Hello from Fortran"
  print *, "sum:", sum(values)
end program hello
