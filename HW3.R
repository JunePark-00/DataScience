#32191818 박주은

#1. 월별감전사고통계분석(page143~144) [10]
# 1-1
accident <- c(31,26,42,47,50,54,70,66,43,32,32,22)
names(accident) <- c('M1','M2','M3','M4','M5','M6','M7','M8','M9','M10','M11','M12')
accident

# 1-2
sum(accident)

# 1-3
max(accident)
min(accident)

# 1-4
accident*0.9

# 1-5
accident[accident>=50]

# 1-6
month.50 <- accident[accident >= 50]
names(month.50)
names(accident[accident >= 50])

# 1-7
length(accident[accident<50])

# 1-8
M6.acc <- accident[6]
accident[accident > M6.acc]
accident[accident > accident[6]]

#2. Exercise 4 (page 147) [5]
# 벡터 a의 값 중 3의 배수이면서 100보다 작은 수의 개수를 구하는 명령문을 완성하시오.
# a <- 25:150
# condi <- <A>
# <B>(condi)
a <- 25:150
condi <- a[(a%%3 ==0) & (a<100)]
length(condi)

#3. Exercise 8 (page 148) [10]
# 어떤 엘리베이터의 탑승 가능 총 무게는 600kg인데 마지막 사람이 타는 순간 운행 무게가 초과했다. 
# 벡터 weight는 엘리베이터에 탑승한 사람들의 이름과 몸무게이다.
# 다음 조건을 만족하는 명령문을 작성하고 결과를 출력하시오.
# <조건>
# 1. 한 사람을 내리게 하여 운행이 가능하도록 한다.
# 2. 내려야 하는 대상 중 가장 몸무게가 적은 사람을 선택한다.
weight <- c(56,23,89,46,76,14,97,72,68,62,35)
names(weight) <- c('a','b','c','d','e','f','g','h','i','j','k')
sum(weight)
weight.38 <- weight[weight>=38]
names(weight.38)
names(weight.38[weight.38==min(weight.38)])

#4. Find 3 FP or FN of your interest [15]
# * Include at least one from your major. 
# * Include a short description.
# * Not all of them should be FPs or FNs.
# (1) In machine learning, in the question of classifying whether it is a person or not, 
#     if a picture of a horse is given as test data, it is FP if the result is 'human'.
# (2) In machine learning, in the question of classifying whether it is a dog(1) or cat(0),
#     if a picture of a dog is given as test data, it is FN if the result is cat(0).
# (3) If a positive patient is tested negative in the COVID-19 test, it is FN.