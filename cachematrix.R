#Functions can check to see if the inverse of a matrix has been calculated.  If it has been calculated it is held
#in memory and will be retrieved.  If not, the value will be calculated and returned.

## Holds a matrix and, if it has been cacluated, its inverse.  
#Allows changes to changes of both matrix and inverse values.
makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  set <- function(y) {
    x <<- y
    inv_matrix <<- NULL
  }
  get <- function() x
  setinverse <- function(calc_inverse) inv_matrix <<- calc_inverse
  getinverse <- function() inv_matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

#Returns a matrix that is the inverse of 'x'.
cacheSolve <- function(x, ...) {
  inv_matrix <- x$getinverse()
  if(!is.null(inv_matrix)) {
    message("getting cached data")
    return(inv_matrix)
  }
  data <- x$get()
  inv_matrix <- solve(data)
  x$setinverse(inv_matrix)
  inv_matrix
 }
