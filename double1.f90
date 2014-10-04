program double1
external fctx, fcty, fcty1, F1, F2, F3, F4

  Ay=-1.0
  By=1.0

  call QG4 (Ay, By, fcty, sx2)
  call QG10 (Ay, By, fcty1, sx3)
  print *, sx2+sx3

end program

function fcty(y)
  external fctx, F1, F2
  common /help/ xx
  xx=y
  Ax=F1(y)
  Bx=F2(y)
  call QG7(Ax, Bx, fctx, sx)
  fcty=sx
  return
end

function fcty1(y)
  external fctx, F3, F4
  common /help/ xx
  xx=y
  Ax=F3(y)
  Bx=F4(y)
  call QG5(Ax, Bx, fctx, sx1)
  fcty1=sx1
  return
end

function fctx(x)
  common /help/ xx
  y=xx
  fctx=(y**2)*(x**2)
  return
end

function F1(y)
  F1=-1*(1.-y**2)**(1/2)
  return
end

function F2(y)
  F2=-1*(1/2)*(1.-y**2)**(1/2)
  return
end

function F3(y)
  F3=(1/2)*(1.-y**2)**(1/2)
  return
end

function F4(y)
  F4=(1.-y**2)**(1/2)
  return
end
