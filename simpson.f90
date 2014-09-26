program simpson

  parameter (m=40)
  dimension x(0:m), y(0:m)
  a=-1
  b=2
  h=(b-a)/m
  k=(m-2)/2
  sum=0.0

  do I=0, m
    x(I)=a+I*h
    y(I)=fun(x(I))
  end do

!  call simpson(x,y)
  null=(y(0)-y(m))

  do I=0, k
    v=y(2*(I+1))
    w=y(2*I+1)
    sum=sum+2*v+4*w
  end do

  res=(null+sum)*(h/3)

  print *,"enter your answer"
  read (*,*) ares

  e=(abs(res-ares))/ares

  write (*,*) res, ares, e
end program

function fun(x)
  fun=x*2+x**3
  return
end

!subroutine simpson(x,y)
!  dimension x(0:20), y(0:20)
!  do I=0, 20
!    x(I)=a+I*h
!    y(I)=fun(x(I))
!  end do
!  return
!  end
