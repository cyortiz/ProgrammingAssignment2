## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function- creating matrix

makeCacheMatrix <- function(x = matrix()) {
k <- NULL
set <- function(y){
  x <<- y
  k <<- NULL
}
get <- function()x
setInverse <- function(inverse) k <<- inverse
getInverse <- function ()k
list(set = set, 
     get = get,
     setInverse = setInverse,
     getInverse = getInverse)
}


## Write a short comment describing this function- getting inverse mean

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
k <- x$getInverse()
if (!is.null(k)) {
  message("getting cached data")
  return(k)
}
mat <- x$get()
k <- solve(mat, ...)
x$setInverse(k)
k
}
