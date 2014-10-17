program runge
  parameter (M=100, F=5., J=5)
  dimension x(0:M*J), y(0:M*J)
  a=0.
  b=20.
  d=(b-a)/100.
  x(1)=d
  x(0)=0.
  y(0)=1.
  h=(x(1)-x(0))
  omega=1./2.

  open (10, file='runge.dat')

  do I=0, M*J
    x(I)=a+I*d
    a1=fun(x(I),y(I))
    a2=fun(x(I)+(h/(2.*omega)),y(I)+(h/(2.*omega))*a1)
    y(I+1)=y(I)+h*((1.-omega)*a1+omega*a2)
    write (10,*) x(I), y(I)
  end do

end program

function fun(x,y)
  fun=y
  return
end
