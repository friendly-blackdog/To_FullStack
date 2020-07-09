library(readxl)
exam <- read.csv("csv_exam.csv")
exam
head(exam)
tail(exam, 10)
tail(exam)

View(exam)

dim(exam)

str(exam)

summary(exam)



# ggplo2의 mpg 데이터를 데이터 프레임 형태로 불러오기
mpg <- as.data.frame(ggplot2::mpg)
head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)



library(dplyr)
df_raw <- data.frame(var1 = c(1,2,1),
                     var2 = c(2,3,2))
df_raw
df_new <- df_raw
df_new
df_new <- rename(df_new, v2 = var2)
df_new

mpg_copy <- mpg
mpg_copy <- rename(mpg_copy, city = cty, highway = hwy)
head(mpg_copy, 2)

df <- data.frame(var1 = c(4,3,8),
                 var2 = c(2,6,1))
df$var_sum <- df$var1 + df$var2
df

df$var_mean <- (df$var1 + df$var2)/2
df

mpg$total <- (mpg$cty + mpg$hwy)/2
head(mpg, 2)
mean(mpg$total)


summary(mpg$total)
hist(mpg$total)

mpg$test <- ifelse(mpg$total >= 20, 'pass', 'fail')
head(mpg, 7>1)

table(mpg$test)

library(ggplot2)
qplot(mpg$test)

mpg$grade <- ifelse(mpg$total > 30, 'A',
                    ifelse(mpg$total >= 20, 'B', 'C'))
table(mpg$grade)

qplt(mpg$grade)
qplt(mpg$grade)
qplot(mpg$grade)



mpg$grade2 <- ifelse(mpg$total >= 30, "A", ifelse(mpg$total >= 25, "B",
                                                  ifelse(mpg$total >= 20, "C", "D")))


table(mpg$grade2)




ggplot(midwest)
midwest <- rename(midwest, total = totla, asian = asian)
head(midwest,0)

midwest$asian_per <- (midwest$asian / midwest$total)
hist(midwest$asian_per)
mean(midwest$asian_per)

ifelse()

midwest$asian


#연습 --------------------------------------
midiwest <- as.data.frame(ggplot2::midwest)
head(midwest)
library(dplyr)
midwest$ratio <- (midwest$asian/midwest$total)*100
hist(midwest$ratio)
asia_mean <- mean(midwest$ratio)


midwest$asia_group <- ifelse(midwest$ratio > asia_mean, 'large', 'small')

table(midwest$asia_group)
qplot(midwest$asia_group)




exam <- read.csv('csv_exam.csv')
exam


exam %>% filter(class == 1)
exam %>% filter(class == 2)

exam %>% filter(class != 1)

exam %>% filter(math > 50)
exam %>% filter(math < 50)


exam %>% filter(class %in% c(1,3,5))


#연습 ------------------------------------------------------

mpg_low <- mpg %>% filter(displ <= 4)
mpg_high <- mpg %>% filter(displ > 5)
mean(mpg_low$hwy)
mean(mpg_high$hwy)




mpg_audi <- mpg %>% filter(manufacturer == 'audi')
mpg_toyota <- mpg %>% filter(manufacturer == 'toyota')
mean(mpg_audi$cty)
mean(mpg_toyota$cty)




mpg_chev <- mpg %>% filter(manufacturer == 'chevrolet')
mpg_ford <- mpg %>% filter(manufacturer == 'ford')
mpg_honda <- mpg %>% filter(manufacturer == 'honda')


mpg_group <- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))
mean(mpg_group$hwy)
