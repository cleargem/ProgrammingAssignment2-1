## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- matrix()
    set <- function(y){
        x <<- y
        m <<- matrix()
    }
    get <- function() x
    setinv <- function(inv) m <- inv
    getinv <- function() m
    list(set=set, get=get, 
         setinv=setinv,
         getinv=getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinv()
    if(!is.na(m)){
        message("getting cache data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinv(m)
    m
}
