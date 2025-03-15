#import "../book.typ": book-page
#import "@preview/dvdtyp:1.0.1": *
#show: book-page.with(title: "天气学原理")

#show: dvdtyp.with(
  title: "天气学原理",
  author: "Otto Deng"
)
#outline()



= 大气运动基本特征
研究方法：
1. 天气图
2. 数值天气预报
3. 卫星、雷达

#highlight[
真实力：
  1. 气压梯度力
  2. 地心引力
  3. 摩擦力
视势力：
  1. 惯性离心力
  2. 地转偏向力
  3. 重力

]
=== 旋转坐标系的速度与加速度

  $
  arrow(F) = m arrow(a)
  $

- 参照系
  - 惯性参照系
  - 非惯性参考系：牛顿第二定律不适用

惯性坐标系
  $
    sum_i F_i = m (dif V_a)/(dif t)
  $


旋转坐标系的速度：
$
  delta_a arrow(r) = delta arrow(r) + delta_e arrow(r) 
$

#h(5cm) $delta t -> 0:$

$
  arrow(V)_a = arrow(V) + arrow(Omega) times arrow(r)
$

  $
  cases(
    (dif_a arrow(r))/(dif t) &= (dif arrow(r))/(dif t) + (dif_e arrow(r))/(dif t)\
    (dif_a arrow(r))/(dif t) &= (dif arrow(r))/(dif t) + arrow(Omega) times arrow(r)
  )
  $


对于任意矢量
  $
    (dif_a)/(dif t) = (dif)/(dif t) + arrow(Omega) times
  $


加速度：
旋转坐标系的加速度
  $
    arrow(a)_a = arrow(a) + 2 arrow(Omega) times arrow(V) + arrow(Omega) times (arrow(Omega) times arrow(r))
  $
#theorem[
$
  arrow(Omega) times (arrow(Omega) times arrow(r)) 
  &= arrow(Omega) times (arrow(Omega) times arrow(R))\
  &=  - Omega^2 arrow(R)
$]


=== 真实力
- 气压梯度力
气压总是随着高度增加而降低
1. 地面(1000 mb)
2. #highlight[12km (100 mb)]
3. 50km (1 mb)

在$x$方向上周围大气作用于体积元上的净压力：
$ p delta y delta z - 
(p + (partial p)/(partial x) delta x) delta y delta z =
-  (partial p)/(partial x) delta x delta y delta z$

于是作用于体积元上的总净压力为：
#definition[
$ 
 -  
 ((partial p)/(partial x) arrow(i) + 
 (partial p)/(partial y) arrow(j) +
 (partial p)/(partial z) arrow(k))
  delta x delta y delta z =
- Delta p delta x delta y delta z
$

  $
    arrow(G) = - 1/rho gradient p
  $
]

- 地心引力
$M$对$m$引力$bold(F)_g $大小：
$
  bold(F)_g = - (G M m)/(r^2) (bold(r)/r)
$
#definition[
$
  bold(g)^* = - (G M)/((a+z)^2) (bold(r)/r) = 
  - (G M)/(a^2) dot 1/(1 + z\/a)^2 (bold(r)/r) = 
  bold(g)^*_0 /(1 + z\/a)^2
$
]

- 摩擦力
假设$x$方向的风分量$u>0$,并且$u$随着高度增加而增加，即$(partial u)/(partial z) > 0$，$(partial^2 u)/(partial z^2) = 0$

$
  f_(z x) = mu A (partial u)/(partial z)
$
$A$为面积，$mu$为粘滞系数

$
  tau_(z x) eq.triple mu  (partial u)/(partial z)
$切应力

当$(partial u)/(partial z) > 0$，$(partial^2 u)/(partial z^2) > 0$时

$x$方向上的粘滞力：
$(tau_(z x))_B delta x delta y - 
(tau_(z x))_A delta x delta y = 
delta tau_(z x) delta x delta y$

当$delta x, delta y, delta z -> 0$净粘滞力为：
$
  F_(z x) =  1/rho (partial tau_(z x))/(partial z) 
$或
$
  F_(z x) = 1/rho (partial)/(partial z) (mu (partial u)/(partial z))
$
#definition[
$
  F_z = nu ((partial^2 u)/(partial x^2)+(partial^2 v)/(partial y^2)+(partial^2 w)/(partial z^2))
$
]
右端前两项远小于第三项，故可近似为：

$
  bold(F) = nu (partial^2 bold(V))/(partial z^2)
$
=== 视势力
- 惯性离心力
$
  (dif bold(V))/(dif t) = abs(bold(V)) (dif theta)/(dif t) (bold(R)/R)
$

因为$(dif theta)/(dif t) = Omega, abs(arrow(V)) = Omega R$

$
  (dif bold(V))/(dif t) = Omega^2  bold(R)
$

#definition("惯性离心力")[
$
  bold(C) = Omega^2 bold(R)
$
$Omega = 2pi \/ 24h = 7.29 times 10 ^(-5) s^(-1)$]

- 地转偏向力
自转角速度$bold(Omega)$在$x,y,z$上分量：
#definition[
$
  cases(
    Omega_x = 0\
    Omega_y = Omega cos phi\
    Omega_z = Omega sin phi
  )
$
]
- 重力
#definition[
$
  bold(g) eq.triple bold(g)^* + Omega^2 bold(R)
$]
== 控制大气的基本规律
欧拉参考系、拉格朗日参考系（见流体力学）

全局导数与局地导数的关系：
$
  underbrace((dif )/(dif t),"个别变化") = 
  underbrace((partial)/(partial t),"局地变化") + 
  underbrace(arrow(V) dot gradient #v(0.7cm),"平流变化")
$

对温度变化率的讨论:
$
  (partial T)/(partial t) = (dif T)/(dif t) - arrow(V) dot gradient T\
  (partial T)/(partial t) = 
  (dif T)/(dif t) - 
  underbrace(arrow(V) dot gradient_h T #v(0.7cm),"平流变化") - 
  underbrace(w (partial T)/(partial z),"对流变化")
$


当风由冷风区吹向暖风区时，平流项为负值，为冷平流，使局地温度降低；当风由暖风区吹向冷风区时，平流项为正值，为暖平流，使局地温度升高。

对温度平流变化的讨论：$- arrow(V) dot gradient_h T = abs(arrow(V)) abs(gradient_h T) cos theta$ 

== 旋转坐标系的大气运动方程
#definition[
$
  (dif arrow(V))/(dif t) = - 1/rho gradient p - 2 arrow(Omega) times arrow(V) + arrow(g) + arrow(F)
$
]
=== 球坐标系中的分量方程
$
  P = P(lambda,phi,r)
$
$lambda$为经度，$phi$为纬度，$r$为半径

对于$arrow(V) = u arrow(i) + v arrow(j) + w arrow(k)$，有：
$
  cases(
    u = r cos phi (dif lambda)/(dif t)\
    v = r (dif phi)/(dif t)\
    w = (dif r)/(dif t)
  )
$

=== 连续方程
#theorem("质量守恒定律")[
$
(partial rho)/(partial t) + 
underbrace(gradient dot (rho arrow(V)),"质量散度") = 0
$

$
  1/rho (dif rho)/(dif t) +
 underbrace(gradient dot arrow(V),"速度散度") = 0
$
]

对于#highlight[不可压缩]流体,$(dif rho)/(dif t) =0$

$
  gradient_h dot arrow(V) = -(partial w)/(partial z)
$
故可以用水平风速积分求得垂直对流速度$w$

=== 热力学能量方程
#theorem[
$
  c_v (dif T)/(dif t) + p (dif alpha)/(dif t) = Q
$]

== 大尺度运动系统控制方程

在#highlight[中纬度]天气尺度气旋，地面气压在$2000\km$的#highlight[水平距离]上可以变化$20\h\P\a$
$
  ((partial p)/(partial x), (partial p)/(partial y) ) approx
  (delta p)/(delta L) = 
  (20\h\P\a)/(2000\km) = 10^(-5)\h\P\a\/\m
$


=== 运动方程
水平方向尺度分析：
#table(
  columns: 2,
  align: center,
  inset: 1cm,
  [$x$分量],
  [$(dif u)/(dif t) = - 1/rho (partial p)/(partial x) +  2Omega v cos phi - 2Omega w cos phi + F_x$],
  [$y$分量],
  [$(dif v)/(dif t) = - 1/rho (partial p)/(partial y) - 2Omega u cos phi + F_y$],
  [各项尺度],
  [$V^2/L #h(5pt) (delta P)/(rho L) #h(5pt) f_0 V #h(5pt) f_0 W #h(5pt) (nu V)/(H^2)$ ],
  [数量级],
  [$10^(-4) #h(5pt) 10^(-3) #h(5pt) 10^(-3) #h(5pt) 10^(-6) #h(5pt) 10^(-12)$]

)

垂直方向尺度分析：
#table(
  columns: 2,
  align: center,
  inset: 1cm,
  [$z$分量],
  [$(dif w)/(dif t) = - 1/rho (partial p)/(partial z) + 2Omega u cos phi - g + F_z$],
  [各项尺度],
  [$(V W)/L #h(5pt) (P_0)/(rho H) #h(5pt) g #h(5pt) (nu W)/(H^2)$ ],
  [数量级],
  [$10^(-7) #h(5pt) 10 #h(5pt) 10^(-3) #h(5pt) 10 #h(5pt) 10^(-15)$]
)
- 零级简化：只保留方程中数量级最大的项
- 一级简化：保留最大项和次大项

#theorem("零级简化")[
$
  cases(
  - 1/rho (partial p)/(partial x) +  f v= 0\
  - 1/rho (partial p)/(partial y) - f u =0
  )
$]

#theorem("一级简化")[
$
  cases(
    (dif u)/(dif t) = - 1/rho (partial p)/(partial x) +  f v \
    (dif v)/(dif t) = - 1/rho (partial p)/(partial y) - f u 
  )
$
其中$f = 2 Omega sin phi$称为地转参数
]
垂直方向（准定常）：
$
  0 = - 1/rho (partial p)/(partial z) - g
$

=== 连续方程
#highlight[准水平无辐散]

#theorem("连续方程零级简化")[
$
  &(partial u)/(partial x) + 
  (partial v)/(partial y) + 
  (partial w)/(partial z) + 
  w (partial ln rho)/(partial z) = 0\
"or,"\
  &(partial u)/(partial x) +
  (partial v)/(partial y) +
 
  1/rho (partial rho w)/(partial z) 
  
  = 0
$
]
=== 热力学能量方程
$
  p alpha = R T => p (dif alpha)/(dif t) + alpha (dif p)/(dif t)= R (dif T)/(dif t)\
  c_p = c_v + R
$
#theorem("零级简化后")[
$
  (partial T)/(partial t) + u (partial T)/(partial x) + v (partial T)/(partial y) = 1/c_p Q
$]

在短期且无凝结过程的研究中，非绝热作用很小$Q$可以略去。这样就变成了
$
  (partial T)/(partial t) = - (u (partial T)/(partial x) + v (partial T)/(partial y) )
$
#theorem("一级简化")[
  $
  (partial T)/(partial t) = 
  - (u (partial T)/(partial x) + v (partial T)/(partial y))
  +underbrace(w (gamma_d -gamma),"垂直运动引起的绝热变化")
  + 1/c_p Q
$
$gamma_d = - dif T\/dif z = g\/ C_p approx 10 degree C \/ \k\m, gamma = - partial T\/partial z approx 6.5 degree C\/ \k\m$
]


- 稳定大气中$gamma_d -gamma >0$
1. 上升运动，$w>0, -w(gamma_d-gamma)<0,partial T\/partial t <-$,绝热冷却
2. 下降运动，$w<0, -w(gamma_d-gamma)>0,partial T\/partial t >0$,绝热增温

- 不稳定大气中$gamma_d -gamma <0$
1. 上升运动，$w>0, -w(gamma_d-gamma)>0,partial T\/partial t >0$,绝热增温
2. 下降运动，$w<0, -w(gamma_d-gamma)<0,partial T\/partial t <-$,绝热冷却

== $p$坐标系中的基本方程

- 位势高度：又叫做重力位势，单位质量的物体从海平面升高$z$的高度所做的功

$
  Phi = integral_(z_0)^z g dif z = g z
$
#definition("位势高度")[
  $
    H = Phi/9.8 = 1/9.8 integral_0^z g dif z
  $
]
等位势面是水平面

=== $p$坐标系与$z$坐标系的关系
1. 大尺度运动满足静力平衡关系：$(partial p)/(partial z) = -rho g$
2. 气压随高度严格单调减少，气压与高度有一一对应关系

$
  cases(
    F = F(x,y,p,t)\
    p = p(x,y,z,t)
  )
$
根据复合函数求导：
$
  cases(
    ((partial F)/(partial x))_z = ((partial F)/(partial x))_p + (partial F)/(partial p) ((partial p)/(partial x))_z\
    ((partial F)/(partial y))_z = ((partial F)/(partial y))_p + (partial F)/(partial p) ((partial p)/(partial y))_z\
    (partial F)/(partial z) = (partial F)/(partial p) (partial p)/(partial z)\
    ((partial F)/(partial x))_z = ((partial F)/(partial z))_p + (partial F)/(partial p) ((partial p)/(partial x))_z
  )
$

- 由于空间导数的转换关系，我们不妨令$F = z$,有：$((partial z)/(partial x))_z =((partial z)/(partial y))_z=0$
- 由静力平衡：$(partial p)/(partial z) = -rho g$


  $
  cases(
    (partial Phi)/(partial x) = - 1/rho\
    - 1/rho ((partial p)/(partial x))_z = -g ((partial z)/(partial x))_p = -((partial Phi)/(partial x))_p \
    - 1/rho ((partial p)/(partial y))_z = -g ((partial z)/(partial y))_p = -((partial Phi)/(partial y))_p
  )
  $

#theorem[
  $
    - 1/rho gradient_h p = - gradient_p Phi = - 9.8 gradient_p H
  $
]

- 时间导数的转换关系
$p$坐标系与$z$坐标系的全导数相同，即
#definition[
$
  underbrace(((dif F)/(dif t))_z,"空间固定点") = underbrace(((dif F)/(dif t))_p,"等压面固定点")
$
]

$
  ((partial F)/(partial t))_z = ((partial F)/(partial t))_p + (partial F)/(partial p) ((partial p)/(partial t))_z
$
let $F = z$,
$
  ((partial z)/(partial t))_z = ((partial z)/(partial t))_p + (partial z)/(partial p) ((partial p)/(partial t))_z
$

#theorem[
  $
    g ((partial z)/(partial t))_p =  1/rho ((partial p)/(partial t))_z\
    ((partial Phi)/(partial t))_p =  1/rho ((partial p)/(partial t))_z
  $
]

=== 一级简化连续方程
#theorem("一级简化连续方程")[
  $
    (partial omega)/(partial p) + ((partial u)/(partial x))_p + ((partial v)/(partial y))_p = 0\
    omega = (dif p)/(dif t) = 
    ((partial p)/(partial t))_z + 
    u ((partial p)/(partial x))_z + 
    v ((partial p)/(partial y))_z + 
    w (partial p)/(partial z)
  $
]
$omega approx w (partial p)/(partial z) = - rho g w$
由于气压随着高度降低
- 上升运动时，$w>0, omega < 0$ 
- 下降运动时，$w<0, omega > 0$

=== 运动方程
#theorem("一级简化运动方程")[
  $
    cases(
      (dif u)/(dif t) -f v = - ((partial Phi)/(partial x))_p\
      (dif v)/(dif t) + f u = - ((partial Phi)/(partial y))_p\
      (dif omega)/(dif t) = - 1/rho
    )
  $
]

=== 热力学能量方程
#theorem[
  $
    ((partial T)/(partial t))_p + bold(V) dot gradient_p T - omega (Gamma_d - Gamma)= 1/c_p Q
  $
$Gamma = gamma\/ rho g, Gamma_d = gamma_d \/ rho g$
]

== 风场和气压场的关系

=== 地转风
#definition("地转风")[
水平地转偏向力和水平气压梯度力平衡条件下，空气沿着平行等压线的#highlight[水平直线]运动。
]
$f = 2 Omega sin phi$
“z”坐标系绘制地面图上的等压线；“p”坐标系绘制高空图上的等高线。

#definition("由“z”坐标系中")[
  $
    cases(
      0 = - 1/rho (partial p)/(partial x) + f v\
      0 = - 1/rho (partial p)/(partial y) - f u
    )
    ==>
    cases(
      u_g = - 1/(f rho) (partial p)/(partial y)\
      v_g = 1/(f rho) (partial p)/(partial x)
    )
  $
  $bold(V)_g = - 1/(rho g) gradient_h p times bold(k)$
]


#definition("在“p”坐标系中")[
  $
    cases(
      u_g = - 1/(f rho) (partial Phi)/(partial y) = g/f (partial z)/(partial y)\
      v_g = 1/(f rho) (partial Phi)/(partial x) = g/f (partial z)/(partial x)
    )
  $
  $bold(V)_g = -1/f gradient Phi times bold(k) = - g/f gradient z times bold(k)$
]
地转平衡成立条件：
- 在#highlight[中纬度自由大气]的#highlight[大尺度]系统中，当气流呈#highlight[水平直线运动且无摩擦]时，地转平衡严格成立。

地转风平行于等压线。
北半球背风而立，低压在左，高压在右；低压中心逆时针（气旋），高压中心顺时针（反气旋）。

=== 梯度风

- 梯度风平衡：#highlight[ 水平气压梯度力、地转偏向力和惯性离心力]平衡时的大气运动形式。此时，大气作匀速曲线运动。

水平运动方程一级简化:
#definition("梯度风")[
  $
    (dif_h bold(V)_h)/(dif t) = - 1/rho gradient_h p - f bold(k) times bold(V)_h
    = bold(G + A)
  $
  气压梯度力G 地转偏向力A 惯性离心力C

仅仅考虑运动方向的改变时，向心加速度= $bold(G +A),bold(G+A+)$惯性离心力= 0
]

切换到自然坐标系中：（气旋式运动$R_T>0$,反气旋式运动$R_T<0$）
$
  (dif bold(V))/(dif t) = (dif V)/(dif t) bold(s) +V^2/R_T bold(n)
$

代入自然坐标系：
$
  cases(
    (dif V)/(dif t) = - 1/rho (partial p)/(partial s) &\, "切向方程"\
    V^2/R_T = - 1/rho (partial p)/(partial n) - f V &\, "法向方程"
  )
$
$
  bold(G) &= -1/rho (partial p)/(partial s) bold(s) - 1/rho (partial p)/(partial n) bold(n)\
  bold(A) &= f bold(V) times bold(k) = f V bold(s) times bold(k) = - f V bold(n)
$

当坐标系随地球一起转动时，向心加速度消失，引入惯性离心力

气压梯度力、地转偏向力、惯性离心力平衡
 
讨论反气旋环流：大尺度运动系统中，等压线曲率较小，$R_T$较大，$C$较小 
$
bold(A>C)
$
反气旋性环流中心必然是高压环流中心

#theorem("求解梯度风风速")[
  $
    V_f= - R_T/2 f + R_T/2 sqrt(f^2 - 4/(rho R_T) (partial p)/(partial s))
  $
]
- 气旋性环流中，$R_T>0,partial p\/ partial n<0$。因此$partial p\/ partial n -> oo, V_f -> oo$
#highlight[气旋性环流中，风速和气压梯度可任意地大。]

- 反气旋性环流中，$R_T<0,partial p\/ partial n<0$.必须有
$
  abs((partial p)/(partial s)) <=  (rho f^2 abs(R_T))/4, (V_f)_(max) = abs(R_T )/2 f
$
#highlight[反气旋性环流中，风速和气压梯度不可无限增大]。曲率越大（$R_T$越小），气压梯度和梯度风越小，即越接近反
气旋中心，两者越小。

#theorem("地转风和梯度风的关系")[
  $
    V_g/V_f = 1 + V_f/(f R_T)
  $
]
气压梯度相同，反气旋的梯度风速 > 气旋的梯度风速.

=== 热成风
地转风随高度的改变量，即上下两层地转风的差。
#definition("热成风")[
  $
    cases(
      u_g = - 1/(f ) (partial Phi)/(partial y) \
      v_g = 1/(f ) (partial Phi)/(partial x) 
    )
  $
  地转风与等压面上的位势梯度成正比，位势梯度即等压面的坡度
]

两层等压面之间厚度：
$
  integral_(z_0)^(z_1) dif z 
  = - integral_(p_0)^(p_1) 1/(rho g) dif p
  = - integral_(p_0)^(p_1) 1/(g) (R T)/(p g) dif p
$

$
  h = z_1 - z_0 = R/g macron(T) ln p_0/p_1
$
$macron(T)$为两层等压面之间的平均温度，$p_1<p_0$

$
cases(
  u_T = - g/f partial/(partial y)(z_1 - z_0)\
  v_T = g/f partial/(partial x)(z_1 - z_0)
)
<=>
cases(
  u_T = - g/f partial/(partial y) (R/g macron(T) ln p_0/p_1)\
  v_T = g/f partial/(partial x) (R/g macron(T) ln p_0/p_1)
)\

bold(V)_T = g/f bold(k) times gradient h,
bold(V)_T = g/f ln p_0/p_1 bold(k) gradient macron(T)
$

#theorem[
  $
    - (partial bold(V)_g)/(partial p) = R/(f p) bold(k) times gradient_h T
  $
]

- 热成风与等平均温度线平行，北半球背热成风而立，低温在左，高温在右

- 热成风风速大小与平均温度梯度成正比，与纬度成反比。等温线越密集，热成风越大

- 越到高空，地转风越趋近于热成风的方向

地转风随高度#highlight[逆时针]旋转，两层等压面间有#highlight[冷平流]\
地转风随高度顺时针旋转，两层等压面间有暖平流

地面低压中心位于高空槽前脊后，高压中心位于高空槽后脊前

+ 两层等压面间的层次越厚，热成风越大
+ 温度梯度指向北，热成风方向必然指向东
+ 越到高层，地转风越向东偏转，逐渐趋于平行等温线

对流层高层主要为西风气流

#definition("深厚系统")[
  低压冷中心，高压暖中心。热成风与梯度风方向一致。相反为浅薄系统。
]

正压大气 Barotropic: 
密度仅仅与气压有关，$rho = rho(p)$，等压面分析不出等温线，无热成风。

$(partial bold(V)_g)\/(partial p) = 0$
地转风不随高度变化。

在实际的500hPa天气图上，等温线的分布北密南疏。


=== 地转偏差
#definition("地转偏差")[
实际风与地转风的矢量差，或称为偏差风
$
  bold(D) = bold(V) - bold(V)_g
$
]
+ 地转偏差使实际风穿越等压线，引起气压场的变化

+ 当风穿越等压线时气压梯度力对空气做功，改变空气动能，促使风速变化

+ 造成垂直运动的重要原因，进而产生天气

