## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL # sets the value of m to NULL (provides a default if cacheSolve has not yet been used)
y <- NULL # sets the value of y to NULL (provides a default if cacheSolve has not yet been used)
setmatrix <- function(y) {#set the value of the matrix
        x <<- y ## caches the inputted matrix so that cacheSolve can check whether it has changed (note this is within the setmatrix function)
        m <<- NULL # # sets the value of m (the matrix inverse if used cacheSolve) to NULL
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
        # Parts removed
        list(setmatrix = setmatrix, getmatrix = getmatrix, # creates a list to house the four functions
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Need to compare matrix to what was there before!
        m <- x$getinverse() # if an inverse has already been calculated this gets it
        if(!is.null(m)){ # check to see if cacheSolve has been run before
                if(x$setmatrix() == x$getmatrix()) { # check that matrix hasn't changed, and if it hasn't, sends a text message and returns the cached matrix
                        #parts removed
                        return(m)
                }
                # otherwise 
                y <- x$getmatrix() # run the getmatrix function to get the value of the input matrix
                x$setmatrix(y) # run the setmatrix function on the input matrix to cache it
                m <- solve(y, ...) # compute the value of the inverse of the input matrix
                x$setinverse(m) # run the setinverse function on the inverse to cache the inverse
                m # return the inverse
                
}
