cacheSolve <- function(mx, ...) {
        inverse <- mx$ginv()
        if(!is.null(inverse)) {
                message("Got cached data")
                return(inverse)
        }
        data <- mx$get()
        invserse <- solve(data, ...)
        mx$sinv(inverse)
        return(inverse)
}
