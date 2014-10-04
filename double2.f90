program double2
external fcty, fctx, fctx1, F1, F2, F3, F4

  Ax=-1.0
  Bx=1.0

  call QG4 (Ax, Bx, fctx, sy2)
  call QG10 (Ax, Bx, fctx1, sy3)
  print *, sy2+sy3

end program

function fctx(x)
  external fcty, F1, F2
  common /help/ xx
  xx=x
  Ay=F1(x)
  By=F2(x)
  call QG7(Ay, By, fcty, sy)
  fctx=sy
  return
end

function fctx1(x)
  external fcty, F3, F4
  common /help/ xx
  xx=x
  Ay=F3(x)
  By=F4(x)
  call QG5(Ay, By, fcty, sy1)
  fctx1=sy1
  return
end

function fcty(y)
  common /help/ xx
  x=xx
  fcty=(x**2)*(y**2)
  return
end

function F1(x)
  F1=-1*(1.-x**2)**(1/2)
  return
end

function F2(x)
  F2=-1*(1/2)*(1.-x**2)**(1/2)
  return
end

function F3(x)
  F3=(1/2)*(1.-x**2)**(1/2)
  return
end

function F4(x)
  F4=(1.-x**2)**(1/2)
  return
end
