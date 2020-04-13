
function []=to_latex(str,NAME,DIR)
        if ~isdef("DIR")
            DIR="";
        end 
    format(6,1)
    str=string(str)
csvWrite(str,DIR+NAME+".tex")
endfunction

DIR='D:\U4ebka\теория систем и ОАУ\ОАУ\lab 2\'
A=input('A '); to_latex(prettyprint(A),'A',DIR)
B=input('B '); to_latex(prettyprint(B),'B',DIR)
C=input('C '); to_latex(prettyprint(C),'C',DIR)
M=input('M '); to_latex(prettyprint(M),'M',DIR)
//расчет пердаточной функции
s=poly(0,'s')
eqW='C(sI-A)^{-1}B='+prettyprint(C)+prettyprint(s*eye(A)-A)+'^{-1}'+prettyprint(B)+'='+prettyprint(C)+prettyprint(inv(s*eye(A)-A))+prettyprint(B)+'='+prettyprint(C*inv(s*eye(A)-A))+prettyprint(B)+'='+prettyprint(C*inv(s*eye(A)-A)*B)

to_latex(eqW,'eqW',DIR)

Ws=C*inv(s*eye(A)-A)*B
Num=Ws(2)
Chi=Ws(3)
disp(Num/Chi)

   
NumK=coeff(Num)
ChiK=coeff(Chi)


Aku=[0 1; -ChiK(1) -ChiK(2)]
Bku=[0 ;1]
Cku=NumK
[sku]=syslin('c',Aku,Bku,Cku)
disp(sku)
    to_latex(prettyprint(Aku),'Aku2',DIR)
    to_latex(prettyprint(Bku),'Bku2',DIR)
   to_latex(prettyprint(Cku),'Cku2',DIR)

Akn=[0 -ChiK(1);1 -ChiK(2)]
Bkn=NumK'
Ckn=[0 1]
[skn]=syslin('c',Akn,Bkn,Ckn)
disp(skn)
    to_latex(prettyprint(Akn),'Akn2',DIR)
    to_latex(prettyprint(Bkn),'Bkn2',DIR)
    to_latex(prettyprint(Ckn),'Ckn2',DIR)
    
N=[B A*B]; to_latex(prettyprint(N),'N',DIR) //матрица управляемости
Nku=[Bku Aku*Bku]; to_latex(prettyprint(Nku),'Nku',DIR)
Nkn=[Bkn Akn*Bkn]; to_latex(prettyprint(Nkn),'Nkn',DIR)

Mku=N*inv(Nku); to_latex(prettyprint(Mku),'Mku',DIR) //матрицы преобразования
Mkn=N*inv(Nkn); to_latex(prettyprint(Mkn),'Mkn',DIR)

A3=inv(M)*A*M; to_latex(prettyprint(A3),'A3',DIR)
B3=inv(M)*B; to_latex(prettyprint(B3),'B3',DIR)
C3=C*M;     to_latex(prettyprint(C3),'C3',DIR)

