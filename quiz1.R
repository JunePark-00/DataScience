a <- 10


func <-function() {
  a <- 20    
}


func()    

print(a)

vec <- c('cyan', 'magenta', 'yellow', 'black')
vec


list_data <- list("Red", "Green", c(21,32,11), TRUE, 51.23, 119.1)


listdata <- list(name="Young",age=30,gender='F',student=FALSE,transactions=c(30000,2000,15000,80000))
listdata



bool <- factor(c('TRUE', 'FALSE', 'FALSE', 'TRUE'))
bool


sales <- c(20,15,21,19,33,42,10)

names(sales) <- c('M', 'T', 'W', 'Th', 'F', 'Sa', 'Su' )
sales

good_sales_days <- function(sales,n){
  sales[sales>=n]
  return((sales[sales>=n]))
}

good_sales_days(sales,30)


good_sales_days <- function(sales,n){
  day <- sales[sales>=n]
  return(names(day))
}
good_sales_days(sales, 30)
