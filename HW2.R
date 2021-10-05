#HW2

#Q1
ifelse(n<0, -n, n)

#Q2-a : Make “fibonacci(n)”
fibonacci <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(fibonacci(n-1) + fibonacci(n-2))
  }
}

#Q2-b : List 3 Applications of Fibonacci Sequence
#1. The arrangement of pine cone scales
#2. The arrangement of lobes from pine cone.
#3. Daisy's small petal.

#Q3-a : Generate 9 random numbers (200~500)
arr <- floor(runif(9,200,500))
print(arr)

#Q3-b : Add 10000 as the 10th number
arr[10] <- 10000
print(arr)

#Q3-c : Get mean and median using my_mean() and my_median()
my_mean <- function(arr){
  return(mean(arr))
}
print(my_mean(arr))

my_median <- function(arr){
  return(median(arr))
}
print(my_median(arr))

#Q3-d : Which one is the better measure for the central tendancy? What do you call “10000”?
# 'median' is better than 'mean' for the central tendancy.
# We can call "10000" "Outlier".

#Q4 : [t-Test] Find an example of your interest comparing two groups of normal distribution. 
#Run the t-Test by both R and Excel. 
#Include the source code and the result(graphs), and REFERENCE if there is any.
height<-read.csv("/Users/parkjueun/Desktop/high3heightData.csv",header = T)
#Test Assuming Equal Variances 
var.test(height$여자,height$남자)

#t-Test
t.test(height$여자,height$남자,var.equal = TRUE)

#graph 
library(ggplot2)
ggplot (height, aes (x=여자)) + 
  stat_function(fun = dnorm, args = c(mean = mean(height$여자), sd = sd(height$여자)))
ggplot (height, aes (x=남자)) + 
  stat_function(fun = dnorm, args = c(mean = mean(height$남자), sd = sd(height$남자)))

ggplot () +stat_function(data=height, aes(x=여자),color="Red",fun = dnorm, args = c(mean = mean(height$여자), sd = sd(height$여자))) +
  stat_function(data=height, aes(x=남자),color="Blue",fun = dnorm, args = c(mean = mean(height$남자), sd = sd(height$남자)))
