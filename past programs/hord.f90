program root_method_hord
  a=2.
  b=10.
  c=(b+a)/2.
  delta=1.d-2
  i=0.
  cond1=abs(b-a)
  cond2=abs(fun(c)/fun(b))

  do while (cond1.gt.delta .and. cond2.ge.delta)
    if ((fun(b)*fun(c)).lt.0) then
      a=c
    else
      b=c
    endif
    cond1=abs(b-a)
    cond2=abs(fun(c)/fun(b))
    c=a+(fun(a)*(b-a))/(fun(a)-fun(b))
    i=i+1
  end do

  write (*,*) 'zero=', c, 'iter=', i

end program

function fun(x)
  fun=log(x)-2
  return
end
