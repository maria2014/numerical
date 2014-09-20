program second_derivative
parameter(n = 5, m = 50)
dimension x(0:n*m), y(0:n*m), z(n*m), s(0:m*n)

a=-6.0
b=6.0
h=(b-a)/m
d=h/n

do I=0, (m*n)
  x(I)=a+(I)*d
  y(I)=fun(x(I))
end do

open (1, file='sd.dat')
do K=1, (m*n)-1
  s=0.0
  z(K)=a+(K-1)*d
  s(1)=(y(2)+y(0)-2*y(1))/(d**2)
    do J=2, (m*n)-2
      s(J)=(y(J+1)+y(J-1)-2*y(J))/(d**2)
    end do
  s(m*n-1)=(y(m*n)-2*y((m*n)-1)+y((m*n)-2))/(d**2)
  write (1,*)  z(K), s(K)
end do

open (2, file='sd1.dat')
do I=0, 100
  x(I)=a+I*d
  y(I)=fun(x(I))
  write (2,*) x(I), y(I)
end do

close (1)
close (2)
end program

function fun(x)
  fun=exp(sin(x))
  return
end
