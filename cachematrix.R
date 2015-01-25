## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  matriz_inv <- NULL
  
  set <- function(y) {
    matriz <<- y
    matriz_inv <<- NULL
  }
  
  get <- function() matriz
  set.inverse <- function(solve) matriz_inv <<- solve
  get.inverse <- function() matriz_inv
  
  list(
    set = set, 
    get = get,
    set.inverse = set.inverse,
    get.inverse = get.inverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
