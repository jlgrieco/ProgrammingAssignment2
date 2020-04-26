## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function produces the inverse of a matrix
makeCacheMatrix <- function(x = matrix()) {
  inversed <- NULL
  set <- function(y) {
      x <<- y
      inverse <<- NULL
  }
  get <- function() x
  set_inverse <- function(inverse) inversed <<- inverse
  get_inverse <- function() inversed
  list(set = set, get = get, set_inverse = set_inverse, get_inverse = set_inverse)
}



## Write a short comment describing this function
# This function creates the inverse of the function above, saving computational power if unchanged.
cacheSolve <- function(x, ...) {
       inversed < - x$get_inverse()
       if(!is.null(inversed)) {
           message("getting cached data")
           return(inversed)
         }
       data <-x$get()
       inversed <- solve(data,...)
       x$set_inverse(inversed)
       inversed
  }

    
        ## Return a matrix that is the inverse of 'x'

