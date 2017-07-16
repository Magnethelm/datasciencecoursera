## Put comments here that give an overall description of what your
## functions do
## In order to speed up computation, we cache our data, here a matrix,
## to make it available for fast access for our system. Furthermore,
## we would like to receive the inverse of a given matrix. 


## Write a short comment describing this function
## Utilising the description how to create a "vector" storing a list on Coursera,
## we can transform it doing the very same with a matrix. 

makeCacheMatrix <- function(x = matrix()) {
        ##Set the value of the matrix
                inver <- NULL
                set <- function(y) {
                                x <<- y
                                inver <<- NULL
                }
        ##Get the value of the matrix
                get <- function() x 
        ##Set the value of the inverse matrix
                setinverse <- function(inverse) inver <<- inverse
        ##Get the value of the inverse matrix
                getinverse <- function() inver
                list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)             
}

## Write a short comment describing this function
## Again, we can use the function provided but need to replace
## the mean with a solving function that can process the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                inver <- x$getinverse()
                if(!is.null(inver)) {
                  
                message("getting cached data")
                return(inver)
                }
  data <- x$get()
  inver <- solve(data,...)
  x$setinverse(inver)
  inver
}

