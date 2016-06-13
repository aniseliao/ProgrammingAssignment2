## Week 3 Submission

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv_m <- NULL
    set <- function(y) {
        x <<- y
        inv_m <<- NULL
    }
    get <- function() x
    setinverse<- function(inverse) inv_m <<-inverse
    getinverse <- function() inv_m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       inv_m <- x$getinverse()
    if (!is.null(inv_m)) {
        message("getting cached inverse matrix")
        return(inv_m)
    } 
        data <- x$get()
        inv_m <- solve(data, ...)
        x$setinverse(inv_m)
        inv_m
}
