#loop w/ a recursion!
nsum <- function(n){
  #iteration
  result = 0
  for(i in 1:n){
    result = result+i
  }
  return(result)
}

rnsum <- function(n){
  #recursion (induction). Using a stack
  if(n<=1) return(n)
  else return(n + rnsum(n-1))
}