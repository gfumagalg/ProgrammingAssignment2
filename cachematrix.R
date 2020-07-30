## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix creates a list with setter and getter functions to
## set and get the values of a matrix, set and get the inverse of that matrix

makeCacheMatrix <- function(x = matrix()) {
    invM <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverseM <- function(inverseM) invM <<- inverseM
    getinverseM <- function() invM
    list(set = set, get = get,
        setinverseM = setinverseM,
        getinverseM = getinverseM)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    invM <- x$getinverse()
    if(!is.null(invM)) {
      message("getting cached data")
      return(invM)
    }
    data <- x$get()
    invM <- solve(data, ...)
    x$setinverse(invM)
    invM
  
        ## Return a matrix that is the inverse of 'x'
}
