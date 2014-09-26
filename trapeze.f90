program trapeze

  parameter (m=100)
  dimension t(0:m), x(0:m), y(0:m)
  a=-1
  b=2
  h=(b-a)/m

  do I=0, m
    x(I)=a+I*h
    y(I)=fun(x(I))
  end do

  t(0)=(y(0)-y(m))*(h/2)
  do I=0, m-1
    t(I+1)=t(I)+h*y(I)
  end do
  write (*,*) t(I)

end program

  function fun(x)
    fun=x**3+x*2
    return
  end
