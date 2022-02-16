# a. Create the following two vectors:
#   vec1 <- c(2,1,1,3,2,1,0)
#   vec2 <- c(3,8,2,2,0,0,0)

#   Please use vec1 and vec2 to write and execute a line of code
#   that multiplies the corresponding elements of the two vectors
#   together if their sum is greater than 3. Otherwise, the code
#   should simply sum the two elements.
  
vec1 <- c(2,1,1,3,2,1,0)
vec2 <- c(3,8,2,2,0,0,0)

for (i in 1:length(vec1)){
  if(vec1[i] + vec2[i] > 3){
    x <- vec1[i] + vec2[i] # sums if greater than 3 at element [i]
  } else
  x <- vec1[i] * vec2[i] # else, if criteria is not met, multiply
  print(x)
}
  
#   b. 
#   The factorial of a non-negative integer x, expressed as x!, refers to x
#   multiplied by the product of all integers less than x, down to 1.
  
#   Formally, it is written like this:
#     “x factorial” = x! = x × (x − 1) × (x − 2) × . . . × 1
  
#   Note that there is a special case of zero factorial, which is
#   always 1. That is:
    
#     0! = 1
  
#   For example, to work out 3 factorial, you compute the
#   following:
    
#     3 × 2 × 1 = 6
  
#   To work out 7 factorial, you compute the following:
    
#     7 × 6 × 5 × 4 × 3 × 2 × 1 = 5040
  
#   Write a loop that computes and stores as a new object
#   the factorial of any non-negative integer mynum by decrementing
#   mynum by 1 at each repetition of the braced code.

### I'll just write a function for this, be a bit easier than repeating code / rerunning the code ###
mynum <- function(num_to_factorial){
  mynum <- num_to_factorial
  for(i in mynum:2){
    if(mynum == 0){
      n <- 1
      }
    else if(i == mynum){ # Not technically "decrementing" the mynum object.. but using the ith iteration of the sequence made more sense in my head
      n <- i*(i-1)
      } else 
        n <- n*(i-1)
  }
  print(n)
}
#   Using your loop, confirm the following:
#     i. That the result of using mynum <- 5 is 120
mynum(5)
#   ii. That using mynum <- 12 yields 479001600
mynum(12)

#   iii. That having mynum <- 0 correctly returns 1
mynum(0)