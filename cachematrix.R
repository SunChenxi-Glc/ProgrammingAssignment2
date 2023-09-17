## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## create a matrix to cache 
makeCacheMatrix <- function(x = matrix()) {
         #initialize the cache object
         cache <- NULL
  # set the matrix
  setMatrix <- function(matrix) {
    x <<- matrix
    cache <<- NULL
  }
  #retrive the matrix
  getMatrix <- function() {
    x
  }
  #set the cache 
  setCache <- function(inverse) {
    cache <<- inverse
  }
  #retrive the matrix
  getCache <- function() {
    cache
  }
  #create a list conclude all the functions
  list(setMatrix = setMatrix, getMatrix = getMatrix, setCache = setCache, getCache = getCache)

}


## Write a short comment describing this function
#calculate the inverse the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        #get a cache 
         cache <- x$getCache()
  #return the data when the cache not null
  if (!is.null(cache)) {
    message("Getting cached data")
    return(cache)
  }
  #elif compute the inverse of the matrix
  data <- x$getMatrix()
  inverse <- solve(data, ...)
  #store the inverse matrix in a new cache
  x$setCache(inverse)
  #return the matrix
  inverse
}
