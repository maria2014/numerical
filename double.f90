program double
external fctx, fcty, F1, F2

  Ax=-1.0
  Bx=1.0

  call QG7 (Ax, Bx, fctx, sx)

  print *, sx

end program

function fctx(x)
  external fcty, F1, F2
  common /help/ xx
  xx=x
  Ay=F1(x)
  By=F2(x)
  call QG5(Ay, By, FCTY, sy)
  fctx=sy
  return
end

function fcty(y)
  common /help/ xx
  x=xx
  fcty=(y**2)*(x**2)
  return
end

function F1(x)
  F1=-sqrt(1.-x**2)
  return
end

function F2(x)
  F2=sqrt(1.-x**2)
  return
end
