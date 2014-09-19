program second_derivative
parameter(n = 5, m = 500)
dimension x(n*m), y(n*m), z(n*m), s(m*n)

a=-5.0
b=5.0
h=(b-a)/m
d=h/n

do I=1, m*n
  x(I)=a+(I-1)*d
  y(I)=fun(x(I))
end do

open (1, file='sd.dat')
do K=1, m*n
  s=0.0
  z(K)=a+(K)*d
  s(1)=(y(3)+y(1)-2*y(2))/(d**2)
    do J=2, (m*n)-1
      s(J)=(y(K+1)+y(K-1)-2*y(K))/(d**2)
    end do
  s(m*n)=(y(1)-2*y(2)+y(3))/(d**2)
  write (1,*)  z(K), s(K)
end do

open (2, file='sd1.dat')
do I=1, m
  x(I)=a+(I-1)*h
  y(I)=fun(x(I))
  write (2,*) x(I), y(I)
end do

close (1)
close (2)
end program

function fun(x)
  fun=x**2
  return
end
