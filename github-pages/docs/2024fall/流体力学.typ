#import "@preview/dvdtyp:1.0.0": *
#import "@preview/chem-par:0.0.1": *



#show link: it => {
  set text(fill: blue)
  underline(it)
}


#show: dvdtyp.with(
  title: "流体力学",
  subtitle: [_2024 fall_],
  author: [Otto Deng],
)

#outline()
#pagebreak()
#show: chem-style


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

#theorem("克努森数 Knudsen")[
  $ K_n = l/L $
  当$K n << 1$时流体连续介质才适用。
]

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
#definition("拉格朗日观点下速度")[
$
bold(V)(x_0,y_0,z_0,t) = dif/(dif t) bold(r)(x_0,y_0,z_0,t)
$]

2. Euler 
#definition("欧拉观点下速度")[
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
]
- 当流场不随空间变化 => 均匀流场 $partial/(partial x) = partial/(partial y) = partial/(partial z) = 0 \/ nabla dot () = 0$
- 当流场不随时间变化 => 常定（稳定）流场 $partial/(partial t) = 0$

== 流体加速度 
#theorem("Langanrage's Method")[
  $
  bold(a) = dif /(dif t) bold(V) \(x_0,y_0,z_0,t\)
  $
]
#theorem("Euler's Method")[
  $ (dif bold(V))/(dif t) &= (partial bold(V))/(partial t) + (partial bold(V))/(partial x) (dif x)/(dif t) + (partial bold(V))/(partial y) (dif y)/(dif t) + (partial bold(V))/(partial z) (dif z)/(dif t)\
&= (partial bold(V))/(partial t) + (bold(V) dot nabla)bold(V) = ((partial )/(partial t) + bold(V) dot nabla)bold(V)\
"加速度" &= "局地加速度" + "平流加速度"
  $
]
#proof[
  $  bold(a) = dif /(dif t) bold(V) \(x,y,z,t\)
  $

微商算符
  #highlight[$ underbrace(dif/(dif t) (dot),"个体变化") = underbrace(partial/(partial t) (dot),"局地变化") + underbrace(bold(V)dot nabla(dot) #v(0.8cm),"平流变化") $对于任意矢量与标量都成立]
  ]

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
#theorem()[
  $
  dif bold(r) times bold(V) &= mat(delim: "|",i,j,k;u,v,w;dif x,dif y,dif z)= 0\ 
 &=> (dif x)/u =  (dif y)/u = (dif z)/u
  $
  t作为常数，积分时做常数处理
]
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

#definition("形变张量矩阵")[
  $ bold(A) = mat(delim: "[",A_11,A_12,A_13;A_21,A_22,A_23;A_31,A_32,A_33), bold(A) = (e_"ij")  i,j = 1,2,3
  $这是一个对称矩阵，其中每个元素表示流体的形变率
]

#definition("流体转动角速度")[
  $
  cases(
    omega_x = 1/2 ((partial w)/(partial y) - (partial v)/(partial z))\
    omega_y = 1/2 ((partial u)/(partial z) - (partial w)/(partial x))\
    omega_z = 1/2 ((partial v)/(partial x) - (partial u)/(partial y)) 
    )
    "或"
    bold(omega) = 1/2 nabla times bold(V)
  $
]

#theorem("亥姆霍兹速度分解定律")[
  流体微团运动可被分解为#highlight([平动速度$bold(V)_0$、转动速度$bold(V)_R$、形变引起的速度$bold(V)_D$])\
  $ bold(V)_0 = bold(V) + bold(V)_R + bold(V)_D \
  cases(
    bold(V)_R = bold(omega) times delta bold(r)\
    bold(V)_D = bold(omega) dot delta bold(r))
  $
]

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

#definition("速度环流")[
  $
  Gamma = integral.cont bold(V) dot dif bold(l)
  $标量，但是有向曲线隐含了方向

  表示沿闭合曲线流动趋势程度
]

#proof($
Gamma &= integral.cont bold(V) dot dif bold(l)\
  &= integral.double_sigma nabla times bold(V) dot dif bold(sigma) ("Stokes") \

lim_(sigma -> 0 ) [(integral.double nabla times bold(V) dot dif bold(sigma) )/(integral.double dif sigma) ] &= bold(nabla) times bold(V) dot bold(n)\
=>  bold(nabla) times bold(V) dot bold(n) &= lim_(sigma -> 0) Gamma\/sigma
$)


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
 
#definition("流体通量")[
  $ F = integral.double_sigma bold(V dot ) dif bold(sigma)  $
]
#proof(
  $ integral.double_sigma bold(V dot ) dif bold(sigma) 
  &= integral.triple_tau bold(nabla dot V) dif tau\
  lim_(tau -> 0) (integral.triple_tau bold(nabla dot V) dif tau\/ integral.triple_tau dif tau) &= bold(nabla dot V)\
  => 
  bold(nabla dot V) &= lim_(tau -> 0) F\/tau
   $
)

物理意义：度量流体的体积膨胀或者收缩的一个量
1. 场的观点：$bold(nabla dot V) >0$，流体净流出；$bold(nabla dot V) <0$，流体净流入。
2. 随体观点：$bold(nabla dot V) >0$，封闭曲面向外膨胀；$bold(nabla dot V) <0$，封闭曲面向外收缩。

== 形变率
1. 法形变
单位长度流体速度变化率

#definition("三个方向法形变率")[
  $ e_(x x) = (partial u)/(partial x),e_(y y) = (partial v)/(partial y),e_(z z) = (partial w)/(partial z) $
]

2. 切形变
流体质点夹角相向改变率
#definition()[
  $ 
cases(
e_23 =e_32 = 1/2 ((partial w)/(partial y) + (partial v)/(partial z))\
e_31 =e_13 = 1/2 ((partial w)/(partial x) + (partial u)/(partial z))\
e_12 =e_21 = 1/2 ((partial v)/(partial x) + (partial u)/(partial y))
)
$
]

3. 形变张量
#definition("")[
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
]

= 连续性方程
#highlight("质量守恒定律")
== 拉格朗日观点
对于质量为$delta m$的物体，$delta m = rho delta x delta y delta z$,由质量守恒定律（质量流动过程中不发生变化）

$ 1/(delta m) dif/(dif t) (delta m) = 
1/(rho delta tau) dif/(dif t)(rho delta tau) = 
1/rho (dif rho)/(dif t) + 1/(delta tau) dif/(dif t)(delta tau) = 0
 $

由散度定义： $ 1/(delta tau) dif/(dif t)(delta tau) = bold(nabla dot V) $

#theorem("Lagrange 观点下")[
  $ 
  (dif rho)/(dif t) + rho bold(nabla dot V)  = 0
  $
]

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

#theorem("Euler 观点下")[
  $
(partial rho)/(partial t) + bold(nabla)dot (rho bold(V)) = 0
  $
]

对于定常运动$(partial rho)/(partial t) = 0$,有：

#theorem()[
  $
  bold(nabla)dot (rho bold(V)) = 0
  $此时，流入=流出。
]

== 自由表面流体
#theorem("仅取x轴")[
  $ 
(partial h)/(partial t) + bold(nabla)dot (h bold(V)) &= 0,\
(partial h)/(partial t) + bold(V) dot bold(nabla)h + h bold(nabla dot V) &= 0
$自由表面高度表示连续方程
]


= 质量力、表面力、应力张量
$
"作用于流体块的力" cases("质量力"\
"表面力")
$

== 质量力 
#definition("长程力")[
  $
    bold(F) = lim_(delta m -> 0) (delta bold(F'))/(delta m)
  $ $bold(F)$为质量力分布密度，一般而言就是重力加速度$bold(g)$
]
作用于流体块的质量力$integral.triple_(tau) rho bold(F) dif tau$

== 表面力
#definition("短程力")[
  $ 
  bold(p) = lim_(delta sigma -> 0)(delta p')/(delta sigma)
   $
   注意单位$N\/m^2$
]
流体周围受到的表面力$integral.double_(sigma) bold(p) delta sigma$

- 质量力是时间、空间的函数
- 表面力还随着受力面元的变化

== 应力张量
#theorem("当"+$delta m -> 0 $)[
  $
    bold(p)_n delta bold(sigma)_n = 
    bold(p)_x delta bold(sigma)_x +
    bold(p)_y delta bold(sigma)_y +
    bold(p)_z delta bold(sigma)_z 
  $
单位化法向量：$n_x^2 +n_y^2 + n_z^2 = 1$
$
  bold(p)_n = n_x bold(p)_x + n_y bold(p)_y + n_z bold(p)_z
$
]
引入应力张量：
#definition("应力张量")[
  $
    bold(PP) = 
    mat(delim: "[",
    p_(x x),p_(x y),p_(x z);
    p_(y x),p_(y y),p_(y z);
    p_(z x),p_(z y),p_(z z))
  $
有：
$
  bold(p)_n = bold(n)dot PP
$
]

$bold(p)_n$为应力矢量，表示方法：
1. 垂直坐标 $bold(p)_n = bold(i)p_(n x)+ bold(j)p_(n y)+bold(k)p_(n z)$
2. 自然坐标 $bold(p)_n = p_(n n)bold(n) + p_(n tau) bold(tau)$
法应力$p_(n n) = bold(p)_n dot bold(n)$,同理切应力

牛顿黏性假设：相邻流体层之间切应力$tau_(x x)$与剪切形变$(dif u)/(dif z)$成正比：

$ tau_(x x) = mu  (dif u)/(dif z) $

#definition("广义牛顿假设")[
  $
  PP = 2 mu AA -(p + 2/3 mu bold(nabla dot V))II,
  II = 
  mat(delim: "[",
  1,0,0;
  0,1,0;
  0,0,1)
  $应力张量和形变张量是线性关系，满足假设就是牛顿流体
]
- 对于不可压缩流体：$PP = 2mu AA - p II$
- 对于理想不可压缩流体(黏性很弱,$mu$很小)： $PP = - p II$,此时流体应力为$bold(p)_n = PP bold(dot n) = -p bold(n)$

黏性应力$bold(tau)_n$, 黏性应力张量$bold(Tau)$ 二者关系：$bold(Tau)dot bold(n) = bold(tau)_n$

#definition()[
  $
 bold(p)_n &= -p bold(n) + bold(tau)_n,\
  bold(tau)_n &= 2mu AA dot bold(n) - 2/3 mu (bold(nabla dot V))II dot bold(n)
  $
]
= 运动方程

== 流体的运动方程（动量守恒）

单位质量流体运动方程
#definition("牛顿第二定律")[
  $
    (dif bold(V))/(dif t) &= bold(F) + 1/rho ((partial bold(p)_x)/(partial x)+(partial bold(p)_y)/(partial y)+(partial bold(p)_z)/(partial z))\

    (dif bold(V))/(dif t) &= bold(F) + 1/rho bold(nabla dot PP)
  $
其中，$
bold(nabla dot PP) = (partial/(partial x) partial/(partial y) partial/(partial z))
mat(  
  p_(x x),p_(x y),p_(x z);
  p_(y x),p_(y y),p_(y z);
  p_(z x),p_(z y),p_(z z))
$
]

#theorem()[
  体积$tau$的流体动量随时间变化率 = 质量力 + 表面力
  $
    dif/(dif t) integral.triple_tau rho bold(V) dif tau =
    integral.triple_tau rho bold(F) dif tau +
    integral.double_sigma bold(p)_n dif sigma
  $
]

== Navier-Stokes 方程
很复杂不会推
#theorem("符合牛顿黏性假设")[
  $
    (dif bold(V))/(dif t) &= bold(F) -1/rho bold(nabla)p + 1/3 mu/rho bold(nabla (nabla dot V)) + mu/rho nabla^2bold(V)
  $
]
1. 对于不可压缩流体($bold(nabla dot V) = 0$)，定义$mu\/rho = nu$为黏性系数
$
      (dif bold(V))/(dif t) &= bold(F) -1/rho bold(nabla)p  + nu nabla^2bold(V)
$
$nu nabla^2bold(V)$ 称为黏性力

2. 对于理想气体($nu = 0$) 
$
  (dif bold(V))/(dif t) &= bold(F) -1/rho bold(nabla)p  
$

#definition("静力方程")[
  流体静止，作用于流体的力达到平衡
  $
    arrow(0) = bold(F) - 1/rho bold(nabla)p
  $
]

= 能量方程
#theorem("能量守恒定律")[
  $
    dif/(dif t) integral.triple_tau rho(c_v T + V^2/2)dif tau= 
    underbrace(integral.triple_tau rho(bold(nabla dot V))dif tau,"质量力做功") +
    underbrace(integral.double_sigma (bold(p_n dot V))dif sigma,"表面力做功") +
    underbrace(dif/(dif t) integral.triple_tau rho q dif tau,"热流量")
  $
]

#definition("伯努利方程")[
1. 理想流体$mu = 0$
2. 质量力为有势力（重力作用下）
3. 定常运动 $dif \/dif t = 0$
4. 不可压缩 $nabla dot arrow(V) = 0$

又3,4 $=> rho = "constant"$
$
  V^2/2 + g z + p/rho = "常数"
$
]
= 流体力学基本方程组
== 基本方程组
#theorem()[
  $
    cases(
      (partial rho)/(partial t) + bold(nabla dot) (rho bold(V)) = 0 &"连续性方程" \
      (dif bold(V))/(dif t) = bold(F) + 1/rho bold(nabla dot PP) &"动量守恒"\
      dif/(dif t) (c_v T + V^2/2) = bold(F dot V)+ 1/rho bold(nabla dot (PP dot V)) + (dif q)/(dif t) &"能量守恒"
    )
  $
]

== 简单条件下N-S方程求解
流体在无界平板内，x轴做定常直线平面运动，即$u != 0, v=w=0 $
流体在$x O z$平面运动，$(partial u)/(partial y) = 0$;

作用于流体块的质量力只有重力$F_x = F_y = 0, F_z = g$;

流体不可压缩，$(partial u)/(partial z) = 0, => u = u(z) $

流体定常:
$ (partial u)/(partial t) = 0 =>  (dif u)/(dif t) = (dif v)/(dif t) = (dif w)/(dif t) = 0 $

简化方程:
#theorem()[
  $
    cases(
      0 &= -1/rho (partial p)/(partial x) + mu/rho ((partial^2 u)/(partial z^2))\
      0 &= -1/rho (partial p)/(partial y)\
      0 &= -g - 1/rho (partial p)/(partial z)
    )
  $
]
得到解：
$
  u = 1/mu (partial p)/(partial x) z^2/2 + A z + B
$

= 实验流体力学
#figure($
          "原型" <--_("模拟") "模型"
        $)
== 相似概念
1. 几何相似
$
  "模型"/"原型" = a_2/a_1 = b_2/b_1 = C_l
$
2. 运动相似
$
u(P_2)/u(P_1) = v(P_2)/v(P_1) = w(P_2)/w(P_1) = C_v
$
3. 动力相似
$
  F_(mu,2)/F_(mu,1) = F_(g,2)/F_(g,1) = F_(p,2)/F_(p,1) = C_F
$
== 动力相似判据
z方向#highlight("原型")运动方程:
$ 
  rho_1 (partial w_1)/(partial t_1)
   + rho_1 (
    u_1 (partial w_1)/(partial x_1) + 
    v_1 (partial w_1)/(partial y_1) + 
    w_1 (partial w_1)/(partial z_1) 
   )
   = 
   - rho_1 g_1 -
  (partial p_1)/(partial z_1) +
   mu_1 (
    (partial^2 w_1)/(partial x_1^2) +
    (partial^2 w_1)/(partial y_1^2) +
    (partial^2 w_1)/(partial z_1^2)
    )
 $
z方向#highlight("模型")运动方程:
$ 
  rho_2 (partial w_2)/(partial t_2)
   + rho_2 (
    u_2 (partial w_2)/(partial x_2) + 
    v_2 (partial w_2)/(partial y_2) + 
    w_2 (partial w_2)/(partial z_2) 
   )
   = 
   - rho_2 g_2 -
  (partial p_2)/(partial z_2) +
   mu_2 (
    (partial^2 w_2)/(partial x_2^2) +
    (partial^2 w_2)/(partial y_2^2) +
    (partial^2 w_2)/(partial z_2^2)
    )
 $
实验流场满足几何相似和运动相似：
$
  "模型"/"原型" &= a_2/a_1 = b_2/b_1 = C_l\
u(P_2)/u(P_1) &= v(P_2)/v(P_1) = w(P_2)/w(P_1) = C_v\
rho_2/rho_1 = C_rho = 1, g_2/g_2 &= C_g = 1, mu_2/mu_1 = C_mu =1
$

还要满足时间相似$t_2/t_1  = C_t$

代入方程

#theorem()[
  $
    (C_rho C_v)/C_t = (C_rho C_v^2)/C_t = C_rho C_g = C_p/C_l = (C_p C_v )/C_l^2
  $
]
各项除以$(C_rho C_v^2)/C_t$ 再代入方程

#definition("四个相似判据")[
  $
    cases(
      l/(t V) eq.triple "Sr" &"Strouhal"\
      V^2/(g l) eq.triple "Fr" &"Froude"\
      (Delta p)/(rho V^2) eq.triple "Eu" &"Euler"\
      (V l)/nu eq.triple "Re" &"Reynolds"
    )
  $
]

== 特征无量纲数
1. 雷诺数
#definition[
  $
    "Re" = "特征惯性力"/"特征黏性力" = (U L)/nu
  $
]
2. 弗劳德数

#definition[
  $
    "Fr" = "特征惯性力"/"特征重力" = U^2/(g L)
  $
]
3. 欧拉数

#definition[
  $
    "Eu" = "特征压力梯度力"/"特征惯性力" = (Delta p)/(rho_0 U^2)
  $
]
== 量纲分析法
1. 瑞利法
$
  a = k a_1^k _1 a_2^k _2 a_3^k _3 ... a_n^k _n\
$
$  "假设基本量纲为:" [L] [T] [M]$
$
  [a] = [L]^(r_1) [T]^(r_2) [M]^(r_3)\
  [a_1] = [L]^(s_1) [T]^(s_2) [M]^(s_3)\
  ...\
  [a_n] = [L]^(s_n) [T]^(s_n) [M]^(s_n)\
$
由于量纲齐次原理，等号两边的量纲相等

2. $pi$定理
#example[
螺旋桨推进器推进力$F$与螺旋桨直径$d$、推进器转速$n$、流体密度$rho$、流体粘度$mu$、推进速度$V$有关,用$pi$定理证明推力表达式 $F = rho d^2 V^2 phi(mu/(rho d V), (n d)/V)$
]
以$rho, d, V$为基本量
$
  cases(
  pi &= F/(rho d^2 V^2)\
  pi_1 &= mu/(rho d V)\
  pi_2 &= (n d)/V
  )
$
根据$pi$定理得到关系$pi = phi(pi_1,pi_2)$,即$F/(rho d^2 V^2) =  phi(mu/(rho d V), (n d)/V)$
$
  F = rho d^2 V^2 phi(mu/(rho d V), (n d)/V)
$
= 流体涡旋动力学
== 流体有旋、无旋
至少在一个区域内，流体速度场的旋度$nabla times V != 0$不为零，称为有旋流体；
若在整个区域内，流体速度场的旋度为零，称为无旋流体。
== 速度势函数
对于任意无旋运动，恒有：$nabla times nabla phi eq.triple 0$
#definition("标量")[
  $
  bold(V) = - nabla phi "或" bold(V) = - bold("grad") phi\
  "直角坐标系下" 
    u = - (partial phi)/(partial x),
    v = - (partial phi)/(partial y),
    w = - (partial phi)/(partial z)
  $
]
流速矢与等势面垂直，由高位势到低位势

用速度势函数表示征流体散度：
$
  D = (partial u)/(partial x) + (partial v)/(partial y) + (partial w)/(partial z)
$
代入速度势定义：
$
  nabla^2 phi = - D, "泊松方程"
$
其中，$nabla^2 = (partial^2)/(partial x^2) + (partial^2)/(partial y^2) + (partial^2)/(partial z^2)$为拉普拉斯算子 


== 流函数
满足二维运动，无辐散流$nabla dot bold(V) =0$,即：
$
  cases(
    w = 0\
    u = u(x,y,t) "," v = v(x,y,t)\
    (partial u)/(partial x) + (partial v)/(partial y) = 0
  )
$
其流线方程为：
$
  (dif x)/(u) = (dif y)/(v) , "或" 
  v dif x - u dif y = 0
$
由格林公式，式可以写成某一个函数的全微分：
$
  dif psi = v dif x - u dif y
$
#definition("标量")[
  $
  bold(V) = k times nabla psi\
  "直角坐标系下" 
    u = -(partial psi)/(partial y),
    v = (partial psi)/(partial x),
  $
]
流速矢方向与等流函数线平行（由流线推导）

1. 用于表示流体体积通量：取有向曲线$A B$，顺着有向流体自右向左流动，流体体积通量为：
$
 Q = integral_A^B bold(V dot n) dot dif bold(l) = integral_A^B V_n dif l\
 =>Q =  integral_A^B nabla psi dot dif bold(l) = psi_B - psi_A
$

2.用于表示流体涡度：
$
  zeta_z = (partial v)/(partial x) - (partial u)/(partial y) = nabla times bold(V)\

  zeta_z = nabla times nabla psi = nabla^2 psi
$

== 一般二维流动
一般二维流动，即不满足无旋条件
$
  zeta_z =  (partial v)/(partial x) - (partial u)/(partial y) != 0
$
也不满足无辐散条件：
$
  D = (partial u)/(partial x) + (partial v)/(partial y) != 0
$
#definition("流速矢分解")[
  $
    bold(V) = bold(V)_psi + bold(V)_phi
  $
$bold(V)_psi$为无辐散涡旋流，$bold(V)_phi$为无旋辐散流，其中
$
  cases(
    bold(nabla times V_psi) = bold(nabla times V) "," bold(nabla dot V_psi) = 0\
    bold(nabla times V_phi) = 0 "," bold(nabla dot V_phi) != 0
  )
$
]

== 环流定理
$
  Gamma = integral.cont bold(V) dot dif bold(l) 
$
$Gamma$为标量，当$Gamma > 0$,流体顺$bold(l)$运动趋势，设$bold(l)$为逆时针方向，对应气旋环流；$Gamma < 0$，流体逆$bold(l)$运动趋势，对应反气旋环流。
$
  Gamma eq.triple integral.cont bold(V dot) dif bold(l) = 
  integral.double bold(n dot nabla) times bold(V) dot dif bold(sigma) = 
  integral.double zeta_n bold(sigma) 
$

#theorem[
  $
    zeta_n = (dif Gamma)/(dif sigma)
  $
]

#theorem("环流加速度 = 加速度环流")[
  $
  underbrace(
    (dif Gamma)/(dif t),
    "环流加速度")
  = dif/(dif t) integral.cont bold(V) dot dif bold(l) = 
  underbrace(
    integral.cont (dif bold(V))/(dif t) dot dif bold(l),
    "加速度环流") 
  $
]

== 开尔文定理
1. 理想流体 $mu = 0$
2. 质量力有势 $bold(F) = - bold(nabla Phi)$
3. 正压流体 $rho = f(p)$
$
  (dif Gamma)/(dif t) = 
   dif/(dif t) integral.cont bold(V) dot dif bold(l) = 
   - integral.cont_t delta Phi - integral.cont_l delta F(p) = 0\
   "或" Gamma = "常数"
$
对于理想正压流体，在有势力作用下，速度环流不随时间变化而变化。

== 环流的起源
由N-S 方程推导环流方程：
$
  (dif bold(V))/(dif t) = bold(F) - 1/rho bold(nabla p) + nu nabla^2 bold(V) + nu/3 nabla (nabla dot bold(V))
$

#theorem("矢量计算法则")[
  $
    nabla^2 bold(V) = nabla (nabla dot bold(V)) - nabla times (nabla times bold(V)) = nabla D - nabla times zeta
  $
]
又
$
  (4 nu)/3 integral.cont nabla D dot delta bold(l) = (4 nu)/3 integral.cont delta D = 0
$

#theorem("环流变化")[
  $
  (dif Gamma)/(dif t) = 
  underbrace(integral.cont bold(F) dot delta bold(l) ,"非有势力作用")
  - underbrace( integral.cont 1/rho nabla p dot delta bold(l) ,"压力-密度力")
  + underbrace( integral.cont nabla times zeta dot delta bold(l),"黏性涡度扩散")
  $
]

#highlight("考点")：
海陆风、山谷风画图解释

水平方向引起变化<< 垂直方向引起变化

== 涡度方程
$
  (dif bold(V))/(dif t) = (partial bold(V))/(partial t) + (bold(V) dot nabla) bold(V) 
$
还是N-S方程,
$
  (bold(V)dot nabla)bold(V) = nabla(v^2/2) - bold(V) times (nabla times bold(V))
$

#theorem("涡度方程")[
  $
  (dif bold(zeta))/(dif t) = 
  underbrace(1/rho^2 nabla rho times nabla p,"压力-密度力")
  - underbrace(bold(zeta)(nabla dot bold(V)),"散度项")
  + underbrace((bold(zeta) dot nabla) bold(V),"扭曲项")
  + underbrace(nu nabla^2 bold(zeta),"黏性扩散")
  $
  没有考虑非有势力（科氏力）作用
]
- 压力-密度力：力管项/斜压项
- 散度项：散度相关，滑冰表演收手伸手
- 扭曲项：不改变涡旋强度，使涡度矢在三个方向重新分配
- 黏性扩散：使涡度矢分布趋于均匀
