
## Chapter 2 -------------------------------------------------------------

#연습 1
25+99
456 - 123
2*(3+4)
(3+5*6)/7
(7 - 4) *3
210 + 35
1256 %% 7
184 %% 5
1976 / 24
16*25 + 186*5 - 67*22


#연습 2
10 * 10 * 3.14
15 * 15 * 3.14
20 * 20 * 3.14
PI <- 3.14
R <- 10
R * R * PI
R <- 15
R * R * PI
R <- 20
R * R * PI

#2차식 y = 2x^2 + 5x + 10 에 대해 x 가 6,8,10 일 때 y의 값을 각각 구하시오

2*6^2 + 5*6 + 10
x <- 6
2*x^2 +5*x + 10
x <- 8
2*x^2 +5*x + 10
x <- 10
2*x^2 +5*x + 10


# 연습 3
# 101 ~ 200 의 값으로 구성된 벡터 d 를 생성하시오
d <- 101:200
#d 에 어떤 값이 저장되었는지 확인하시오
d
#d 에서 10번째 값은 무엇인가
d[10]
#d 에서 뒤에서 10개의 값을 잘라내어 보이시오
d[-c(1:90)]
#d 에서 짝수만 출력하시오
d[seq(2,100,2)]
#d 에서 앞에서 20 개의 값을 잘라내어 d.20 에 저장하시오. d.20 의 값을 보이시오
d.20 <- d[0:20]
d.20
#d.20 에서 5번째 값을 제외한 나머지 값들을 보이시오
d.20[-c(5)]
#d.20 에서 5,7,9 번째 값을 제외한 나머지 값을 보이시오
d.20[-c(seq(5,9,2))]




# 연습 4
d1 <- 1:50
d2 <- 51:100

#d1, d2 의 값을 보이시오
d1
d2

#d1+d2, d2-d1, d1*d2, d2/d1 의 결과를 각각 보이시오
d1+d2
d2-d1
d1*d2
d2/d1

#d1, d2 의 값들의 합(sum)을 각각 보이시오
sum(d1)
sum(d2)

#d1, d2 에 있는 모든 값들의 합(sum)을 보이시오
d3 <- c(d1,d2)
sum(d3)

#d2 에서 가장 큰 값과 가장 작은 값을 보이시오
max(d2)
min(d2)

#d2 와 d1 의 값들의 평균값을 각각 구하고 두 평균의 차이를 보이시오
mean(d2) - mean(d1)

#d1 의 값들을 큰수에서 작은 수 순으로 정렬하여 보이시오
sort(d1, decreasing = TRUE)

#d1 과 d2 에서 큰수 순으로 각각 10개씩을 추출하여 d3 에 저장하시오 (결과적으로 d3 에는 20개의 수가 저장)   
d <- sort(x = d1, decreasing = TRUE)
dt1 <- d[1:10]
dt1
t <- sort(x = d2, decreasing = TRUE)
dt2 <- t[1:10]
dt2
d3 <- c(dt1, dt2)
d3



# 연습 5
v1 <- 51:90

#1)  v1 에서  60 보다 작은 수 들을 보이시오
v1[v1<60]

#2)  v1 에서  70 보다 작은 수 들은 몇개인지 보이시오
sum(v1<70)

#3)  v1 에서  65 보다 큰 수들의 합을 보이시오
sum(v1[v1>65])

#4)  v1 에서  60보다 크고 73 보다 작은 수들을 보이시오
v1[v1>69 & v1<73]

#5)  v1 에서  65 보다 작거나 80 보다 큰 수들을 보이시오
v1[v1>80 & v1<65]

#6)  v1 에서  7로 나눈 나머지가 3 인 숫자들만 보이시오
v1[v1%%7==3]

#7)  v1 에서  짝수들의 합계를 보이시오
sum(v1[v1%%2==0])

#8)  v1 에서  홀수이거나 80 보다 큰 수를 보이시오
condi <- v1%%2==1 | v1>80
v1[condi]

#9)  v1 에서  3과 5의 공배수를 보이시오
condi <- v1%%3==0 && v1%%5==0
v1[condi]








city <- c("Seoul","Tokyo","Washington") 
rank <- c(1,3,2) 
city.info <- data.frame(city, rank)
city.info


R
iris


is.data.frame(iris) # 객체가 data.frame 인지 확인
iris[,"Species"]           # 결과가 vector ,   iris[,5] 와 동일 
iris["Species"]              # 결과가 150x1 data frame
iris$Species                      # 결과가 vector (matrix 에서는 잘안됨)


## iris[,"Species"]와 iris$Species는 같은 명령어다.



iris[,c(1:2)]              # 앞의 2개 컬럼 데이터 보기
iris[,c(1,3,5)]            # 1, 3, 5 컬럼 보기
iris[,c("Sepal.Length","Species")]  #Sepal.Length와 Species의 컬럼 보기
iris[1:50,]                # 1~50행의 모든 컬럼 보기
iris[1:50,c(1,3)]          # 1~50행, 1번, 3번 컬럼 보기

ㄹ


dim(iris)    # 행과 열의 수 보이기   
nrow(iris)   # 행의 수 보이기
ncol(iris)        # 열의 수 보이기
names(iris)     # 컬럼이름 보이기, colnames() 와 동일
head(iris)        # 데이터셋의 앞부분 일부 보기
tail(iris)        # 데이터셋의 뒷부분 일부 보기




str(iris)           # 데이터셋 요약 보기
unique(iris[,5])    # 종의 종류 보기 (중복 제거)
table(iris[,"Species"]) # 품종의 종류별 instance count



# 5번째 컬럼은 숫자가 아니라 품종 정보이기 때문에 제외
colSums(iris[,-5])      # 열별 합계
colMeans(iris[,-5])     # 열별 평균
rowSums(iris[,-5])      # 행별 합계
rowMeans(iris[,-5])     # 행별 평균




z <- matrix(1:20, nrow=4, ncol=5)
z
t(z)            # 행과열 방향 변환




IR.1 <- subset(iris, Species=="setosa")
IR.1
IR.2 <- subset(iris, Sepal.Length>5.0 & 
                 Sepal.Width>4.0)
IR.2

#하나의 명령문은 한줄에 작성하는 것이 일반적이나, 
#명령문이 길 경우는 여러 줄에 걸쳐서 작성할 수 있다.
IR.1 <- subset(iris, Species=="setosa")
IR.2 <- subset(iris, Sepal.Length>5.0 & 
                 Sepal.Width>4.0)
#바람직하지 않은 작성의 예
IR.2 <- subset(iris, Sepal.Length>5.0
               & Sepal.Width>4.0)



a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b
a+b
b-a
b/a
a*b



3*a
b-5
2*a + 3*b


a <- a*3
b <- b-5

# 자료구조의 확인
class(iris)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)

# data frame to matrix
iris.m <- as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)


# matrix to data frame
st <- data.frame(state.x77)
head(st)
class(st)

getwd()
setwd("/Users/cash/Desktop/To_FullStack/lecture/데청캠_동국대/사전교육/Rworks")  # 파일이 있는 폴더 지정 
mydata <- read.csv("test.csv", header = TRUE)
mydata



mydata               # 전체 데이터 출력 
head(mydata)         # 앞의 몇줄 데이터만 출력 
tail(mydata)         # 뒤의 몇줄 데이터만 출력 

mydata[2,3]          # 2행 3열의 원소값 출력
nrow(mydata)                   # 행의 개수 출력 
ncol(mydata)         # 열의 개수 출력 
dim(mydata)          # 행,열의 개수 출력

myRow1 <- mydata[2,]  # 2행의 값들을 추출하여 벡터생성 
myRow2 <- mydata[,3]  # 3열의 값들을 추출하여 벡터생성 

mynew <- mydata[,c(2,3)]        # 2,3 열만 추출 
write.csv(mynew, "kid_new.csv", 
          row.names=F, quote=F)



setwd("/Users/cash/Desktop/To_FullStack/lecture/데청캠_동국대/사전교육/Rworks")  # 파일이 있는 폴더 지정 
mydata <- read.csv("test.csv", header = TRUE)
mydata


mydata <- read.csv("test.csv", header = TRUE)


mydata <- read.csv(file.choose(),
                   header = TRUE)
mydata <- read.csv(file.choose(),
                   header = TRUE)
