## The function makeCacheMatrix generates a matrix and create a cache for its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  ## Declarando y asignando variables
  matriz_inv <- NULL
  
  set <- function(y) {
    matriz <<- y
    matriz_inv <<- NULL
  }
  
  ## generando la matriz inversa y almacenandola en cache
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

