## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# holds the cached value
 cache <- NULL
 # store a matrix
  setMatrix <- function(newValue) {
    x <<- newValue
    cache <<- NULL
  }
  
   # returns the stored matrix
  getMatrix <- function() {
    x
  }
  
   # cache the given argument 
  cacheInverse <- function(solve) {
    cache <<- solve
  }
  # get the cached value
  getInverse <- function() {
    cache
  }
  
   #return a list. Each named element of the list is a function
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
  
}

# The following function calculates the inverse of a "special" matrix created with 
# makeCacheMatrix

cacheSolve <- function(x, ...) {
       
        # get the cached value
        inverse <- y$getInverse()
        
   # if a cached value exists return it
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  
  # otherwise get the matrix, caclulate the inverse and store it in the cache
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  
  # return the inverse
  inverse
}

# Testing the functions
# > x = rbind(c(3, 5), c(2, -1))
# m = makeCacheMatrix(x)
# > m$get()
# [,1] [,2]
# [1,]    3    5
# [2,]    2   -1
  
# First run
#> cacheSolve(m)
#            [,1]       [,2]
# [1,] 0.07692308  0.3846154
# [2,] 0.15384615 -0.2307692

# The inverse has already been calculated, so the cache solve retrieve 
# the inverse from the cache
# > cacheSolve(m)
# getting cached data.
#            [,1]       [,2]
# [1,] 0.07692308  0.3846154
# [2,] 0.15384615 -0.2307692
## Write a short comment describing this function
