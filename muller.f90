program 	muller
  external fun
  a=0.
  b=3.
  esp=1.e-7
  iend=100

  call rtmi(x, f, fun, a, b, esp, iend, ier)
  write (*,*) x, f, ier
end

real function fun(x)
  fun=x**2-4.
  return
end
