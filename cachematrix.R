## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         cache <- NULL
  
  setMatrix <- function(matrix) {
    x <<- matrix
    cache <<- NULL
  }
  
  getMatrix <- function() {
    x
  }
  
  setCache <- function(inverse) {
    cache <<- inverse
  }

  getCache <- function() {
    cache
  }

  list(setMatrix = setMatrix, getMatrix = getMatrix, setCache = setCache, getCache = getCache)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cache <- x$getCache()
  
  if (!is.null(cache)) {
    message("Getting cached data")
    return(cache)
  }

  data <- x$getMatrix()
  inverse <- solve(data, ...)
  
  x$setCache(inverse)
  
  inverse
}
