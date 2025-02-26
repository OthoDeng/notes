#import "../book.typ": book-page

#show: book-page.with(title: "数理方程")


#show link: it => {
  set text(fill: blue)
  underline(it)
}


#outline()



Lapalce Function
  $
 (partial ^2 u )/(partial x^2) + (partial ^2 u )/(partial y^2) +(partial ^2 u )/(partial z^2) = 0
  $
  Where $u = 1\/(sqrt(x^2 + y^2 +z^2))$

= 偏微分方程
一阶线性微分方程解
The solution of $ y' + P(x)y =Q(x)$ is 
$
y = e^(- integral P(x)dif x) \(integral Q(x) e^(integral P(x)dif x) dif x + C \)
$



$Delta , nabla, "div" "and" "rot" $
$ Delta &eq.triple (#sym.partial ^2)/(#sym.partial x_1 ^2) + (#sym.partial ^2)/(#sym.partial x_2 ^2) + dots + (#sym.partial ^2)/(#sym.partial x_n ^2) ,"拉普拉斯算子"\
 nabla &eq.triple \( (#sym.partial ^2)/(#sym.partial x_1 ^2),(#sym.partial ^2)/(#sym.partial x_2 ^2), dots , (#sym.partial ^2)/(#sym.partial x_n ^2) \) , "哈密顿算子"\
 "grad" bold(A) &= nabla dot bold(A) \
 "rot" bold(A) &= nabla times bold(A)

 $
$nabla(nabla U) = Delta U, "in short" => nabla^2 = Delta$

== 弦的微小振动
1. 水平方向(仅有张力分量没有位移)

$ T(x+ delta x) = T(x) => "T"与"x""无关"
$
2. 垂直方向
$ -T sin alpha + T' sin alpha ' - rho g dif x &approx rho dif x (partial^2 u(x,t))/(partial t^2)
$
$sin alpha approx tan alpha approx dif x$
$
T/rho &underbrace(1/(dif x) [(partial u(x + dif x,t))/(partial x)-(partial u(x,t))/(partial x)]) approx (partial ^2 u(x,t))/(partial t^2)+g\
  &#h(2cm) approx (partial^2 u(x,t))/(partial x^2)  $


一维波动方程"
  $
  (partial^2 u )/(partial t^2) =a^2 (partial ^2 u)/(partial x^2) + f(x,t)
  $

$a^2 = T\/rho , "外力" f(x,t) = F(x,t)\/rho $


== 热传导方程
#highlight("能量守恒定律:")
$ underbrace(Q_2,"V中增加热量") = underbrace(-Q_1,"边界流入热量") + underbrace(Q_3,"内部产生热量") $


  $
  Q_1 = - integral^(t_2) _(t_1) integral.surf_S k (partial u)/(partial n) dif S dif t 
  &= -integral^(t_2) _(t_1) integral.surf_S k nabla u dot bold(n) dif S dif t \
  &= - integral^(t_2) _(t_1) integral.triple_V k Delta u dif V dif t, <= "高斯公式 高数下" 
  $
+ "高斯公式："+$ 
integral.surf_S [P cos(n,x) + Q cos(n,y) + R cos(n,z)] dif S = integral.triple_V ((partial P)/(partial x) +(partial Q)/(partial y) + (partial R)/(partial z)) dif V
$


三维热传导方程
  $ u_t &= a^2 Delta u + f(x,y,z,t),"有热源"\
  u_t &= a^2 Delta u ,"无热源"
  $
  $a^2 = k\/(c rho) , f(x,y,z,t) = F\/(c rho)$


== 位势方程
$u$不随时间变化而变化，定常：$(partial u)/(partial t)=0$

= 定解问题
偏微分方程 + 特定条件

== 初始条件(Cauchy)，得出初始状态
- 弦振动 
1. 固定端 $u(L,t)= 0, t>= 0$
2. 自由端 $T (partial u)/(partial x) |_x_(x=l) = 0$
3. 弹性支撑端

=  二阶线性偏微分方程分类以及标准型
- 齐次方程：$y'' + p y' + q y = 0$
- 特征方程 :$r^2 + p r +q = 0$

1. 两个不同实根
$ y = (C_1 + C_2) e^(r_1 x) $

2. 有两个相等实根
$ y =( C_1 + C_2 x )e^(r_1 x) $

3. 一对共轭复根
$ y = (C_1 cos beta x  + C_2 cos beta x) e^(alpha x) $

二阶主部
  $ a_11 u_(x x) + 2 a_12 u_(x y) + a_22 u_(y y)$只考虑二阶导项\

  $ Delta eq.triple a_(12)^2 - a_11 a_22 = cases(
    >0 "双曲形" \
    = 0 "抛物型" \
    <0 "椭圆型"
  ) $



= 变量替换方程转型
非奇异变换：自变量转换
$ cases(
  xi = xi(x,y)\
  eta = eta(x,y)) $变换在$(x_0,y_0)$附近可逆

偏微分方程特征方程
  $ a_11 ((dif y)/(dif x))^2 - 2 a_12 (dif y)/(dif x) + a_22 = 0 $

解： 
$ (dif y)/(dif x) = (a_12 plus.minus sqrt(Delta))/(a_11), Delta = a_(12)^2 - a_11 a_22 
 $

特征曲线：
$ cases(
  xi = xi(x,y) = C_1\
  eta = eta(x,y) = C_2) $

= d'Alembert公式
对于初值问题(Cauchy)：
$
  cases(
    u_(t t) - a^2 u_(x x) = 0 (-oo < x < + oo,t>0)\
    u|_(t = 0) = phi(x) \, u_t|_(t = 0) = psi(x) (-oo<x<+oo)

  )
$
无限长弦自由振动的达朗贝尔
  $
    u(x,t) = 
    1/2[phi(x + a t)+ phi(x-a t)] + 
    1/2a integral^(x +a t)_(x-a t) psi(epsilon)dif epsilon
  $


Kirchihoff公式
  $
     u(x,t) = 
    1/2[phi(x + a t)+ phi(x-a t)] + 
    1/2a integral^(x +a t)_(x-a t) psi(epsilon)dif epsilon+
    1/2 integral_0^t integral^(x + a(t -tau))_(x - a(t -tau)) f(epsilon,tau)dif epsilon dif tau
  $


#figure(image("../pic/数理方程例题.png"))
