## the objective is to create a inverse matrix by caching some previous calculations.

## The objective of this function "makeCacheMatrix" is create a matrix to cache the inverse.
## First function is where we set the value of the matrix and clean old values
## second function we get the value of the matrix
## third function set the inverse, this is only used if you didnt have calculated the inverse before
## fourth function - we get the inverse from previous calculations 


makeCacheMatrix <- function(x = matrix()) {
  Inverse <- NULL
  set <- function(y) {
    x <<- y
    Inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) Inverse <<- inverse
  getinverse <- function() inverse
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## calculates the inverse for the matrix created with the above function. 
## but in order to be optimized checks if hte calculation have already been made, 
## if yes "getinverse" if not do the calculations and set the value by the function "setinverse"


cacheSolve <- function(x, ...) {
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse <- solve(data, ...)
  x$setinverse(inverse)
  m
        ## Return a matrix that is the inverse of 'x'
}
