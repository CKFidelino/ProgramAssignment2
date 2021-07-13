## Requirement for R Programming
## Coursera Username: CKFidelino
## Mapua University Manila Campus
## ARIDBE
## A Partial Requirement for MATH144 

makeVectorOrCacheMatrix <- function(c = matrix()) {

  
    k <- NULL
  
    
    set <- function(s) {
    
      
      c <<- s
    
      
      k <<- NULL
  }
  
  ## typical variables were changed to c,k,s from x,m,y
  
  
  get <- function() c
  
  
  setmeaninv <- function(inverse) k <<-inv
  
  
  getmeaninv <- function() k
  
  
  list(set = set, get = get,
       setmeaninv = setmeaninv,
       getmeaninv = getmeaninv)
  
  
}



cachemeansolve <- function(c, ...) {
  
  k <- c$getmeaninv()
  if(!is.null(k)) {
    
    ## the statement will apply if the function of the inverse shown will turn out to be NULL
    
    message("gathering the cache data")
    return(k)
  }
  
  
  data <- c$get()
  m <- solve(matrix, ...)
  c$setmeaninv(m)
  m 
  
  
}

## end of the submission for cache matrix Assignment: Programming Assignment 2: Lexical Scoping