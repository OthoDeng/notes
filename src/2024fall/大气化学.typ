#import "../book.typ": book-page
#import "@preview/chem-par:0.0.1": *


#show: book-page.with(title: "大气化学")


#show link: it => {
  set text(fill: blue)
  underline(it)
}



#outline()

#show: chem-style


推荐阅读：
```
Atmospheric Chemistry and Physics: From Air Pollution to Climate Change
by John H. Seinfeld & Spyros N. Pandis, John Wiley & Sons, Inc., 2016
```

= Evolution
During the evolution, O2 ever peaked at ~35% (300m years ago), dropped to ~11% (250m years ago)

Oxygen (in greek: #highlight("acid former"))

= Layers of the Atmosphere

#figure(image("../pic/Layeratmos.png", width: 20cm))

绝大多数化学过程发生在Tropo & Strato

Troposhere
- Contains ~82% of atmosphere mass & most water vapor, clouds
- Bottom ~1.5km is “boundary layer” or “mixed layer”
- BL height increases throughout day b/c of solar heating, typically higher in summer


Variation of pressure with altitude
$
P(z) = P(0) e^(-z\/bold(H))
$
where $bold(H) $ is scale height $ H = (R T)/(M_a g) approx 7.4 "km" $

Mixing Ratio （混合比）
$ 
xi_i &= c_i/(p\/R T)\
&= (p_i\/ R T)/(p\/ R T)\
&= p_i/p
$

problem:
  P = 1 atm, T = 298 K 下 $O_3$ 混合比为120ppb, 相当于多少$mu g \/m^3$?
$ 
mu g \/m^3 &= (p M_i)/(R T) times "Mixing ratio in ppm"\
mu g \/m^3 &= ((1.103 times 10^5)(48))/(8.314(298)) times 0.12
$

= 大气成分和排放源
== 大气污染物的直接排放源(一次来源)
1. 人为源 Anthropogenic sources

2. 天然源 Natural sources
#highlight("生物(动植物)排放")

== 大气污染的生成(二次来源)

  进入大气的某些一次污染物，受环境中物理的、化学的或生物的因素作用，转化生成的大气污染物则为二次污染物。

== 复合污染

   复合型大气污染: 是指大气中由多种来源的多种污染物在一定的大气条件下(如温度、湿度、阳光等)发生#highlight("多种界面间的相互作用彼此耦合构成")的复杂大气污染体系。

结果: 二次污染物，尤其是颗粒物细粒子大量增加 

== 大气污染物来源分析技术
1. 源清单  2. 扩散模型  3. 受体模型

= 大气污染物的汇机制(考点！)

1. 干沉降(dry deposition):重力沉降，与植物、建筑物或地面相碰撞而被表 面吸附或吸收的过程;大气特性、表面特性和污染物本身特性会影响干沉降速 率。
2. 湿沉降( wet deposition ):通过降水而落到地面的过程;#highlight("雨除")是被去除物 质参与了成云过程;#highlight("冲刷")是指在云层下部即降雨过程中的去除。
3. 化学过程:实际上不是真正的去除，而是污染物存在形式的转化;
4. 向平流层输送:相对于对流层而言是去除过程。

= 大气痕量组分及分类
1. 含硫化合物 (sulfur-containing)
#highlight("H2S DMS(二甲基硫)")
2. 含氮化合物 (nitrogen-containing) 
3. 含碳化合物 (carbon-containing)
4. 含卤素化合物 (halogen-containing) 
5. 臭氧 (ozone, O3)
6. 颗粒物 (particulate matter, PM)

== 臭氧(O3):对流层化学
- 天然源:平流层注入(约90%的臭氧集中在平流层) 对流层光化学过程→背景浓度上升
- 人为源: VOCs /CO + NOx = O3
- 汇:
  - 气相反应
    - O3 +hv = O(1D) + O2(O(1D) + H2O = 2 OH)\
    - O3 + NO = NO2 + O2
  - 液相反应
    - O3 + SO2 = H2SO4
  - 干沉降

== 颗粒物(Particular matter, PM):气溶胶化学
气溶胶 aerosol

液体或固体微粒均匀地分散在气体中形成的相对稳定的
悬浮体系，狭义上就是指大气中的颗粒污染物。

#highlight("气溶胶的源汇与一般大气污染物的源汇类似。")

==  含硫化合物
- H2S

  - 源:植物腐烂(热带雨林、湿地、稻田、海洋等)
  - 汇:H2S + OH = H2O + SH

- DMS

 - 天然源: 海洋、湖泊、沼泽、湿地(浮游植物藻类 的光合作用)
 - 汇: DMS + OH= MSA $=> "SO"_4^(2-)$

- SO2

  - 人为源: 化石燃料的燃烧:占人为源的88% 
- 天然源: 火山活动
- 汇: SO2 $=> "SO"_4^(2-)$(干、湿沉降)


== 含氮氧化物
NOx = NO + NO2 

NH3

== 含碳化合物
大气中的甲烷是丰度最高的气态有机物(1.8 ppm)


= 反应速率常数

阿伦尼乌斯经验公式"
  $ 
  k = A e^(- E_a \/ R T)
   $反应速率常数与温度呈指数关系。因此
，人们将此式称为反应速率随温度而变的指数定律


- k为速率常数
- R为摩尔气体常量，单位J/mol·K
- T为热力学温度， 单位K
- Ea为表观活化能，单位为J/mol
- A为指前因子（也称频率因子）

$ ln k_2/k_1 = E_a/R ((T_2-T_1)/(T_2 dot T_1)) $

= 光化学反应

*photochemical reactions*

光合作用
6CO2 + 6H2O $-->$ C6H12O6 + 6O2

叶绿素起光合作用的催化剂（也叫光敏剂）的作用

光化学基本定律
  1. 只有被分子吸收的光才能引发分子的化学变化。
  2. 在初级过程中，一个被吸收的光子只活化一个分子。分子吸收光的过程是单分子过程。


光量子能量： $ E = h  nu = (h c)/lambda $

朗伯-比尔定律
  平行的单色光通过浓度为 c，长度为 l 的均匀介质时，未被吸收的透射光强度 I
与入射光强度 I0 之间的关系为($epsilon$为摩尔消光系数)
$ lg(I_0/I) = epsilon c l $


气相吸收系数用$sigma$来表示， 单位是cm2/分子，被称为吸收截面。

$ ln(I_0/I) = sigma N l $

== 光化学反应过程
#highlight("初级过程")
光化学反应的第一步是化学物种吸收光量子形成激发态物种：
$ A + h nu -> A^* $

激发态物种能发生如下反应(光物理过程)：
1. #highlight("辐射跃迁")，通过辐射磷光或荧光失活 $A^* -> A + h nu$
2. #highlight("碰撞失活")，为无辐射跃迁 $A^* + M -> A + M$


光化学过程：
1. 光离解，生成新物质$A^* -> B_1 + B_2$
2. 与其它分子反应生成新物种$A^* + C -> D_1 +D_2$

次级过程
初级过程中反应物与生成物之间进一步发生的反应

= 稳态近似法
假定反应进行一段时间后，体系基本上处于稳态，这时，#highlight("各中间产物的浓度可认为保持不变")，这种近似处理的方法称为稳态近似，一般活泼的中间
产物可以采用稳态近似,它的浓度称作稳态浓度。


1. O2、N2的光离解

$ O_2 + h nu &-> O + O \
O + O_2 + M &-> O_3 + M
$
这一反应是平流层中O3的来源，也是消除O的主要过程。


$ N_2 + h nu -> N + N $
N2的光离解限于臭氧层以上。

2.O3的光解

$ O_3 + h nu (lambda < 336 "nm") &-> O_2 + O(""^1 D) \
O(""^1 D) + H_2O &-> 2"OH" $

3. NO2的光离解


4. HNO2、 HNO3的光解

5. 含氮化合物的光解

6. 过氧化物的光解（过氧化氢，有机过氧化物ROOH)

7. 甲醛的光离解

8. 卤代烃的光解

= 硫酸和硝酸形成过程
#v(100pt)

气相中：

SO2 + ·OH $->$ HOSO2

HOSO2 + O2 $->$ SO3 + HO2·

SO3 + H2O $->$ H2SO4

云滴液态水中：

HSO3- + H2O2 $->$ SO2OH- + H2O

SO2OOH- + H+ $->$ H2SO4


白天：

NO2 + ·OH + M $->$ HONO2 + M

夜间：

NO2 + O3 $->$ NO3· + O2

NO2 + NO3· + M $arrows.rl$ N2O5 + M 

N2O5 + H2O $->$ 2HNO3

Chapman 机制：

产生：

O2 + $h nu ->$ 2O 

O + O2 + M $->$ O3 + M 

降解：

O3 + $h nu ->$ O2 + O(1D)

O(1D) + M $->$ M + O(3P) 

