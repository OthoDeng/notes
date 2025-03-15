#import "../book.typ": book-page
#import "@preview/dvdtyp:1.0.1": *
#show: book-page.with(title: "现代气候学")


#show: dvdtyp.with(
  title: "现代气候学",
  author: "Otto Deng"
)
#outline()

= 绪论
#definition("气候")[

在太阳辐射和气候系统各子系统相互作用下，地球上某一区域在#highlight[某一特定时段]内天气（气候要素）的#highlight[多年]平均状况及其极端情形。
]


#definition("气候状态")[

气候状态是指某一地区在某一特定时段内的天气状况。
]

#definition("气候态")[

气候态是指某一地区在某一特定时段内的气候状态的统计#highlight[（30年）平均值。]]
= 气候系统

大气圈、水圈、冰雪圈、岩石圈和生物圈

相互作用，体现为系统间能量、动量和物质的交换

== 气候系统的反馈性
正反馈：

1. 冰雪面-反射率-温度
2. 水汽-红外逸出辐射-温度
3. CO2-海温
4. 高云-逸出辐射-温度
5. 植物-反射率-稳定

负反馈：

1. 赤道极地温差-热量输送
2. 蒸发量-水面温度
3. 中低云量-稳定度

== 气候敏感性
控制气候系统的外参数改变所引起的气候属性（如温度）相应的改变量

= 气候系统的能量平衡
== 太阳短波辐射
引入：

地球公转、黄赤交角、太阳高度角、太阳直射点

#definition("太阳常数")[
  大气上界在日地平均距离时，垂直于太阳光线的单位面积上单位时间通过全部波长的太阳辐射能。
$I_0 =  1367W\/m^2$
]
=== 天文辐射
天文辐射影响因素：日地距离、太阳高度角和日照时间。
1. 日地距离：$D = r\/r_0$
$
  I_0 ' = I_0/D^2 (\J dot \M^(-2) dot \S^(-1)), D = r/r_0
$
大气上界、#highlight[任意日地距离处]、单位时间、#highlight[垂直于太阳光线方向]的单位面积上通过全部波长的太阳辐射能

2. 太阳高度角：
$
  I = I_0 ' sin h = I_0/D^2 sin h
$
高度角越小，相同太阳辐射照射到地面的面积越大。
#definition[
  $
    sin h = sin phi sin delta + cos phi cos delta cos omega\
    I = I_0/D^2 (sin phi sin delta + cos phi cos delta cos omega)
  $
  $phi$：纬度
  $delta$：太阳赤纬
  $omega$：时角
]
太阳赤纬：太阳入射光线与地球赤道面之间的夹角
- 夏至时太阳的赤纬为$+23°27'$
- 冬至时太阳的赤纬为$-23°27'$
- 春分和秋分时太阳的赤纬为$0°$

时角：太阳在地方子午线上的位置角

- 0时时太阳的时角为$-180°$
- 12时时太阳的时角为$0°$
- 24时时太阳的时角为$+180°$

3. 日照时间
$
  dif s &= I_0/D^2 sin h dif t\
  dif t &= T/(2pi) dif omega, T = 24 \h = 86400 \s
$
对一天可日照时间积分:
$
  integral_(-omega)^omega dif s = integral_(-omega)^omega (I_0 T)/(2 pi D^2)  sin h dif omega
$

天文辐射变化规律：
1. 季节变化：中高纬度的季节变化显著，低纬度变化小。
  - 赤道上$phi = 0, omega = pi\/2, S = (I_0 T)/(pi D^2) cos delta$
  - 极地上$phi = plus.minus pi\/2, cases(
    "夏半年"\, omega = pi S = (I_0 T)/(pi D^2) cos delta\
    "冬半年"\, omega = 0 S = 0
  )$
2. 空间变化：年平均具有随纬度增高而减小的趋势。冬季随纬度增高减小的趋势强，夏季弱，甚至相反。
  - 春分秋分$delta = 0, omega = pi/2 S = (I_0 T)/(2 pi D^2) cos phi$
  - 夏至$delta = 23.27 degree, omega = pi/2 S = (I_0 T)/(2 pi D^2) cos phi sin 23.27 degree$
夏至：极地的天文辐射日总量与赤道的天文辐射日总量的比值：$pi dot tg 23.5 degree = 1.36$倍

=== 太阳辐射在大气中的减弱
$
  dif I_lambda = -k_lambda rho I_lambda dif l
$
$k_lambda$为大气对太阳辐射的质量削弱系数
#definition("从大气顶到Z高度的太阳辐射积分")[
  $
    I_lambda = I_0 e^(-integral k_lambda rho l)
  $
  令$P_lambda = e^(-integral k_lambda rho l)$
  $
    I_lambda = I_0 P_lambda
  $
  $P_lambda$ 为大气对单波$lambda$辐射的透明系数
]
主要吸收气体、散射、反射

=== 到达地面的太阳辐射
1. 到达地面的太阳直接辐射
太阳辐射经过大气吸收和散射之后，沿投射方向到达地表的太阳辐射能
$
  S = underbrace(I_0/D^2  sin h,"天文辐射")times underbrace(P_lambda,"大气影响")
$
影响因子：太阳高度角、大气透明度。

2. 散射辐射
太阳辐射经过大气散射后自天空投射到地面的辐射.

影响因子：太阳高度角h、大气透明度P、云

- 随h增大而增大
- 随P增大而减小
- 云量增多，散射辐射增大

3. 地表总辐射：直接辐射+散射辐射 $Q$
$
  Q = S_0 f(s,n)
$
$s_0$天文辐射 $n$云量 $s$日照百分率

- #highlight[带状特征]：中、高纬，Q具有纬向带状分布，随纬度升高而减小，这是天文辐射带状分布决定的。
- #highlight[非带状特征]：同一纬度，海洋小于陆地；副热带沙漠地区最大，季风区偏小；高原大于平原。这些与云量、大气透明度有关。

=== 地面对太阳辐射的反射
地面对太阳辐射的反射率albedo 影响因子：
- 下垫面特征和材质
- 太阳高度角
- 辐射波长

行星反照率：全年反照率的平均值为0.3

== 地气系统中的长波辐射
 地面放射辐射的最强波长为10$mu m$大气为15\~20$mu m$处于红外波段，统称为长波辐射。

 大气窗口：8\~13$mu m$，大气的吸收率最小,透射率最大。


 #definition("地面辐射U")[
  地表面向上放射的辐射
  $U = epsilon sigma T^4$

 $epsilon$地面相对辐射率 $sigma$为斯特藩-玻尔兹曼常数
 ]
U 离开地表


#definition("大气逆辐射G")[
  大气柱向下放射的辐射
  $G = epsilon_a f(T,e,n)$

  $epsilon_a$大气放射率, $T$大气温度, $e$水汽压, $n$云量
]
G 进入地标
#definition("地面有效辐射F")[
  地面长波辐射净通量
  $
    F = U - epsilon G 
  $
]
影响因子：地面温度、空气温度、空气湿度和云量.

== 地气系统的辐射收支

#definition("地面辐射平衡")[
  地表总辐射和有效辐射之差
  $
    R = Q times (1 - alpha) - F
  $
]

地表总辐射强、地面反射率小、地面有效辐射弱，地表净辐射大。

- 白天或夏季（特别是低纬地区），云使地表净辐射减小的作用强于增大作用，云量增多，净辐射减小
- 夜间或冬季，云使地表净辐射增大作用弱于减小作用，云量增多，净辐射增大

特点： 海洋大于陆地、湿润区大于干旱区、低纬度大于高纬度

#definition("大气系统的辐射平衡")[
  $
    R_a = Q_a + F - F_oo
  $
  $F_oo$为大气向外太空辐射的长波辐射 
  $F$为地面有效辐射
  $Q_a$为大气吸收的太阳辐射
  $R_a$为大气辐射收支
]

#definition("地气系统的辐射收支")[
$
  R_s &= Q times (1 - alpha)  + Q_a +  F_oo\
  R_s &= S_0 times (1 - alpha_s) - F_oo
$
  $S_0$为天文辐射
  $alpha_s$为行星反照率
]

全球年均单位时间(1秒)吸收的太阳辐射为
$
  I_0(1 - alpha_s) pi r^2
$

全球单位时间向外射出长波辐射为（地球假设为黑体）
$
  4 pi r^2 sigma T^4
$
一般情况$alpha_s =0.3$ 有$T_e = 254.6K$

