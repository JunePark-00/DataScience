library(truncnorm)
scores <- rtruncnorm(n=100000000, a=0, b=100, mean=80, sd=15)
print(scores)

format(object.size(scores), units="auto")

my_sum <- function(data){
  result = 0
  for(i in 1:length(data)){
    result = result + data[i]
  }
  return(result)
}
print(my_sum(scores))

my_sum <- function(scores) {return(sum(scores))}
my_sum(scores)
typeof(my_sum(scores))

my_mean <- function(data,precision){
  result=0 # initialization
  for(i in 1:length(data)){
    result=result+data[i]
  }  
  return(round(result/length(data),precision))
}
print(my_mean(scores,2))

my_avg <- function(scores){return(mean(scores))}
print(my_avg(scores))

avg = my_avg(scores)

my_sd <- function(data){
  result = 0
  for(i in 1:length(data)){
    result = result + (data[i] - avg)^2
  }
  return(sqrt(result/length(data)))
}
print(my_sd(scores))

my_sd <- function(scores){return(sd(scores))}
print(my_sd(scores))

hist(scores)
