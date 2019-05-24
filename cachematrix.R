## Put comments here that give an overall description of what your
## functions do
## Author: Esraa Hamouda
## this is an assignment in R to make object makeMarix and then get its inverse

## Write a short comment describing this function
##This function creates a special "matrix" object that can cache its inverse
library(matlib)
makeCacheMatrix <- function(x = matrix()) {
  
	inversedMatrixResult <- NULL
	setMatrixValues <- function (param){
		x<<- param
		inversedMatrixResult <<- NULL
	}
	getMatrixValues <- function() x
	setInverse <- function(inversedMat) {
		inversedMatrixResult <<-inversedMat	
	}
	getInversedMatrix <- function() inversedMatrixResult

	list(setMatrixValues=setMatrixValues, 
	getMatrixValues = getMatrixValues,
	setInverse = setInverse,
	getInversedMatrix= getInversedMatrix	)
}


## Write a short comment describing this function
 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   inv <-x$getInversedMatrix()
   if(!is.null(inv)){
    
     message("Inverse is already calculated")
     return(inv);
   }
   message(det(inv))
   matrixValues <-x$getMatrixValues()
   inv <- Inverse(matrixValues, ...)
   
   x$setInverse(inv)
    
   
} 

