## Put comments here that give an overall description of what your
## functions do


## I am to write two functions.
#The first function stores a matrix and calculates its inverse matrix.
#The second function either
# 1) calls the solve function from the first function and then stores the inverse matrix in the cache.
# This is performed the first time the function is called.
# or 2) retrieves the inverse matrix from the cache. 
# This is performed any subsequent times the function is called.


## Write a short comment describing the first function

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



## Write a short comment describing the second function

##### SECOND EXERCISE #####

# I create the cacheSolve function, which can return the inverse matrix from the cache (if it has been stored in cache) or solve a matrix and then store the inverse matrix in the cache.
cacheSolve <- function(x, ...) {
        m <- x$getsolve()# this line tells the function to call the 'getsolve' function from a previous set of matrix functions generated with makeCacheMatrix
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }# this line tells the function that if the inverse matrix is in the cache (the cache is not NULL), then return the inverse matrix from the cache
        data <- x$get() #this line tells the function to 'get' the matrix from a set of matrix functions and store it temporatily in "data"
        m <- solve(data, ...) #this line tells the function to solve the matrix (calculate the inverse matrix) stored in "data"
        x$setsolve(m) # this line tells the function to call the 'setsolve' function from a previous set of matrix functions generated with the makeCacheMatrix
        m #this line tells the function to return the inverse matrix
}
