
//Data

Un=27   //volt
n0=6500 //rpm
In=0.92 //A
Mn=0.12 //Nm
R=16.6 //Om
Ta=7 //ms anchor
Jm=7*10^(-5) //kg*m^2 motor
Ty=4 //ms
i=50 //transfer ratio
Jl=0.01 //kg*m^2 load or mechanism

//calculations and point 1
omega0=n0/10
Ku=1
Ki=1
Komega=1
Kalpha=1
Km=1/R
Ky=Un/10 

Jr=0.2*Jm
ke=Un/omega0 //первая конструктивная пстоянная
km=Mn/In //вторая конструктивная постоянная
Jsum=Jm+Jr+Jl/i^2

K=Ky/ke/i
Kf=R/km/ke/i^2
Tm=R*Jsum/km/ke
//output
DIR='D:\U4ebka\теория систем и ОАУ\ОАУ\lab 5\lab5_table.tex'
line=''
line=line+'$U_n$ & &'+string(Un)+' V\\ \hline'
line=line+'$n_0$ & &'+string(n0)+' rpm\\ \hline'
line=line+'$I_n$ & &'+string(In)+' A\\ \hline'
line=line+'$M_n$ & &'+string(Mn)+' Nm\\ \hline'
line=line+'$R$ & &'+string(R)+' $\Omega$\\ \hline'
line=line+'$T_a$ & &'+string(Ta)+' ms\\ \hline'
line=line+'$J_m$ & &'+string(Jm)+' $kgm^2$\\ \hline'
line=line+'$T_y$ & &'+string(Ty)+' ms\\ \hline'
line=line+'$i$ & &'+string(i)+' \\ \hline'
line=line+'$J_l$ & &'+string(Jl)+' $kgm^2$\\ \hline'
line=line+'$\omega_0$ & $n_o/10&$'+string(omega0)+' rad/s\\ \hline'
line=line+'$K_m$ & $1/R&$'+string(Km)+' \\ \hline'
line=line+'$K_y$ & $U_n/10&$'+string(Ky)+' \\ \hline'
line=line+'$K_m$ & $M_n/I_n&$'+string(Km)+' \\ \hline'
line=line+'$J_r$ & $0.2J_m&$'+string(Jr)+'$kgm^2$ \\ \hline'
line=line+'$k_1=k_e$ & $U_n/\omega_0$&'+string(ke)+' \\ \hline'
line=line+'$k_2=k_m$ & $M_n/I_n&'+string(km)+' \\ \hline'
line=line+'$J_\Sigma$ &$J_m+J_r+\dfrac{J_l}{i^2} $&'+string(Jsum)+' \\ \hline'
line=line+'$K$ & $\dfrac{K_y}{iK_e}$&'+string(K)+' \\ \hline'
line=line+'$K_f$ & $\dfrac{R}{K_m K_e i^2}$&'+string(Kf)+' \\ \hline'
line=line+'$T_m$ & $\dfrac{R J_\Sigma}{K_m K_e}$&'+string(Tm)+' ms\\ \hline'
csvWrite(line,DIR)
//point 2
Msm=0
U=5
//point 3
//Msm=Mn*i/2//31 Msm=mn*i/2

//points 4
//Jm=Jm*0.5 //41 Jm=0.5Jm

//points 5
//i=i+i*1.75
//Jsum=Jm+Jr+Jl/i^2 //recalc 51&52 Msm=0 i+-

//pount 6
//Ta=Ta/10
//Ty=Ty/10
