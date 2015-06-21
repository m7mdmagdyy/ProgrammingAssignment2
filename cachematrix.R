## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
## Method to set the matrix
+ set <- function( matrix ) {
+ m <<- matrix
+ i <<- NULL
+ }
## Method to get the matrix
+ get <- function() {
+ m
+ }
## Method to set the inverse of the matrix
+ setInverse <- function(inverse) {
+ i <<- inverse
+ }
## Method to get the inverse of the matrix
+ getInverse <- function() {
+ i
+ }
+ list(set = set, get = get,
+ setInverse = setInverse,
+ getInverse = getInverse)
+ }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        + m <- x$getInverse()
+ if( !is.null(m) ) {
+ message("getting cached data")
+ return(m)
+ data <- x$get()
+ m <- solve(data) %*% data
+ x$setInverse(m)
+ m
+ }

}
