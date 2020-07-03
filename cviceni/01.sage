https://sagecell.sagemath.org/?z=eJyFkMGOgyAQhu8mvsMkPRSwZbXUNMZw6APstR42a0IKBlNFRda1b7-oPW5SLvwD__zzZSo0Y87ITMbBOq-jjMxlGgaj7n5RRWVdVQjjMAiD3T8nDCZh0d7tvaNBDvOYxixjF-JKdoxpdk69OkXJ8syIixiNLyzf0gGt4Q1GjicnjPM3Q65QgFkGfaIC8yspSuP1RlhgugK_A9Ug9RIhVePEbaFN_Ngb0pgnH2eiywVOrvWaezvohUt7Z-pvNQCHVy9fbUTqHMLAqlGZmo9dMymkhoPU-LXC7ecr_qZWjwhT47cJsAPz0ypb3x8CRG-7uW7FXUFvxaRgdFaYpy8mU8Oja_vOKOOesEX9ASiBb8M=&lang=sage&interacts=eJyLjgUAARUAuQ==

f(x)=3*x*sqrt(x)+9*x^5
show(f.diff())

####################
var('t')
l(t)=0.03937*t^3-0.945*t^2+10.033*t+3.073;
show (diff(l)(t=12));

####################
var('A W n')
M(W)=A*W^n
M.diff(W).show()

####################
var('h dh')
deltaV=0.01;
V(h)=1/4*h^3;
dV(h)=diff(V,h);
h=0.5;
eq = deltaV==dV(h)*dh; 
reseni=solve(eq,dh)
show(reseni[0].rhs().n())  # numericka aproximace prave strany prvni komponenty reseni
