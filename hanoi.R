hanoi <- function(n,src,dest,tmp){
  if(n==1){
    cat("move disk from",src,"to",dest,"\n")
  } else{
    hanoi(n-1,src,tmp,dest)
    hanoi(n-1,src,dest,tmp)
    hanoi(n-1,tmp,dest,src)
  }
}

hanoi(2,1,3,2)
hanoi(3,1,3,2)

#Try hanoi(10,1,3,2)!
hanoi(10,1,3,2)
#How many moves do you need to make?