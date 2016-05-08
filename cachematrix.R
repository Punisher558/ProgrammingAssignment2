## Put comments here that give an overall description of what your
## functions do
## These functions cache and compute the inverse of a matrix
## 
## The makeCacheMatrix function does the following:
##  Sets the value of the matrix
##  gets the value of the matrix
##  sets the value of the inverse matrix
##  gets the value of the inverse matrix

## 

makeCacheMatrix <- function(x = matrix()) {
  
  m <-NULL
  set <-function (y) {
      
          x <<- y
          m <<- NULL
    
    
  }
  
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## This function computes the cached result of the above function if it is availaible as an inverse.

cacheSolve <- function(x, ...) {
       
  m <- x$getinverse()
  if(!is.null(m)){
        message("getting cached data")
        return(m)
    
  }
  
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
##Here is example of the function results

## source(cachematrix.R)
## > b <- makeCacheMatrix(matrix(c(8,2,2,8),c(2,2)))
## > cacheSolve(b)
## [,1]        [,2]
## [1,]  0.13333333 -0.03333333
## [2,] -0.03333333  0.13333333
