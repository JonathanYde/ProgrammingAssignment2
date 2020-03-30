## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##### FIRST EXERCISE #####

# I create the makeCacheMatrix function, which can store a matrix and calculate the the inverse matrix (solve the matrix)
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        } # the 'set' function is used to load a matrix into 'makeCacheMatrix'
        get <- function() x # the 'get' function is used to return a matrix loaded into 'makeCacheMatrix'
        setsolve <- function(solve) m <<- solve # the 'setsolve' function calculates the inverse matrix
        getsolve <- function() m # the 'getsolve' function returns the inverse matrix
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
