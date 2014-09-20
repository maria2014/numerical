program min
real*8 a, b
a=1.0
b=2.0
do while (a.lt.b)
  a=a/10
  b=b/10
write (*,*) 'a=', a
end do
end program
