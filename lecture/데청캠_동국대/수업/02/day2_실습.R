library(ggplot2)
x <- c("a", "a", 'b', 'c')
x
qplot(x)



# data에 mpg, x축에 hwy 변수 지정하여 그래프 생성 
qplot(data = mpg, x = hwy)

# x축 cty
qplot(data = mpg, x = cty)

# x축 drv, y축 hwy
qplot(data = mpg, x = drv, y = hwy)

# x축 drv, y축 hwy, 선 그래프 형태
qplot(data = mpg, x = drv, y = hwy, geom = "line")

# x축 drv, y축 hwy, 상자 그림 형태
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")

# x축 drv, y축 hwy, 상자 그림 형태, drv별 색 표현
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)




####연습
#출력
score2 <- c(80, 60, 70, 50, 90)
score2

student <- c('a', 'b', 'c', 'd', 'e')
score <- c(80, 60, 70, 50, 90)
student.info <- data.frame(student,score)
student.info


#전체 평균 점수 구하기
mean(score)

# 전체 평균 변수 만들고 출력하기
avg <- mean(score)




english <- c(90, 80, 60, 70) # 영어 점수 변수 생성 
english
math <- c(50, 60, 100, 20) # 수학 점수 변수 생성 
math

# english, math로 데이터 프레임 생성해서 df_midterm에 할당 
df_midterm <- data.frame(english, math)
df_midterm




class <- c(1,1,2,2)
class

df_midterm <- data.frame(english, math, class)
df_midterm
mean(df_midterm$english) # df_midterm의 english로 평균 산출
mean(df_midterm$math) # df_midterm의 math로 평균 산술



df_midterm <- data.frame(english = c(90, 80, 60, 70), math = c(50,60,100,20), class=c(1,1,2,2))
df_midterm



##실습-------------------
product <- data.frame(fruit = c('apple', 'straw', 'waterme'), price = c(1800, 1500, 3000), sale=c(24, 38,13))
product
mean(product$price)
mean(product$sale)








# readxl 패키지 설치 
install.packages("readxl")
Yes
# readxl 패키지 로드
library(readxl)



df_exam <- read_excel("excel_exam.xlsx")
df_exam


mean(df_exam$english)
mean(df_exam$science)


df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar
