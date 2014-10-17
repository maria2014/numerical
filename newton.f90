program newton
  external fun
  x0=3.
  esp=1.E-11
  iend=100

  call RTNI(x, f, derf, fun, x0, esp, iend, ier)
  write (*,*) x, f, derf, ier
end

subroutine fun(x, f, d)
  f=x**2-4.
  d=2.*x
  return
end
