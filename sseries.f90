program second_series
  real*4 sum, u, err, q, g
  sum=0.
  u=1.D-9
  err=0.
  q=0.
  g=0.
  i=0

  write (*,*) 'u=', u

  do K=1, 1000000000
    sum=sum+u
    q=u-(sum-g)
    err=err+q
    g=sum
    i=i+1
  end do

  write (*,*) 'sum=', sum+err
  write (*,*) 'err=', err
  write (*,*) 'iterations=', i
end program
