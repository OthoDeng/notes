#import "../book.typ": book-page

#show: book-page.with(title: "热力学")



#outline()


= 热力学系统平衡以及描述
大量微观粒子组成的宏观物质系统 ($10 ^(23)$数量级)

系统分类
  $
  "根据是否与外界物质/能量交换分类" =>cases(
   "孤立系"\
   "闭系"\
   "开系"
  )
  $
  

热力学平衡(Thermodynamic Equilibrium)

弛豫时间
  系统有初始状态到平衡状态所需时间

热动平衡——粒子统计平均效果不变

- 均匀系——Homogeneous System
- 非均匀系——Heterogeneous System

1. 几何参量 2. 力学参量 3. 化学参量 4. 电磁参量

简单系统
  只需要体积$V$、压强$p$可以确定系统状态


$ 1 "atm" = 101 325 "Pa" $

非绝热的器壁——透热壁

Temperture
  A、B互为热平衡系统 $<=>$ 存在相等的状态函数 $g_A (p_A,bold(V)_A) = g_B (p_B,bold(V)_B)$
  
  有相同的冷热程度

纯水的三相点温度数值为273.16

温标
$
T_V "数值" = p/p_t times 273.16
$

= 物态方程 Equation of State 
$P V = n R T$
温度与状态参量之间的关系


== 物态方程有关物理量
- 体胀系数
Volumetric expasion coefficient
  $
  alpha = 1/(V) ((partial V)/(partial T))_P
  $ 压强不变，温度升高引起物体体积相对变化

- 压强系数
Pressure coefficient
  $
  beta = 1/p ((partial p)/(partial T))_V
  $

- 等温体积系数
Isothermal compressibillity coefficient"
  $ kappa_T = - 1/V ((partial V)/(partial p))_T 
  $ 取负号 s.t. $kappa_T$ 为正值


$ alpha = kappa_T beta p $ +
"since:" + $ ((partial V)/(partial p))_T ((partial p)/(partial T))_V ((partial V)/(partial p))_p  = -1
$


范式方程
  $
(p + (a n^2)/(V^2)) (V - n b) = n R T
  $
$ underbrace((a n^2)/(V^2),"引力修正"),underbrace( n b#v(2em),"斥力修正") $


= 功 Work
准静态过程
  进行非常缓慢，每个状态都可以看作平衡态


体积功，外界对系统做的功

$ W = - integral_(V_1)^(V_2) p dif V $

等容过程： $W = 0$
等压过程：$W = - p Delta V$

= 热力学第一定律

  $ Q &eq.triple U_B -U_A -W\
  dif U &= dif W + dif Q
  $从外界吸收能量 = 两个状态之差 - 系统做功

说明第一类永动机不能实现，需要外界供给能量来对外界做功。

= 热容量

  $ C = lim_(Delta T -> 0) (Delta Q)/(Delta T) = (dif U - dif W)/(dif T) $

不同的系统在同样的过程有不同的热容量；\ 同一系统在不同的过程有不同的热容量。

#highlight("定容")热容量
$ C_V = ((partial U)/(partial T))_V $ 

#highlight("定压")热容量
$ C_p &= ((partial U)/(partial T))_p + p ((partial V)/(partial T))_p \
"焓：" H &= U + p V \
=> C_p &=  ((partial H)/(partial T))_p
$


= 理想气体绝热过程
$dif Q  =0, p V = C$
$ &cases(C_p - C_V = n R\
C_P\/C_V = gamma
) \ => 
&cases(C_V = (n R)/(gamma -1)\
C_p = gamma (n R)/(gamma -1)) 
$

绝热方程
  $ p V ^gamma = "Constant" \
  T V^(gamma -1) = "Constant"
  $

$p-V$图中，绝热线斜率比等温线大。

#emoji.star 对于理想气体,有$C_p -C_V = n R$

 为了简化计算，以下均将理想气体定容摩尔热容$C_(V,m)$近似看成常量。

- 单原子分子理想气体: $C_(V,m) = 3/2 R$
- 刚性双原子分子理想气体： $C_(V,m) = 5/2 R$
- 刚性多原子分子理想气体： $C_(V,m) = 6/2 R$

= 卡诺循环

净功$W = Q_1 -Q_2$

顺循环——热机
热机效率
  $ eta = W/Q_1 = (Q_1 -Q_2 )/Q_1 = 1- Q_2/Q_1 $

逆循环——制冷机
制冷系数
  $ eta ' = Q_2/W = Q_2/(Q_1-Q_2) $


 


1. 等温膨胀过程
吸热过程
$ Delta U = 0 \
Q = - W =  R T_1 ln V_B/V_A >0 $吸热过程

$ eta = 1- (R T_1 ln V_2/V_1)/(R T_2 ln V_4/V_3) =  1 - T_2/T_1 $
2. 绝热膨胀过程

  $ Q = 0  $

3. 等温压缩过程
放热过程
$ Delta U = 0 \
Q = - W =  R T_2 ln V_B/V_A <0 $
4. 绝热压缩过程
  $ Q = 0  $

$ eta' = T_2/(T_2-T_1) $



