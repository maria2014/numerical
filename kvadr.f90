program square_interp
  a=1.
  b=10.
  c=(b+a)/2.
  delta=1.d-6
  i=0.
!  h=(a**2)*(c-b)-a*(c**2-b**2)+(c**2)*b-(b**2)*c
  h=(b-a)/2.
  cond1=abs(b-a)
  cond2=abs(fun(c)/fun(b))

!  h=(a**2)*(c-b)-a*(c**2-b**2)+(c**2)*b-(b**2)*c
!  a1=(fun(a)*(c-b)+a*(fun(b)-fun(c))+c*fun(b)-fun(c)*b)/h
!  b1=((a**2)*(fun(c)-fun(b))-fun(a)*(c**2-b**2)+(c**2)*fun(b)-(b**2)*fun(c))/h
!  c1=((a**2)*(c*fun(b)-b*fun(c))-a*((c**2)*fun(b)-(b**2)*fun(c))+fun(a)*((c**2)*b-c*(b**2)))/h

  do while (cond1.gt.delta .and. cond2.ge.delta)
    if ((fun(b)*fun(c)).lt.0) then
      a=c
    else
      b=c
    endif
    h=(b-a)/2.

!    c=(-b1+((b1**2)-4*a1*c1)**0.5)/(2.*a1)
!    h=(a**2)*(c-b)-a*(c**2-b**2)+(c**2)*b-(b**2)*c
    c1=c+(h*(fun(a)-fun(b)-(((fun(a)-fun(b))**2)-8*fun(c)*(fun(a)-2*fun(c)+fun(b)))**0.5))/(2*(fun(a)-2*fun(c)+fun(b)))
    c2=c+(h*(fun(a)-fun(b)+(((fun(a)-fun(b))**2)-8*fun(c)*(fun(a)-2*fun(c)+fun(b)))**0.5))/(2*(fun(a)-2*fun(c)+fun(b)))

    if (a.le.c1 .and. c1.le.b) then
      c=c1
    end if

    if (a.le.c2 .and. c2.le.b) then
      c=c2
    end if

!    c=(-b1+(b1**2.-4.*a1*c1))/(2.*a1)
!    a1=(fun(a)*(c-b)+a*(fun(b)-fun(c))+c*fun(b)-fun(c)*b)/h
!    b1=((a**2)*(fun(c)-fun(b))-fun(a)*(c**2-b**2)+(c**2)*fun(b)-(b**2)*fun(c))/h
!    c1=((a**2)*(c*fun(b)-b*fun(c))-a*((c**2)*fun(b)-(b**2)*fun(c))+fun(a)*((c**2)*b-c*(b**2)))/h
!    c=(-b1+((b1**2)-4*a1*c1)**0.5)/(2.*a1)
    cond1=abs(b-a)
    cond2=abs(fun(c)/fun(b))
!    c=c+(h*(fun(a)-fun(b)+(((a-b)**2)-8*fun(c)*(fun(a)-2*fun(c)+fun(b)))**0.5))/(2*(fun(a)-2*fun(c)+fun(b)))
    i=i+1
  end do

  write (*,*) 'zero=', c, 'iterations=', i

end program

function fun(x)
  fun=4*x-exp(x)
  return
end
