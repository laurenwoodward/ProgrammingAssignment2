## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()){
  l <- length(x)
  x <- matrix(x, nrow = sqrt(l), ncol = sqrt(l))
  i <- NULL
 set <- function(y){
   x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get, 
       setinverse = setinverse,
       getinverse = getinverse)
}## Write a short comment describing this fmaction
cacheSolve <- function(x, ...){
  i <- x$getinverse()
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
    i<- solve(data, ...)
    x$setinverse(i)
    i
}
    ## Return a matrix that is the inverse of 'x'
