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

== Lagrange 插值
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

#highlight[注意：考试填空题]
$
  sum_(i=0)^n l_i (x) &=1, "取"f(x)=1\
sum_(i=0)^n x_i l_i (x) &= x, "取"f(x)=x\
==> sum_(i=0)^n f(x_i) l_i (x) &= f(x)
$
#definition("插值余项/截断误差")[
$
  R_n (x) &= f(x) - L_n (x) \
  &= 
  (f^(n+1) (xi))/(n+1)!
  (x -x_0)(x-x_1)...(x-x_n)\
  &xi in (a,b)
$
]



== 使用Python 实现Lagrange 插值示例
```python
import numpy as np

import matplotlib.pyplot as plt

# Given data points
x = [0.2, 0.4, 0.6, 0.8, 1.0]
y = [0.98, 0.92, 0.81, 0.64, 0.38]

# Define the Lagrangian basis polynomial
def lagrange_basis(x_values, j, x_target):
    result = 1.0
    for i in range(len(x_values)):
        if i != j:
            result *= (x_target - x_values[i]) / (x_values[j] - x_values[i])
    return result

# Define the Lagrangian interpolation polynomial
def lagrange(x_values, y_values, x_target):
    result = 0.0
    for j in range(len(x_values)):
        result += y_values[j] * lagrange_basis(x_values, j, x_target)
    return result

# Create points for the interpolation curve
x_interp = np.linspace(0.1, 1.1, 100)
y_interp = [lagrange(x, y, xi) for xi in x_interp]


# Plot the results
plt.figure(figsize=(10, 6))
plt.plot(x_interp, y_interp, 'r-', label='Interpolation')
plt.plot(x, y, 'bo', label='$x, f(x)$')
plt.title('Lagrange Interpolation')
plt.xlabel('x')
plt.ylabel('y')
plt.grid(True)
plt.legend()
plt.savefig('lagrange.png')
```

#figure(
  image("../pic/lagrange.png"),
  caption: [`plt.show()` Demonstration, where Runge Phenomenon is observed. 为避免龙格现象，可以使用分段插值（分段插值的余项是分段插值的余项之和）或者使用Chebyshev 节点（最小化插值多项式的最大误差）。]
)


== Newton 插值
希望增加节点时，只需要增加相应的项。

#definition("一阶差商")[
  $
    f[x_i,x_j] = (f(x_i) - f(x_j))/(x_i - x_j)
  $
]
二阶差商
  $
    f[x_i,x_j,x_k] = (f[x_j,x_k] - f[x_i,x_j])/(x_k - x_i)
  $


差商表对角线即为Newton 插值多项式系数
#theorem("Newton 插值多项式")[
$
  f(x) = 
  &f(x_0) + \
  &f[x_0,x_1](x-x_0) + \
  &f[x_0,x_1,x_2](x-x_0)(x-x_1) + \
  &... + \
  &f[x_0,x_1,...,x_n](x-x_0)(x-x_1)...(x-x_(n-1))
$
]
余项与相等于Lagrange 余项相同

$k$阶差商与$k$阶导数的关系
#theorem[
  $
    f[x_0,x_1,...,x_k] = (f^(k) (xi))/k!, xi in (min x_i, max x_i)
  $
]

= 函数逼近
函数类$A$给定函数$f(x)$, $f(x) in A$, 在$B #sym.subset A$ 找到函数$p(x)$,使得$p(x)$ 与$f(x)$ 误差在某种意义上最小。

== 范数与内积
范数(Norm)
+ $norm(x) >= 0 "only" x = 0, norm(x) =0$ 非负性
+ $norm(alpha x) = abs(alpha) norm(x)$ 齐次性
+ $norm(x + y) <= norm(x) + norm(y)$ 三角不等式性

#definition("常用范数")[
对于$R^n$ 上的向量，$x = (x_1,x_1,dots,x_n)^T$
$
  &norm(x)_oo = max_(1<=i<=n) abs(x_i), "无穷范数/最大范数"\
  &norm(x)_1 = sum_(n = 1)^(n) abs(x_i), "1-范数"\
  &norm(x)_2 = (sum_(n = 1)^(n) x_i^2)^(1/2). "2-范数"\
$

]

== 最佳逼近

#definition("最佳逼近")[
设$f(x) in C[a,b]$ 如果$p^*(x) in Phi = "span"{phi_0,phi_1,dots,phi_n$
满足 
$
  norm(f(x) - p^*(x)) = min_{p(x) in Phi} norm(f(x) - p(x))
$ 
称$p^*(x)$为$f(x)$在$Phi$ 上的最佳逼近
]

如果$norm(f(x) - p^*(x))^2_2 = min_(p in H_n) norm(f(x)-p(x)) = min_(p in H_n) integral_b^a [f(x)-p(x)]^2 dif x$,
则称为最佳平方逼近多项式。

#theorem[
$f(x)$与$g(x)$正交： 
$
  (f,g) = integral_b^a rho(x) f(x) g(x) dif x = 0
$
]

#definition("正交函数族")[
$
  (phi_i,phi_j) = 
  cases(
    0\, i != j\
    A_k \, i = j
  )
$
当$A_k = 1$时，称为标准正交函数族。
]

== Gram-Schmidt 正交化
#theorem[
  对于${1,x,dots,x^n}$
  $
    p_0 (x) = 1, p_n (x) = x^n - sum_(j=0)^(n-1) ((x^n,p_j))/((p_j,p_j) p_j (x)) p_j\
  $
]

== Legendre 多项式
#theorem[
  对于$rho(x) =1$
  $
    P_0 (x) = 1, P_1 (x) = x\
    P_(n+1) (x) = (2n + 1)/(n + 1) x P_n (x) - n/(n + 1) P_(n-1) (x)\
  $
]
$
  integral_(-1)^1 P_n (x) P_m (x) dif x = 
  cases(
    0 \, n != m\
    2/(2n+1) \, n = m
  )
$

== Chebyshev 多项式
#theorem("Chebyshev 多项式")[
  对于$rho(x) = 1/sqrt(1-x^2)$
  $
    T_0 (x) = 1, T_1 (x) = x\
    T_(n+1) (x) = 2x T_n (x) - T_(n-1) (x)\
  $
  $T_n = cos( n arccos x)$
]
$
  integral_(-1)^1 T_n (x) T_m (x) 1/sqrt(1-x^2) dif x = 
  cases(
    0 \, n != m\
    pi/2 \, n = m != 0\
    pi \, n = m = 0
  )
$
用切比雪夫多项式的零点插值可避免龙格现象，保证 $L_n (x)$ 收敛。

== 最佳一致逼近
#theorem[
  对于$f(x)$在$[a,b]$上连续，$p_n (x)$为$n$次多项式
  $
  norm(f(x) - p_n (x))_oo = max_(a<=x<=b) abs(f(x) - p_n (x))\
  $
]

== 最佳平方逼近举例
求$f(x) = sqrt(x)$  在$[1/4,1]$上的在$Phi = "span"{1,x}$中关于$rho(x)= 1$的最佳平方逼近多项式。

已知$phi_0 = 1,phi_1 = x$, 设所求$p^*_1 (x)= a_0 +a_1 x$，有方程：
$
  mat(
    delim:"[",
    (phi_0,phi_0),(phi_0,phi_1);
    (phi_1,phi_0),(phi_1,phi_1)
  )
  mat(
    delim:"[",
    a_0;a_1
  )
  = 
  mat(
    delim:"[",
    (phi_0,f(x));\
    (phi_1,f(x))
  )
$

其中
$(phi_0,phi_1)= integral_(1/4)^1 x dif x = 15/32,
(f,phi_1)= integral_(1/4)^1 x sqrt(x) dif x = 31/80$

有：
$
  mat(
    delim:"[",
    3/4,15/32;
    15/32,21/64
  )
  mat(
    delim:"[",
    a_0;a_1
  )
  = 
  mat(
    delim:"[",
   7/12;
   31/80
  )
  => 
  cases(
    a_0 = 10/27,
    a_1 = 88/135
  )

  =>
  p^*_1 (x) = 10/27 + 88/135 x
$