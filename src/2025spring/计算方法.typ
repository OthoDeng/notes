#import "../book.typ": book-page
#import "@preview/dvdtyp:1.0.1": *
#show: book-page.with(title: "计算方法")

#show: dvdtyp.with(
  title: "计算方法",
  author: "Otto Deng"
)
#outline()


= 误差
#definition("分类")[
观测误差、模型误差、截断误差、舍入误差]

- 绝对误差:
$
  e(x) = x -x^*
$

- 根据绝对误差有一个上限$epsilon$，成为绝对误差限
$
  abs(e(x)) = abs(x - x^*) <= epsilon
$

- 相对误差：
$
  e_r (x) = e(x)/x = (x -x^*)/x
$
- 相对误差限：
$
  abs(e_r (x)) <= epsilon_r
$

== 有效数字
1. $x^*$的#highlight[绝对误差限]是它某一数位的#highlight[半个单位]
2. 从$x^*$左起第一个非0数字到该数位共有$n$位，即有$n$位有效数字
#example[
$x = pi = 3.1415925...$

- $3.141 => "三位"$
$
x^* = 3.141, abs(x^* -x) 
&= 0.0005926...\
&<= 0.005 = 1/2 times 10^(-2)
$


- $3.142 => "四位"$
$
x^* = 3.142, abs(x^* -x) 
&= 0.0004073...\
&<= 0.0005 = 1/2 times 10^(-3)
$
]
== 运算误差分析
$
  e(y) = y -y^* = f(x_1,x_2) - f(x_1^*,x_2^*)
$
使用Taylor 级数展开到一阶导数项，省略二阶及以上
$
  e(y) approx 
  (partial f(x_1^*,x_2^*))/(partial x_1) e(x_1) +
  (partial f(x_1^*,x_2^*))/(partial x_2) e(x_2)
$
#definition("相对误差")[
$
  e_r(y) = e(y)/y^* = 
  (partial f(x_1^*,x_2^*))/(partial x_1) x_1/y^* e_r (x_1) +
  (partial f(x_1^*,x_2^*))/(partial x_2) x_2/y^* e_r (x_2)
$]
== 提高计算精度
#theorem[
$
  sqrt(x+epsilon) -sqrt(x) = epsilon/(sqrt(x+epsilon)+sqrt(x))\

  ln(x+epsilon) - ln(x) = ln(1 + epsilon/x)
$]

= 插值法

给定*$n+1$*个点$(x_i,y_i),i = 0,1,2,3....,n,.$ 且插值节点互异,构造不超过$n$次的多项式
$
  P_n (x) = a_0 + a_1 x + ... + a_n x^n
$
$x_i$为已知数，$a_i$为未知数：

有Vandermonde 行列式：
$
VV 
=
  mat(
    delim:"|",
1,x_0,x_0^2,...,x_0^n;
1,x_1,x_1^2,...,x_1^n;
1,x_2,x_2^2,...,x_2^n;
dots.v,dots.v,dots.v,dots.down,dots.v;
1,x_n,x_n^2,...,x_n^n;
  )

= product_(0<=i<j<=n) (x_j-x_i) != 0
$
线性方程有唯一解

- Lagrange 插值
构造
$
  P_n (x) &= l_0(x) y_0 + l_1(x) y_1 + l_2(x) y_2 + ... + l_n (x) y_n\
  l_i (x_j) &= cases(
    1 \, i=j\
    0 \, i!=j
  )
$

则
#definition[
$
  l_0 (x) &= 
  ((x-x_1)(x-x_2)...(x-x_n))
  /
  ((x_0-x_1)(x_0-x_2)...(x_0-x_n))
\
l_i (x) &= 
product_(j=0\ j!=i)^n 
(x-x_j)/(x_i -x_j)
$
]
#definition("插值余项/截断误差")[
$
  R_n (x) &= f(x) - L_n (x) \
  &= 
  (f^(n+1) (xi))/(n+1)!
  (x -x_0)(x-x_1)...(x-x_n)\
  &xi in (a,b)
$
]
#highlight[注意：]
$
  sum_(i=0)^n l_i (x) =1, sum_(i=0)^n x_i l_i (x) = x
$
