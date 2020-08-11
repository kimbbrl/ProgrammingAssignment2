## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL              #Variables that we will use to my program.
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if (!is.null(i)) {    #Condition to check if the "i" is not null an our program can run
    message("getting cached data")
    return(i)
  }
  data <- x$get()     #If the before condition pass, the program return de answer
  i <- solve(data, ...)
  x$setinverse(i)
  i     ## Return a matrix that is the inverse of 'x'
}
