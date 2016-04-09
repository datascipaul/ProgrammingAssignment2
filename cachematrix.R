## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
x<-matrix(1:4,nrow=2,ncol=2)

makeCacheMatrix <- function(x = matrix()) {
  
  #something that sets an empty inverse
  inverse <- NULL
  #something that records the matrix (x) for calculations
  get_matrix <- function() x
  #something to record the inverse if it is passed the inverse
  #set_inverse <- function(calc_inverse) inverse <<-calc_inverse
  #something to return the value of the inverse
  return_inverse <- function()inverse
    #list of functions
  list(get_matrix = get_matrix, return_inverse = return_inverse)
  }
#set_inverse = set_inverse, 

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  #get inverse from makeCacheMatrix
  inverse <- x$return_inverse
  #check if inverse is empty
  if(!is.null(inverse)){
      message("Getting cached data")
      return
  #if inverse is not empty, pull matrix
  data <- x$get_matrix
  #solve inverse of matrix
  calc_inverse <<- solve(data)
  #send solved inverse back to makeCacheMatrix
  x$set_inverse(calc_inverse)
  #return result
  calc_inverse
  }
}
