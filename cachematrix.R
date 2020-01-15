## Programming Assignment 2 from Coursera course
## This functions creates a vector that returns the inverse of a matrix 
## or it calculates the inverse if it has not been done before 

## This function makes the vector containing the matrix, the inverse and the set and get functions
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
       x <<- y
       i <<- NULL
     }
  get <- function() x
  setinv <- function(solve) i <<- solve
  getinv <- function() i
  list(set = set, get = get,
        setinv = setinv,
        getinv = getinv)
}

## This function retrieves the data

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
