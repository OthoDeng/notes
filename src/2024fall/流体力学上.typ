#import "../book.typ": book-page

#show: book-page.with(title: "流体力学")


#show link: it => {
  set text(fill: blue)
  underline(it)
}



#outline()



= 研究方法
1. 理论方法
2. 计算方法（数值方法）
3. 实验方法

= 物理性质
1. 流动性
处于静止状态下不受任何剪切力，不论在如何小的剪切力下流体都形变。
2. 黏性
抗切变性或者阻碍流体相对运动的特性。

理想流体 ($mu = 0$，黏性系数)

3. 压缩性
液体不可压缩，气体可压缩。

低速流体下压力差温度差变化不大(联想$p V = rho R T$)
不可压缩流体($nabla dot bold(V) = 0$,散度为0)
== 连续介质假设——宏观理论模型
无数质点没有间隙——流体连续介质假设

流体质点——微观足够大，宏观足够小

克努森数 Knudsen
  $ K_n = l/L $
  当$K n << 1$时流体连续介质才适用。


= 流体速度与加速度
== 描述两种方法
1. Lagrange 质点/随体
类比探空气球、篮球盯人

2. Euler 场
类比水文站、篮球群防

== 速度
1. Lagrange
用笛卡尔坐标（右手定则）

  $ bold(r) = bold(r)\(x,y,z\) = x bold(i) + y bold(j) + z bold(k) $

初始位置$t_0$ 位于$(x_0,y_0,z_0)$点，#highlight("做标记")


  $ bold(r) = bold(r)(x_0,y_0,z_0,t) $
分量形式：

$
cases(
  bold(x) = bold(x)(x_0,y_0,z_0,t)\
  bold(y) = bold(y)(x_0,y_0,z_0,t)\
  bold(z) = bold(z)(x_0,y_0,z_0,t)
)
$


对$t$求导：
拉格朗日观点下速度
$
bold(V)(x_0,y_0,z_0,t) = dif/(dif t) bold(r)(x_0,y_0,z_0,t)
$

2. Euler 
欧拉观点下速度
  $
  bold(V) = bold(V)(x,y,z,t)
  $
  其分量可以写成：
  $
  cases(
    u &= u(x,y,z,t)\
    v &= v(x,y,z,t)\
    w &= w(x,y,z,t)
  )
  $

- 当流场不随空间变化 => 均匀流场 $partial/(partial x) = partial/(partial y) = partial/(partial z) = 0 \/ nabla dot () = 0$
- 当流场不随时间变化 => 常定（稳定）流场 $partial/(partial t) = 0$

== 流体加速度 
Langanrage's Method
  $
  bold(a) = dif /(dif t) bold(V) \(x_0,y_0,z_0,t\)
  $

Euler's Method
  $ (dif bold(V))/(dif t) &= (partial bold(V))/(partial t) + (partial bold(V))/(partial x) (dif x)/(dif t) + (partial bold(V))/(partial y) (dif y)/(dif t) + (partial bold(V))/(partial z) (dif z)/(dif t)\
&= (partial bold(V))/(partial t) + (bold(V) dot nabla)bold(V) = ((partial )/(partial t) + bold(V) dot nabla)bold(V)\
"加速度" &= "局地加速度" + "平流加速度"
  $


  $  bold(a) = dif /(dif t) bold(V) \(x,y,z,t\)
  $

微商算符
  #highlight[$ underbrace(dif/(dif t) (dot),"个体变化") = underbrace(partial/(partial t) (dot),"局地变化") + underbrace(bold(V)dot nabla(dot) #v(0.8cm),"平流变化") $对于任意矢量与标量都成立]
  

1. 流体在运动过程中所具物理量不随时间变化
$ dif/(dif t)() = 0 "或" partial/(partial t) =- bold(V) dot nabla() $
 局地变化完全由平流变化引起。
2. 流体所具物理量分布均匀，或者说流体#highlight("运动方向均匀"),
$
bold(V) dot nabla() = 0 "或" partial/(partial t)() = dif/(dif t) ()
$
局地变化由个体变化引起。
= 迹线与流线
迹线方程不存在时间t，流线方程可以存在时间t

== 迹线 
某个流点各个时刻所行路径轨迹线 Lagrange 观点

#highlight("消去时间t")

== 流线
某一固定时刻，曲线上任意一点流速方向与该点切线方向相吻合。 Euler 观点

  $
  dif bold(r) times bold(V) &= mat(delim: "|",i,j,k;u,v,w;dif x,dif y,dif z)= 0\ 
 &=> (dif x)/u =  (dif y)/u = (dif z)/u
  $
  t作为常数，积分时做常数处理

流线只能反映方向不能反映大小

= 速度分解
$ bold(V)_"刚" = bold(V)_"平" + bold(V)_"转"  $

取一阶泰勒展开，对于挨得很近的两点$M_0$和$M$ 是一个局地量
$
u(M) = u(M_0) + (partial u)/(partial x) delta x + (partial v)/(partial y) delta y + (partial w)/(partial z) delta z
$


定义 $A_11 = (partial u)/(partial x), A_12 = 1/2 ((partial u)/(partial y) + (partial v)/(partial x)),A_13 = 1/2 ((partial u)/(partial z) + (partial w)/(partial x)) "etc." $

分解速度得：
$
cases(
  u(M) &= u(M_0) + A_11 delta x + A_12 delta y + A_13 delta z + (omega_y delta z - omega_z delta y) \ #v(1cm)
  v(M) &= v(M_0) + A_21 delta x + A_22 delta y + A_23 delta z + (omega_z delta x - omega_x delta z) \
  w(M) &= w(M_0) + A_31 delta x + A_32 delta y + A_33 delta z + (omega_x delta y - omega_y delta z)
)\
#hide($ w(M) = w(M_0) +$) underbrace(#hide($A_31 delta x + A_32 delta y + A_33 delta z$),"形变线速度") #hide("+") underbrace(#hide($(omega_x delta y - omega_y delta z)$),"转动线速度")
$

形变张量矩阵
  $ bold(A) = mat(delim: "[",A_11,A_12,A_13;A_21,A_22,A_23;A_31,A_32,A_33), bold(A) = (e_"ij")  i,j = 1,2,3
  $这是一个对称矩阵，其中每个元素表示流体的形变率


流体转动角速度
  $
  cases(
    omega_x = 1/2 ((partial w)/(partial y) - (partial v)/(partial z))\
    omega_y = 1/2 ((partial u)/(partial z) - (partial w)/(partial x))\
    omega_z = 1/2 ((partial v)/(partial x) - (partial u)/(partial y)) 
    )
    "或"
    bold(omega) = 1/2 nabla times bold(V)
  $


亥姆霍兹速度分解定律
  流体微团运动可被分解为#highlight([平动速度$bold(V)_0$、转动速度$bold(V)_R$、形变引起的速度$bold(V)_D$])\
  $ bold(V)_0 = bold(V) + bold(V)_R + bold(V)_D \
  cases(
    bold(V)_R = bold(omega) times delta bold(r)\
    bold(V)_D = bold(omega) dot delta bold(r))
  $


= 涡度、散度、形变率

== 涡度
 $bold(nabla) times bold(V)$ 是个矢量 
又叫旋度： $bold("Curl") arrow(V) bold("rot"), arrow(V)$

$ bold(nabla) times bold(V)= mat(delim: "|",bold(i),bold(j),bold(k);
(partial )/(partial x),(partial )/(partial y),(partial )/(partial z);
u,v,w) =
     ((partial w)/(partial y) - (partial v)/(partial z))bold(i)
 + ((partial u)/(partial z) - (partial w)/(partial x))bold(j)+ 
 ((partial v)/(partial x) - (partial u)/(partial y))bold(k) 
 $ 

#highlight("大于0，逆时针")

速度环流
  $
  Gamma = integral.cont bold(V) dot dif bold(l)
  $标量，但是有向曲线隐含了方向

  表示沿闭合曲线流动趋势程度

$
Gamma &= integral.cont bold(V) dot dif bold(l)\
  &= integral.double_sigma nabla times bold(V) dot dif bold(sigma) ("Stokes") \

lim_(sigma -> 0 ) [(integral.double nabla times bold(V) dot dif bold(sigma) )/(integral.double dif sigma) ] &= bold(nabla) times bold(V) dot bold(n)\
=>  bold(nabla) times bold(V) dot bold(n) &= lim_(sigma -> 0) Gamma\/sigma
$


对于二维水平运动：
$
(bold(nabla) times bold(V))_z = (bold(nabla) times bold(V)) dot bold(k) = (partial v)/(partial x) - (partial u)/(partial y)
$
考虑满足以下三种条件流体运动：
1. $w=0,(partial u)/(partial x) = (partial v)/(partial y)=0 $ (不存在法形变)
2. $(partial v)/(partial x) + (partial u)/(partial y)= 0 $ (不存在切形变)
3. $(partial v)/(partial x) = - (partial u)/(partial y) > 0 $ (存在旋转)
#highlight("涡度是一个局地概念")


== 散度
 $bold(nabla dot V)$ 是一个标量

$ bold(nabla dot V) = (partial u)/(partial x) +  (partial v)/(partial y) + (partial w/(partial z)
$
 
流体通量
  $ F = integral.double_sigma bold(V dot ) dif bold(sigma)  $

  $ integral.double_sigma bold(V dot ) dif bold(sigma) 
  &= integral.triple_tau bold(nabla dot V) dif tau\
  lim_(tau -> 0) (integral.triple_tau bold(nabla dot V) dif tau\/ integral.triple_tau dif tau) &= bold(nabla dot V)\
  => 
  bold(nabla dot V) &= lim_(tau -> 0) F\/tau
   $


物理意义：度量流体的体积膨胀或者收缩的一个量
1. 场的观点：$bold(nabla dot V) >0$，流体净流出；$bold(nabla dot V) <0$，流体净流入。
2. 随体观点：$bold(nabla dot V) >0$，封闭曲面向外膨胀；$bold(nabla dot V) <0$，封闭曲面向外收缩。

== 形变率
1. 法形变
单位长度流体速度变化率

三个方向法形变率
  $ e_(x x) = (partial u)/(partial x),e_(y y) = (partial v)/(partial y),e_(z z) = (partial w)/(partial z) $


2. 切形变
流体质点夹角相向改变率

  $ 
cases(
e_23 =e_32 = 1/2 ((partial w)/(partial y) + (partial v)/(partial z))\
e_31 =e_13 = 1/2 ((partial w)/(partial x) + (partial u)/(partial z))\
e_12 =e_21 = 1/2 ((partial v)/(partial x) + (partial u)/(partial y))
)
$

3. 形变张量

  $
 AA=(e_(i,j)) i,j = 1,2,3 ,
 AA =
  mat(
    delim: "[" ,
    A_11,A_12,A_13;
    A_21,A_22,A_23;
    A_31,A_32,A_33
 ) 
  $


= 连续性方程
#highlight("质量守恒定律")
== 拉格朗日观点
对于质量为$delta m$的物体，$delta m = rho delta x delta y delta z$,由质量守恒定律（质量流动过程中不发生变化）

$ 1/(delta m) dif/(dif t) (delta m) = 
1/(rho delta tau) dif/(dif t)(rho delta tau) = 
1/rho (dif rho)/(dif t) + 1/(delta tau) dif/(dif t)(delta tau) = 0
 $

由散度定义： $ 1/(delta tau) dif/(dif t)(delta tau) = bold(nabla dot V) $

Lagrange 观点下
  $ 
  (dif rho)/(dif t) + rho bold(nabla dot V)  = 0
  $


1. $bold(nabla dot V) = 0$时，流体体积不变，$(dif rho)/(dif t) = 0$，密度不变。
2.  $bold(nabla dot V) < 0 $时，流体体积减小，$(dif rho)/(dif t) >0$，密度变大。

== 欧拉观点
运用泰勒展开，后面速度表示前面速度：
$
"后面" &rho u \
=>"前面" &rho u + (partial)/(partial x) (rho u)delta x
$

- 流体净流出量：$[(partial)/(partial x) (rho u) + (partial)/(partial y) (rho v) + (partial)/(partial z) (rho w)]delta x delta y delta z$

- 单位时间内，体元质量减少:$ - (partial)/(partial t)delta x delta y delta z$

这两个不就是同个意思吗！
$  (partial rho)/(partial t) + (partial)/(partial x) (rho u) + (partial)/(partial y) (rho v) + (partial)/(partial z) (rho w) = 0 $

Euler 观点下
  $
(partial rho)/(partial t) + bold(nabla)dot (rho bold(V)) = 0
  $

对于定常运动$(partial rho)/(partial t) = 0$,有：

  $
  bold(nabla)dot (rho bold(V)) = 0
  $此时，流入=流出。

