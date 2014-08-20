## A set of 2 functions caching the inverse of a matrix



makeCacheMatrix <- function(x = matrix()) {
		## Generating a matrix object that can cache its inverse
	i <- NULL 							## Marker
    set <- function( matrix ) {			## Setting the matrix
            m <<- matrix
            i <<- NULL
    }
    get <- function() {					## Getting the matrix
    	m
    }
    setInverse <- function(inverse) {	## Setting the inverse of the matrix
        i <<- inverse
    }
    getInverse <- function() {			## Getting the inverse of the matrix
       i
    }
    list(set = set, get = get,			## Returing a list
         setInverse = setInverse,
         getInverse = getInverse)
}



cacheSolve <- function(x, ...) { 	    	  
		## Returning a matrix that is the inverse of 'x'
	m <- x$getInverse()					
    if(!is.null(m)) {						  ## Returning the inverse of the matrix if possible
            message("getting cached data")
            return(m)
    }
    data <- x$get()							  ## Calculating the inverse
    m <- solve(data)  data
    x$setInverse(m)
    m 										  ## Returning the matrix 

}

