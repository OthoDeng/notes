#import "../book.typ": book-page

#show: book-page.with(title: "天气学原理")

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

$
  arrow(Omega) times (arrow(Omega) times arrow(r)) 
  &= arrow(Omega) times (arrow(Omega) times arrow(R))\
  &=  - Omega^2 arrow(R)
$


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


- 地心引力
$M$对$m$引力$bold(F)_g $大小：
$
  bold(F)_g = - (G M m)/(r^2) (bold(r)/r)
$

$
  bold(g)^* = - (G M)/((a+z)^2) (bold(r)/r) = 
  - (G M)/(a^2) dot 1/(1 + z\/a)^2 (bold(r)/r) = 
  bold(g)^*_0 /(1 + z\/a)^2
$


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

$
  F_z = nu ((partial^2 u)/(partial x^2)+(partial^2 v)/(partial y^2)+(partial^2 w)/(partial z^2))
$右端前两项远小于第三项，故可近似为：

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

惯性离心力：
$
  bold(C) = Omega^2 bold(R)
$
$Omega = 2pi \/ 24h = 7.29 times 10 ^(-5) s^(-1)$

- 地转偏向力
自转角速度$bold(Omega)$在$x,y,z$上分量：
$
  cases(
    Omega_x = 0\
    Omega_y = Omega cos phi\
    Omega_z = Omega sin phi
  )
$

- 重力
$
  bold(g) eq.triple bold(g)^* + Omega^2 bold(R)
$
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

$
  (dif arrow(V))/(dif t) = - 1/rho gradient p - 2 arrow(Omega) times arrow(V) + arrow(g) + arrow(F)
$

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
质量守恒定律：
$
(partial rho)/(partial t) + 
underbrace(gradient dot (rho arrow(V)),"质量散度") = 0
$

$
  1/rho (dif rho)/(dif t) +
 underbrace(gradient dot arrow(V),"速度散度") = 0
$

对于#highlight[不可压缩]流体,$(dif rho)/(dif t) =0$

$
  gradient_h dot arrow(V) = -(partial w)/(partial z)
$
故可以用水平风速积分求得垂直对流速度$w$

=== 热力学能量方程
$
  c_v (dif T)/(dif t) + p (dif alpha)/(dif t) = Q
$

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

零级简化后：
$
  cases(
  - 1/rho (partial p)/(partial x) +  f v= 0\
  - 1/rho (partial p)/(partial y) - f u =0
  )
$

一级简化后：
$
  cases(
    (dif u)/(dif t) = - 1/rho (partial p)/(partial x) +  f v \
    (dif v)/(dif t) = - 1/rho (partial p)/(partial y) - f u 
  )
$
其中$f = 2 Omega sin phi$称为地转参数

垂直方向（准定常）：
$
  0 = - 1/rho (partial p)/(partial z) - g
$

=== 连续方程
#highlight[准水平无辐散]
零级简化后：
$
  &(partial u)/(partial x) + 
  (partial v)/(partial y) + 
  (partial w)/(partial z) + 
  w (partial ln rho)/(partial z) = 0\
"or,"\
  &(partial u)/(partial x) +
  (partial v)/(partial y) +
  #h(10pt)
  1/rho (partial rho w)/(partial z) 
  #h(27pt)
  = 0
$

=== 热力学能量方程
$
  p alpha = R T => p (dif alpha)/(dif t) + alpha (dif p)/(dif t)= R (dif T)/(dif t)\
  c_p = c_v + R
$
一级简化后：
$
  (partial T)/(partial t) = 
  - (u (partial T)/(partial x) + v (partial T)/(partial y))
  + w (gamma_d -gamma)
  + 1/c_p Q
$