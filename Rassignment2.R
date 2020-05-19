##Please include your own comment to explain your code (Required in Rubric)

makeCacheMatrix <- function(x = matrix()) {
  j <- NULL
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}

##Please include your own comment to explain your code (Required in Rubric)

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}



O/P
> m <- matrix(rnorm(16),4,4)
> m1 <- makeCacheMatrix(m)
> cacheSolve(m1)
[,1]        [,2]       [,3]       [,4]
[1,]  0.5572106  0.01891733 -0.6016946 -0.6938075
[2,]  0.2986932  0.47988475  1.7524183  1.7373639
[3,]  0.3415385 -0.43863274  0.3323858  0.5271951
[4,] -0.8064374 -0.18266773  0.1909192 -0.4768794
