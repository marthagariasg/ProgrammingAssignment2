## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse
## where "mt" is a matrix
## 
makeCacheMatrix <- function(x = matrix()) {
inversa <- NULL
set <-function(x) {
        mt<<-x;
        inversa<<-null;
}
get<-function() return(mt);
setinv<-function(inv) inversa<<-inv;
getinv<-function() return(inversa);
return(list(set=set,get=get,setinv=setinv,getinv=getinv))
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inversa <- mt$getinv() 
    if(!is.null(inversa)) { 
       message("leyendo memoria cache...") 
       return(inversa) 
   } 
   datos <- mt$get() 
   invsersa <- solve(datos, ...) 
   mt$setinv(inversa) 
   return(inversa)
}
