## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        setmatrix <- function(y) {
                x <<- y
                inv <<- NULL
        }
        getmatrix <- function() x
        setinv <- function(inverse) m <<- inverse
        getinv <- function() m
        list(setmatrix = setmatrix, getmatrix = getmatrix,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached invertible matrix")
                return(inv)
        }
        matrixdata <- x$getmatrix()
        inv <- solve(matrixdata, ...)
        x$setinv(inv)
        return(inv)
}
