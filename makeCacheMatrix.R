makeCacheMatrix <- function(mx = matrix()) {
        inverse <- NULL
        set <- function(x) {
                mx <<- x;
                inverse <<- NULL;
        }
        get <- function() return(mx);
        sinv <- function(inv) inverse <<- inv;
        ginv <- function() return(inverse);
        return(list(set = set, get = get, sinv = sinv, ginv = ginv))
}
