# call by reference -> R: No!
val = c(10,20)
rswap <- function(vobj){
  temp <- vobj[1]
  vobj[1] <- vobj[2]
  vobj[2] <- temp
  return(vobj) #don't forget it!
}
rswap(val) -> val
val

# call by value
func1 <- function(a){
  a=a+1
}
a=1
func1(a)
print(a) # 1
