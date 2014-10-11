program second_series
  parameter (j=1000000000)
  dimension sum(0:j)
  sum(0)=0.0

  do K=1, j
    sum(K)=sum(K-1)+(1./(1000000000.))
  end do

  write (*,*) '1sum=', sum(j)
end program
