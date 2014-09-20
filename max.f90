program max
  real*8 x, y

  x=1.0
  y=5.0

  do while (x.lt.y)
    x=x*10
    y=y*50
  write (*,*) 'x=', x
  end do
end program
