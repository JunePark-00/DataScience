myfunc <- function(x,y){
  val.sum <- x+y
  val.mul <- x*y
  return(list(sum=val.sum,mul=val.mul))
}

result <- myfunc(3,4)
s <- result$sum
m <- result$mul
cat('3+4=',s,'\n')
cat('3*4=',m,'\n')

print(myfunc(3,4))
