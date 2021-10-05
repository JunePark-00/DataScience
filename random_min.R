arr <- floor(runif(10,0,100))
print(arr)
my_min <- function(arr){
  min = arr[1]
  for (i in 1:length(arr)) {
    if(arr[i]<min){
      min = arr[i]
    }
  }
  return(min)
}
print(my_min(arr))
