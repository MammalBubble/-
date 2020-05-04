
function []=to_latex(str,NAME,DIR)
        if ~isdef("DIR")
            DIR="";
        end 
    format(6,1)
    str=string(str)
csvWrite(str,DIR+NAME+".tex")
endfunction
//ввод
DIR='D:\U4ebka\теория систем и ОАУ\ОАУ\lab 3\'
phi=input('phi '); to_latex(phi,'phi',DIR)
f=input('f '); to_latex(f,'f',DIR)
delta=input('delta '); to_latex(delta,'delta',DIR)
V=input('V '); to_latex(V,'V',DIR)
F=input('F '); to_latex(F,'F',DIR)

//==========
omega=f*2*%pi; to_latex(omega,'omega',DIR)
A=phi/%pi*180; to_latex(A,'A',DIR)
//disp(omega,'omega= ',A,'A= ')

//g=4sint + 3cos4t
//g1=4sint g1`=4cost g1``=-4sint=-g1 g1`(0)=4
//g2=3cos4t g2`=-12sin4t g2``=-48cos4t=-16g2 g2`(0)=12
g='$g(t)=4\sin t+3\cos 4t$'; to_latex(g,'g',DIR)
g1='$g_1=4\sin t\\\dot{g_1}=4\cos t\\ \ddot{g_1}=-4sin t=-g_1\\ \dot{g_1}(0)=4$'; to_latex(g1,'g1',DIR)
g2='$g_2=3\cos 4t\\\dot{g_2}=-12\sin 4t\\ \ddot{g_2}=-48cos 4t=-16g_2\\ g_2(0)=3$'; to_latex(g2,'g2',DIR)
