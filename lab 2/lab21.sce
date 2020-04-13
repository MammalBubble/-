
function []=to_latex(str,NAME,DIR)
        if ~isdef("DIR")
            DIR="";
        end 
    format(6,1)
    str=string(str)
csvWrite(str,DIR+NAME+".tex")
endfunction
//ввод
DIR='D:\U4ebka\теория систем и ОАУ\ОАУ\lab 2\'
por=input('por ')
a0=input('a0 '); to_latex(a0,'a0',DIR)
a1=input('a1 '); to_latex(a1,'a1',DIR)
a2=input('a2 '); to_latex(a2,'a2',DIR)
b0=input('b0 '); to_latex(b0,'b0',DIR)
b1=input('b1 '); to_latex(b1,'b1',DIR)
b2=input('b2 '); to_latex(b2,'b2',DIR)
//часть 1
if por==2 then
eq11='$\ddot{y}+'+string(a1)+'\dot{y}+'+string(a0)+'y='+string(b1)+'\dot{u}+'+string(b0)+'u$'; to_latex(eq11,'eq11',DIR)

eq12='$s^2y+'+string(a1)+'sy+'+string(a0)+'y='+string(b1)+'su+'+string(b0)+'u$'; to_latex(eq12,'eq12',DIR)

s=poly(0,'s')
Num=b1*s+b0
Chi=s^2+a1*s+a0
disp(Num/Chi)

    to_latex(prettyprint(Num/Chi),'W',DIR)
NumK=coeff(Num)
ChiK=coeff(Chi)


Aku=[0 1; -ChiK(1) -ChiK(2)]
Bku=[0 ;1]
Cku=NumK
[sku]=syslin('c',Aku,Bku,Cku)
disp(sku)
    to_latex(prettyprint(Aku),'Aku',DIR)
    to_latex(prettyprint(Bku),'Bku',DIR)
   to_latex(prettyprint(Cku),'Cku',DIR)

Akn=[0 -ChiK(1);1 -ChiK(2)]
Bkn=NumK'
Ckn=[0 1]
[skn]=syslin('c',Akn,Bkn,Ckn)
disp(skn)
    to_latex(prettyprint(Akn),'Akn',DIR)
    to_latex(prettyprint(Bkn),'Bkn',DIR)
    to_latex(prettyprint(Ckn),'Ckn',DIR)
  
end

if por==3 then
eq11='$y^{(3)}+'+string(a2)+'\ddot{y}+'+string(a1)+'\dot{y}+'+string(a0)+'y='+string(b2)+'\ddot{u}+'+string(b1)+'\dot{u}+'+string(b0)+'u$'
to_latex(eq11,'eq11',DIR)
eq12='$s^3y+'+string(a2)+'s^2y+'+string(a1)+'sy+'+string(a0)+'y='+string(b2)+'s^2u+'+string(b1)+'su+'+string(b0)+'u$'
to_latex(eq12,'eq12',DIR)

s=poly(0,'s')
Num=b2*s^2+b1*s+b0
Chi=s^3+a2*s^2+a1*s+a0
disp(Num/Chi)

    to_latex(prettyprint(Num/Chi),'W',DIR)
NumK=coeff(Num)
ChiK=coeff(Chi)


Aku=[0 1 0; 0 0 1; -ChiK(1) -ChiK(2) -ChiK(3)]
Bku=[0; 0; 1]
Cku=NumK
[sku]=syslin('c',Aku,Bku,Cku)
disp(sku)
    to_latex(prettyprint(Aku),'Aku',DIR)
    to_latex(prettyprint(Bku),'Bku',DIR)
   to_latex(prettyprint(Cku),'Cku',DIR)

Akn=[0 0 -ChiK(1);1 0 -ChiK(2);0 1 -ChiK(3)]
Bkn=NumK'
Ckn=[0 0 1]
[skn]=syslin('c',Akn,Bkn,Ckn)
disp(skn)
    to_latex(prettyprint(Akn),'Akn',DIR)
    to_latex(prettyprint(Bkn),'Bkn',DIR)
    to_latex(prettyprint(Ckn),'Ckn',DIR)
end
