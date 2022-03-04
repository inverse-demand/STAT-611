# 1. Write another Fibonacci sequence function, naming it myfib4: This function
# should provide an option to perform either the operations available in myfib2,
# where the sequence is simply printed to the console, or the operations in myfib3,
# where a vector of the sequence is formally returned. Your function should take
# two arguments: the first, thresh, should define the limit of the sequence
# (just as in myfib2 or myfib3); the second, printme, should be a logical value.
# If TRUE, then myfib4 should just print; if FALSE, then myfib4 should return a vector.
# Confirm the correct results arise from the following calls:
  
# – myfib4(thresh=150,printme=TRUE)
# – myfib4(1000000,T)
# – myfib4(150,FALSE)
# – myfib4(1000000,printme=F)


myfib4 <- function(thresh, printme){
  if(printme == FALSE){
    fibseq <- c(1,1)
    counter <- 2
    repeat{ # could technically add in print me within the repeat loop,
      # however, probably would perform better under two separate flows instead of reevaluating the boolean value each time
      fibseq <- c(fibseq,fibseq[counter-1]+fibseq[counter])
      counter <- counter+1
      if(fibseq[counter]>thresh){
        break
      }
    }
    return(fibseq)
    
  } else if(printme == TRUE){ # this is sort of extra, could be fine with just "else"
    fib.a <- 1
    fib.b <- 1
    cat(fib.a,", ",fib.b,", ",sep="")
    repeat{
      temp <- fib.a+fib.b
      fib.a <- fib.b
      fib.b <- temp
      cat(fib.b,", ",sep="")
      if(fib.b>thresh){
        cat("BREAK NOW...")
        break
      }
    }
  } else print("Please provide a boolean value for printme")
}

myfib4(thresh=150,printme=TRUE)
myfib4(1000000,T)
myfib4(150,FALSE)
myfib4(1000000,printme=F)