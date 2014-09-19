program first_derivative
parameter(n = 5, m = 50)
dimension x(n*m), y(n*m), z(n*m), s(m*n)

a=-5.0
b=5.0
h=(b-a)/m
d=h/n

do I=1, m*n
  x(I)=a+(I-1)*d
  y(I)=fun(x(I))
end do

open (1, file='d.dat')
do K=1, m*n
  s=0.0
  z(K)=a+(K)*d
  s(1)=(-y(3)-3*y(1)+4*y(2))/(2*d)
    do J=2, (m*n)-1
      s(J)=(y(K+1)-y(K-1))/(2*d)
    end do
  s(m*n)=(y(1)-4*y(2)+3*y(3))/(2*d)
  write (1,*)  z(K), s(K)
end do

open (2, file='d1.dat')
do I=1, m
  x(I)=a+(I-1)*h
  y(I)=fun(x(I))
  write (2,*) x(I), y(I)
end do

close (1)
close (2)
end program

function fun(x)
  fun=x
  return
end
