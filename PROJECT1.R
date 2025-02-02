# Project I: Covers all the contents from week 1 to week 5. 
# In the contributed package car, there's a data frame called Duncan, which provides historical data on perceived job prestige in 1950. Install the car package and access the Duncan data set and its help file. Then, do the following: 

install.packages("car")
library(car)
data(Duncan)



# 1.	(25 points) Write R code that will plot education on the x-axis and income on the y-axis, with both x- and y-axis limits fixed to be [0,100]. Provide appropriate axis labels.
# For jobs with a prestige value of less than or equal to 80, use a black point (pch=16) as the point character.
# For jobs with prestige greater than 80, use a blue circle (pch=1)
y = Duncan$income
x = Duncan$education
z = Duncan$prestige

plot(y~x,
     xlim = c(0, 100),
     ylim = c(0, 100),
     xlab = "% of males in occupation who were High School grads",
     ylab = "% of males in occuption earning $3.5k+",
     pch = ifelse(z <= 80, 16, 1),
     col = ifelse(z > 80, "blue", "black"))

# 2.	(20 points) Add a legend explaining the difference between the two types of points and then save a .pdf file of the image. 
legend("topleft",
       legend = c("Jobs with a prestige value <= to 80",
                  "Jobs with prestige > 80"),
       pch = c(16, 1),
       col = c("black", "blue"))

# saving plot
pdf("PROJECT1_PLOT.pdf")
plot(y~x,
     xlim = c(0, 100),
     ylim = c(0, 100),
     xlab = "% of males in occupation who were High School grads",
     ylab = "% of males in occuption earning $3.5k+",
     pch = ifelse(z <= 80, 16, 1),
     col = ifelse(z > 80, "blue", "black"))
legend("topleft",
       legend = c("Jobs with a prestige value <= to 80",
                  "Jobs with prestige > 80"),
       pch = c(16, 1),
       col = c("black", "blue"))
dev.off()

# 3.  (20 points) Add a new column name it as TypeCode, your output should look like this:
Duncan$TypeCode <- unclass(factor(x=Duncan$type,
                                  levels = c("prof", "wc", "bc"),
                                  ordered = TRUE))

# 4.	(10 points) Write the object of question (3) directly to disk, calling it newduncanoutput.txt. Briefly inspect the contents of the file in a text editor.
write.table(Duncan, "newduncanoutput.txt", row.names = FALSE, col.names = TRUE)

# 5.	(15 points) Please print all the jobs with income, education and prestige less than 20.
x <- Duncan[Duncan$income < 20 & Duncan$education < 20 & Duncan$prestige < 20,]
print(x)

# 6.	(10 points) Write the result of question (5) into a csv file and save it as lessthan20.csv 
write.csv(x, "lessthan20.csv", row.names = TRUE)