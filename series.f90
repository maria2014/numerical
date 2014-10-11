program first_series
  parameter (j=100000)
  dimension sum(j)
  res=0.0
  sum(1)=0.
  a=((4.*atan(1.))**2)/6.
  b=((4.*atan(1.))**4)/90.
  l=100

  do I=1, 100
    res=res+(1./((I**4.)*(I**2.+1.)))
    l=I
  end do
  res=res+a-b

  do K=1, j
    sum(K+1)=sum(K)+(1./(1.+K**2.))
    m=K
  end do
  
  write (*,*) '1sum=', sum(j), 'the number of terms1=', m
  write (*,*) '2sum=', res, 'the number of terms2=', l

end program
