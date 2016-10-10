range_value <- function(x, na.rm =TRUE) {
  if (na.rm){
  	x = na.omit(x)
  }
  return (max(x) - min(x))
}