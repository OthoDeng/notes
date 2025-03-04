#import "../book.typ": book-page
#import "@preview/dvdtyp:1.0.1": *

#show: book-page.with(title: "大气物理")

#show: dvdtyp.with(
  title: "大气物理",
  author: "Otto Deng"
)

#show link: it => {
  set text(fill: blue)
  underline(it)
}




#outline()

= 大气成分历史

  1. $H_2$ $H e$ 阶段 => 45.6亿
  2. 还原性大气 => 25亿
  3. 氧化性大气 => 3.5亿


- 干洁大气：不含水汽和悬浮颗粒物的大气称为干洁大气；   
- 相变特征：在地球大气温压条件下，水汽是唯一能发生相变的气体成分；
- 空气密度:标准状态下,干空气密度为$1.29 k g⋅m^(-3)$
- 平均分子量: 90 km以下,空气平均分子量为 28.966,不随高度变化;90km以上,随高度递减。

CO2
- 二氧化碳是在地壳、大气层、海洋和生物圈之间循环的。
- 人工源：主要的人工源是矿物燃料燃烧和工业活动。 
- 自然源：死亡生物体的腐败和呼吸作用也都排出二氧化碳。
- 汇：植物的光合作用，海洋能吸收大量二氧化碳。
- 对气候影响：二氧化碳有强烈的“温室效应”作用。


#figure(image("../pic/Greenhouse effect.png",width: 15cm))
= 气溶胶

  - 气溶胶是指悬浮在气体中的固体和（或）液体微粒与气体载体共同组成的多相体系。
- 大气气溶胶是指大气与悬浮在其中的固体和液体微粒共同组成的多相体系。

对流层生成O3:光化学反应，Cl原子消耗O3（氟氯烃）
= 大气垂直结构
#definition("气温垂直递减率")[
  $
  gamma = - (partial T)/(partial z)
  $]


= 对流层（Troposphere）
从地面到1~2 km高度为行星边界层，其中的50~100 m以下的气层称为近地层，近地层以上到边界层顶称为上部摩擦层。

#definition("比热显热潜热")[
  - 对流层集中了约75%的大气和90%以上的水汽质量。
- 气温随高度增高而降低，北半球低纬地区平均气温直减率约 6.5 $°C⋅"km"^(-1)$ 。
- 垂直运动剧烈，有利于大气成分在垂直方向上的输送。
- 主要天气现象都在对流层内形成。
- 空气受地表影响很大，气象要素水平分布不均匀。
]

= 平流层(Stratosphere)
- 空气稀薄，能见度好，很少出现天气现象。
- 在15~35 km范围内，有厚约20 km的臭氧层。

= 中间层(Mesosphere)
垂直温度梯度大，有强烈的垂直混合，气压和密度随高度升高而降低的程度远慢于低层大气。

在这一层高纬度地区常出现极光现象。

= 基本气象要素
#theorem[
$     K= degree C+273.15, degree =5/9  (degree F-32)   $]
= 能量、气温和热

-  比热 (Specific Heat)：是单位质量物质的热容量，即单位质量物体改变单位温度时吸收或放出的热量。
- 显热(Sensible Heat)：The heat we can feel, “sense” and measure with a thermometer.
- 潜热 (Latent Heat ) ：The amount of heat exchanged that is hidden, meaning it occurs without change of temperature. 例如，水汽凝结成液态水的相变过程中释放的热量即为凝结潜热。

= 温度的控制因子
最重要的影响因子当然是到达地面的太阳辐射总量，其他主要的控制因子:#highlight("1. 纬度, 2.海拔高度, 3.陆地与水体的分布, 4.洋流. ")

= 空气湿度
实验——蒸发与凝结达到动态平衡

#definition("绝对湿度")[
  $
  ("mass of water vapor")/("volume of water") = rho = m_v/V "kg" dot m^(-3)
  $]

#definition("相对湿度")[
  $
  ("mass of water vapor")/("total mass of air") = q = m_v/(m_v + m_d) "kg" dot "kg"^(-1)
  $]


#definition("混合比")[
  $
  ("mass of water vapor")/("mass of dry air") = w = m_v/m_d "kg" dot "kg"^(-1)
  $]

$ q = w/(1+w) $

#theorem("克劳修斯-克拉伯龙方程")[
  $
  (dif e_s)/(dif T) = (L_V e_s)/(R_V T^2) => e_s(T) = e_s exp[L_V/R_V (1/T_0 -1/T)]
  $
  $L_V, R_V "可视为常数"$
]

= 露点和霜点
露点温度——一定质量湿空气等#highlight("压降温")达到饱和时的温度

相对湿度不变、混合比不变、大气压强不变

$e_s (T_d) = e$

$0 degree C$ 以下，霜点温度大于露点温度

= 理想气体状态方程
#theorem[
$
p = rho R T, p V = m/M R^* T\
R = R^\*/M
$
- $R^\*$: universal gas constant (通用气体常数或普适气体常数）8.3145 $"J K"^(-1) "mol"^(-1)$
- R: specific gas constant (比气体常数）
]
== 干空气状态方程
$p V = m/overline(M) R^* T$, $overline(M)$为干空气平均分子量$28.966 "g ·mol"^(−1)$

$R_d$为干空气比气体常数

$ R_d = R/overline(M) = 8.31/(28.966 times 10^(-3)) = 287.053 J times "kg"^(-1) times K^(-1) $

#theorem("干空气状态方程")[
  $ p_d = rho_d R_d T "or" p_d alpha = R_d T $
]

== 湿空气状态方程

  $
  p alpha = R_d (1 + 0.61 q) T 
  $


湿空气气压$p = p_d + e$

通过上式，定义一个新变量虚温（virtual temperature, $T_v$）

#definition("Virtual Temperature")[
  $ 
T_v = (1 + 0.61 q) T
 $虚温可以看作是考虑水汽后的订正温度。
]
在相同气压的条件下，具有和湿空气相等的密度时的干空气所具有的温度。



== 湿度变量之间的关系
$w = m_v/m_d = rho_v/rho_d, p_d = p -e$
根据水汽和干空气的状态方程 $e = rho_v R_v T, p_d = rho_d R_d T$
可得：
$ w = (epsilon e)/(p -e) $

因为$q= w/(1+w)$
#theorem[
$ q= (epsilon e)/(p + (epsilon -1)e) approx (epsilon e )/p $
]
#highlight("在实际大气中，混合比和比湿在数值上都是极小量（q, w << 1），且e远小于p，所以可认为
")
$ w approx q  approx (epsilon e )/p $

= 理论重力
重力随着高度而变化
  $ g(phi, z)= g(phi,0) dot (r_e^2)/(r_e +z)^2
  $
#definition("重力位势")[
  $
   Phi = integral^z_0 g dif z approx g z
  $]

  两个等位势面之间的几何距离，赤道的大于极地，高空的大于低空。因等位势面上无重力分量，故沿着等位势面移动物体不抵抗重力做功


#definition("位势高度")[
  $ 
  Z = Phi/g_0 = 1/g_0 integral^z_0 g dif z = overline(g)/g_0 z\
  𝑔_0=9.80665J⋅"kg"^(−1)⋅"gpm"^(−1)   
  $]
  1 gpm相当于9.80665 $J⋅"kg"^(−1)$的重力位势，即对单位质量空气克服地球引力作9.8 J的功，则向上移动的高度为1 gpm。




= 大气静力学方程
假设大气处于静力平衡，即在铅直方向的气象要素变化都很小，等压面与等温面近似平行，且空气无水平运动。

在大气静力平衡条件下，单位面积下，当$Delta z -> 0 $，必然有 $dif p = -rho g dif z$

#example("重点:气压分布三个特点")[
1. 气压随高度增加而降低，即$dif z>0$时， $dif p<0$；
2. 若视$g$为常数，则$p$随$z$而减小的快慢程度主要取决于密度$rho$；
3. 在静力平衡情况下，任意高度$z$处的大气压等于该高度单位截面上所承受的铅直空气柱的重量，即大气压的静力学意义：
$ p = integral_z^infinity rho g dif z $
]
实际运用形式
$ 
(dif p)/p = - g/(R_d T_v) dif z
$

在相同温度下，高空100 hPa（约16 km）处单位气压高度差约是地面值的10倍。

= 气压-高度公式
对上式积分：

$ p_2 = p_1 exp[-integral_(z_1)^(z_2) g/(R_d T_v) dif z]\
T_v "is consistent with" z, "you can't solve the equation in the right." $

我们对大气垂直减温进行了三个假设： 减温率$Gamma = - (dif T_v)/(dif z)$
== 等温大气 $Gamma = 0$
$Gamma = 0$ ，大气层的温度（或虚温）不随高度变化，称为等温大气。

#definition("气压公式/拉普拉斯公式")[
  $ p = p_0 exp[- g/(R_d overline(T_v)) z] $
  ]
当$z -> infinity, p -> 0$，等温大气的极限高度为无穷大，即等温大气没有上界。

气压标高
  气压标高表示等温大气条件下，气压随高度以𝑒指数减小，当高层气压减少到低层气压的$1/e$时，所需要的高度增量。
#theorem[
  $ H_p = (R_d overline(T_v))/g = - (dif z)/(dif ln p) $]


表明气压（和密度）随高度呈指数递减。

== 均质大气 $Gamma = 34.2 degree C \km^(-1)$
假设大气密度$rho$不随高度变化，整层保持其海平面密度值，这就是等密度模式大气，称为均质大气

$(dif p)/(dif z) = - rho g -> p = p_0 - rho g z$
#theorem[
  $ p/p_0 = 1- g/(R_d T_v) z "或" 
  z = (R_d T_v)/g (1- p/p_0) $
]
显然，均质大气中，气压随高度线性递减。有上界$H_"top" = (R_d T_v)/g$

当$(partial rho)/(partial z) > 0 $，自动发生对流

== 多元大气 $Gamma = "constant"$
气温随高度线性变化的大气称为多元大气

$
T_v &= T_(v 0) - Gamma z\
ln(p/p_0) &= g/(R_d Gamma) ln((T_(v 0) - Gamma z)/T_(v 0))
$

#theorem("压力-高度关系")[
  $
  p/p_0 &= (1 - (Gamma z)/(T_(v 0)))^(g/(R_d Gamma))\
  z &= T_(v 0)/Gamma [1-(p/p_0)^((R_d Gamma)/g)]
  $
]

多元大气上边界为$ H_"top" = T_(v 0)/Gamma $


= 准静态过程
系统在准静态过程中满足准静力条件，环境大气处于静力平衡状态，即

#definition("准静态过程")[
  $
  p &eq.triple p_e \ 
  (dif p)/(dif z) &= (partial p_e)/(partial z) = 0
  $
]

= 热力学第一定律 

  $
  delta Q = delta U + delta W\
  => delta q = dif u + p dif alpha
  $

#definition("焓")[
  $
  H = U + p alpha
  $]
  焓的物理意义是：在等压过程中，系统焓的增加值等于它所吸收的热量。



= 热力学第二定律
可逆绝热过程一定是等熵过程。等熵过程是绝热的，但绝热过程不一定等熵，例如不可逆绝热过程。

#definition("熵")[
  $
  S = S_0 + integral^2_1 (dif Q)/T
  $
]
可逆绝热过程一定是等熵过程。等熵过程是绝热的，但绝热过程不一定等熵，例如不可逆绝热过程。


= 干绝热过程

 在绝热过程中，假设讨论对象是干空气，或者是无凝结、不包含液态（固态）水的湿空气（即未饱和湿空气），这样的过程称之为干绝热过程。
 
$ delta q &= c_p dif T - alpha dif p = 0\
p alpha &= R_d T 
$


#theorem("泊松方程")[
  $
  T_0/T_1 = (p_0/p_1)^k, k = R_d/c_p
  $
]
对于干空气，$k_d = R_d\/c_(p d) = 0.286$

对于未饱和湿空气，$ k = R/c_p = (R_d (1 +0.6q))/(c_(p d) (1 + 0.84q)) = k_d (1- 0.26q) $
#definition("干绝热减温率")[
  $
  gamma_d = - ((dif T)/(dif z))_"dry" = g/c_(p d)\
  gamma_d = 9.8 K "km" ^(-1)
  $
]

#definition("露点减温率")[

  $
  Gamma_d = - (dif T)/(dif z) approx g/(0.622 L_V) dot T_d^2 /T
  $
]

= 位温

  对于干空气，位温定义为干空气块从当前状态按照干绝热过程膨胀或压缩到标准气压（1000 hPa）时应该具有的温度
  #definition[
  $
  theta = T (1000/p)^(k)
  $]

若某一层大气的减温率 $Gamma = gamma_d$ 则整层大气位温必然相等。在对流层内，一般情况下大气垂直减温率$Gamma < gamma_d$所以有$dif theta \/ dif z$表明位温随高度增加而增加。

= 饱和绝热上升过程的两种极端情形
1. 可逆湿绝热过程

	水汽相变所产生的水成物不脱离原气块，始终跟随气块上升或下降，所释放的潜热也全部保留在气块内部。

2. 假绝热过程

	水汽相变产生的水成物全部脱离气块，但所释放的潜热仍留在气块中。

- 可逆湿绝热过程的气块下降时，因凝结的液态水仍然保留在气块中，所以下降增温过程中，气块先按可逆湿绝热过程下降，直至液态水全部蒸发并到达抬升凝结高度，然后再按干绝热过程下降；

- 而假绝热过程的气块下降则只按照干绝热过程进行。


#figure(image("../pic/假绝热.png"))


= 大气热力学图七大参量
#figure(image("../pic/艾玛图.png"), caption: [埃玛图])
1. 假湿球位温
状态点A沿干绝热线下降（或上升）至1000 hPa处所对应的温度。因干绝热线即等位温线，故而也可直接读取通过状态点A的干绝热线上的数值。

2. 饱和比湿和比湿
读取通过状态点A的等饱和比湿线的数

3. 饱和水汽压和水汽压
沿状态点A的等温线上升（T不变，则Es不变），直到与p = 622 hPa等压线相交与B点，通过B点的饱和比湿线的数值就是状态点A的饱和水汽压（Es）
4. 抬升凝结高度
通过$A'(p,T_d)$的饱和比湿是状态点$A$的实际比湿；由$A$沿干绝热线上升，直到与通过$A'$的饱和比湿线相交，该交点即为凝结高度$Z_c$。

5. 假相当位温
- 定义法，即气块$A$沿干绝热线上升到$"LCL"$后，再沿湿绝热线上升，直到水汽全部凝结并脱离气块（即干绝热线与湿绝热线平行），此时气块变为干空气块，再沿着干绝热线下降到1000 hPa时的温度即为假相当位温$theta_(s e)$。当假相当位温数值很大时，上述定义法求解误差较大。

- 第二种方法，利用假相当位温的守恒性来求解。由于$theta_(s e)$在干湿绝热过程中守恒，湿绝热线就是等$theta_(s e)$线，因此只要读取通过抬升凝结高度$Z_c$点的湿绝热线上的$theta_(s e)$数值即可。

6. 虚温
埃玛图中，每个等压面上的绿色小竖线表示饱和虚温差$Delta T_(v s)$

7. 气层平均温度和等压面间的厚度
黄色圆点的数值表示标准等压面之间的厚度，单位为10 gpm（位势十米）。

