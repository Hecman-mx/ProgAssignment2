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


## calcula la matriz inversa de la funcion makeCacheMatrix()

cacheSolve <- function(matriz_cache, ...) {
  matriz_inv <- matriz_cache$get.inverse()
  # Obtiene el valor de la matriz en caso de que exista
  if(!is.null(matriz_inv)) {
    return(matriz_inv)
  }
  # Se genera la matriz en cache en caso de que no exista
  matrix.to.inverse <- matriz_cache$get()
  matriz_inv <- solve(matrix.to.inverse)
  matriz_cache$set.inverse(matriz_inv)
  matriz_inv
  
}

