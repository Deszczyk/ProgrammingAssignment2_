## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCachematrix function returnes the list of functions to get and set the matrix and it's inverse


makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  set <- function(y){
    x<<- y
    i <<- NULL
  }

  get <-function()x
  setinverse <- function(z) i <<- z
  getinverse <- function()i
  list(set =set, get = get, setinverse= setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

## Catchesolve function returning the value of the inverse of the matrix. F
## First it check if there already is catched value. If yes it returns this value if not compute the inverse and catch its value.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  i <- x$getinverse() 
  if(!is.null(i)) {  return(i) }
  
  data <- x$get() 
  i <- solve(data) 
  x$setinverse(i) 
  i
    } 
  







