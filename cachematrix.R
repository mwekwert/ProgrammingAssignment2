## Create an inverse of a matrix, and cache it for later use. 

## Create a matrix with the inverse of the input matrix.  Store both matrices
## in a cache object

makeCacheMatrix <- function(x = matrix()) {
        inv_orig <- solve(x)
        cache <<- list(x, inv_orig)
        names(cache) <<- c("original", "inverse")
}


## Check the cache to see if the matrix is cached. if it is, return the cached
## result.  if not run calculate the inverse and cache the result

cacheSolve <- function(x, ...) {
        if (identical(x, cache$original) == TRUE) {
                cache$inverse
        } else {
                makeCacheMatrix(x)
        }
}
