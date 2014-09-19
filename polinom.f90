        program polinom
        parameter(n = 100, m = 10)
        dimension x(n*m), y(n*m), z(n*m)

        open (10, FILE='function.dat')


!        n=100
!        m=40
        a=-8.0
        b=8.0
        h=(b-a)/m
        c=(b-a)/n
        d=h/n

        do I=1, m
          x(I)=a+(I-1)*h
          y(I)=fun(x(I))
        end do


        do I=1, m*n
            s=0.0
            z(I)=a+(I-1)*d
            do K=1, m
              p=1.0
              do J=1, m
                if(j.ne.k) p=p*(z(I)-x(J))/(x(K)-x(J))
              end do
              s=s+y(K)*p
            end do
              write (10,*) z(I), s
        end do

        open (9, file='function1.dat')
        do I=1,100
          x(I)=a+(I-1)*c
          y(I)=fun(x(I))
          write (9,*) x(I), y(I)
        end do


        close (9)
        close (10)
        end program


        function fun(x)
          fun=cos(x)
          return
        end
