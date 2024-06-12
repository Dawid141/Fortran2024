program p15
    implicit none
    real, dimension(2:10,-30:30,0:10) :: t,y,tplusy
    t=2.0
    y=3.0
    tplusy=t+y


    print *,tplusy
    stop
end program p15
