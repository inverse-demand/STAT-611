# 1. Please Create a new variable, called "Feedback" which will contain
# the numbers 3,4,5,3,2,3,2,1,4,5,3,2,3,4,5,2,1,3,4,5,1,2,3,2,3,4,1,4,5,2,3

Feedback <- c(3,4,5,3,2,3,2,1,4,5,3,2,3,4,5,2,1,3,4,5,1,2,3,2,3,4,1,4,5,2,3)

# 1)Please check the mode and class of feedback
mode(Feedback)
class(Feedback)

# 2)Please extract the 10th number

Feedback[10]

# 3.
# Create the matrix below
# [,1] [,2] [,3]
# [1,] 7 -7 7
# [2,] 7 -7 7
# [3,] 7 -7 7

a.matrix <- matrix(data = c(7,-7,7,
                            7,-7,7,
                            7,-7,7),
                   nrow = 3,
                   ncol = 3,
                   byrow = TRUE)
a.matrix
# 1) Name columns and rows as " row 1", "row 2", "row 3","col 1", "col 2", "col 3"
row.names(a.matrix) <- c("row 1", "row 2", "row 3")
colnames(a.matrix) <- c("col 1", "col 2", "col 3")

a.matrix

# 2)Extract the second and the third column
a.matrix[,2:3]

# 3)Extract the third and second row
a.matrix[c(3,2),]

# 4)get the diagonal data
diag(a.matrix)

# 5)Please delete the second row
a.matrix <- a.matrix[-2,] # I am guessing to overwrite the original matrix..

# 6)Based on question 6, please overwrite the second row of the matrix with c(1,2,3)
a.matrix[2,] <- c(1,2,3)
a.matrix

# 5. Please create an array (with 3*3*2 dimension) shown below, name it as myarray

# , , Matrix1
# 
# COL1 COL2 COL3
# ROW1 5 10 13
# ROW2 9 11 14
# ROW3 3 12 15

# , , Matrix2

# COL1 COL2 COL3
# ROW1 5 10 13
# ROW2 9 11 14
# ROW3 3 12 15

v1 <- c(5,9,3)
v2 <- c(10,11,12,13,14,15)

myarray <- array(c(v1,v2),dim = c(3,3,2))
myarray

# 1)please extract the second row of the second layer of myarray
myarray[2,,2]

# 2)Please extract the first rows of both layers of myarray
myarray[1,,] #idk if this is correct...

# 3)please extract the third and first element from the second row of the second layer of myarrary
myarray[2,c(3,1),2]