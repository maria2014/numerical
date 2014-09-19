program zero
  real*8 x
  x=1.0
  do while (1+x/2 .gt. 1)
    x=x/4
  end do
  write (*,*) 'x=', x
end program
