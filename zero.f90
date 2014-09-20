program zero
  real*8 x
  x=1.0
  do while (1+x .gt. 1)
    x=x/2
  end do
!  if (x+1 .eq. 1) then
!    y=x
!  end if
  write (*,*) 'x=', x
end program
