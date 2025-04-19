#import "../book.typ": book-page
#import "@preview/dvdtyp:1.0.1": *
#show: book-page.with(title: "大气探测学")
#import "@preview/pintorita:0.1.4"


#show raw.where(lang: "pintora"): it => pintorita.render(it.text)


#show: dvdtyp.with(
  title: "大气探测学",
  author: "Otto Deng"
)
#outline()


= 绪论

= 云的观测
== 云的分类

1. 低云族
```pintora 
mindmap
@param layoutDirection TB
+ 低云族

++ 积云Cu
+++ 淡积云
+++ 浓积云
+++ 碎积云Fc

++ 积雨云Cb
+++ 秃积雨云
+++ 鬃积雨云

++ 层积云Sc
+++ 透光层积云
+++ 蔽光层积云
+++ 积云性层积云
+++ 堡状层积云
+++ 荚状层积云

++ 层云St
+++ 碎层云
+++ 层云

++ 雨层云Ns
+++ 雨层云 
+++ 碎雨云
```

2. 中云族
```pintora
mindmap
@param layoutDirection TB
+ 中云族
++ 雨层云Ns
++ 高层云As
++ 高积云Ac
+++ 透光层积云
+++ 蔽光层积云
+++ 积云性层积云
+++ 堡状层积云
+++ 荚状层积云
```

3. 高云族
```pintora
mindmap
@param layoutDirection TB
+ 高云族
++ 卷云Ci
+++ 毛卷云
+++ 密卷云
+++ 堡状卷云
+++ 钩卷云
+++ 絮状卷云

++ 卷层云Cs
+++ 毛卷层云
+++ 薄幕卷层云

++ 卷积云Cc
+++ 层状卷积云
+++ 荚状卷积云 
+++ 堡状卷积云 
+++ 絮状卷积云
```

#definition("云量测量")[
 $
 "总云量"/"低云量"
 $
 天空分为10份
 ]

= 能见度和天气现象

= 温度观测

= 湿度观测

= 气压观测

= 地面风观测

= 辐射的观测

= 现代自动气象观测系统