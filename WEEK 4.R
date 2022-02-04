# 1. Turn the following:
#  [,1] [,2] [,3] [,4]
# [1,] 2 5 8 11
# [2,] 3 6 9 12
# [3,] 4 7 10 13
# into the following:
#  [1] "2" "5" "8" "11" "3" "6" "9" "12" "4" "7" "10" "13"
mat <- matrix(data = c(2,3,4,5,6,7,8,9,10,11,12,13), nrow = 3, ncol = 4, byrow = FALSE)
mat

as.character(mat)

# 2. Consider the following line of code:
foo <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)

# Decide yourself which of the following statements are true and which are false and then use R to confirm:

# 2.1  The length of foo is 8.
# This is true, since Null and Na/NaN are special values
length(foo)

# 2.2 Calling which(x=is.na(x=foo)) will not result in 4 and 8.

# This is false, the code will return values 4, 8 based on position, which doesn't include special values
which(x=is.na(x=foo))

# 2.3 Checking is.null(x=foo) will provide you with the locations of the two NULL values that are present.

# That would be false because it will only assess if the object contains null values
is.null(x=foo)

# 2.4  Executing is.na(x=foo[8])+4/NULL will not result in NA.

# True, although it won't return anything significant
is.na(x=foo[8])+4/NULL

# 3. As closely as you can, re-create the following plot:

yy <- 7:13; xx <- -3:3
axis <- cbind(xx,yy)

plot(axis, type = "n")
abline(h=c(-3,13),lty=2,lwd=2)
abline(h=c(-3,7),lty=2,lwd=2)
abline(v=c(-3,13),lty=2,lwd=2)
abline(v=c(3,13),lty=2,lwd=2)
text(x = 0, y = 10, labels = "Something\nProfound", cex = 1.5)
arrows(x0=-2.5,y0=12.5,x1=-1,y1=10.5)
arrows(x0=-2.5,y0=10,x1=-1,y1=10)
arrows(x0=-2.5,y0=7.5,x1=-1,y1=9.5)
arrows(x0=2.5,y0=12.5,x1=1,y1=10.5)
arrows(x0=2.5,y0=10,x1=1,y1=10)
arrows(x0=2.5,y0=7.5,x1=1,y1=9.5)
  