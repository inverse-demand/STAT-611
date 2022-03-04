# Question 1: we have a sample of 30 tax accountants from all the states and territories
# of Australia1 and their individual state of origin is specified by a character vector of state
# mnemonics as

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa",
           "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
           "sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa",
           "sa", "act", "nsw", "vic", "vic", "act")


# a. Please use factor function to create a new object name statef
statef <- as.factor(state)

# b. please use the level() function to show how many levels or factors in this data set
levels(statef)

# Question 2: 
#  a. Based on the table below, please create a data frame and use str() functio to look at the structure of the data frame 
data <- data.frame(
  employee = c("Johne Doe", "Peter Gynn", "Jolie Hope"),
  Salary = c(21000, 234000, 268000),
  Age = c(34, 43, 37),
  StartDate = c("2010-11-1", "2008-3-25", "2007-3-14")
)

#  b. use print() function to show your data frame
print(data)

# employee Johne Doe Peter Gynn Jolie Hope
# Salary: 21000, 234000, 268000
# Age: 34 43 37
# StartDate: 2010-11-1 2008-3-25 2007-3-14



# Question 3 
# Please create the following data frame and merge the two data frame based on the requirements below

# Table 1

# employee id: 1 2 3 4 5 
# employee name: Rick Dan Michelle Ryan Gary 
# salary： 623 515 611 729 843
# startdate: 2012-01-01 2013-09-23 2014-11-15 2014-05-11 2015-03-27
# dept: IT Operations IT HR Finance 


# Table 2

# employee id: 6 7 8 
# employee name: Rasmi Pranab Tusar 
# salary: 578 72 632 
# start date: 2013-05-21 2013-07-30 2014-06-17
# dept: IT Operatiosn Fianance 

table1 <- data.frame(
  `employee id` = c(1,2,3,4,5),
  `employee name` = c("Rick", "Dan", "Michelle", "Ryan", "Gary"),
  salary = c(623, 515, 611, 729, 843),
  `start date` = c("2021-01-01", "2013-09-23", "2014-11-15", "2014-05-11", "2015-03-27"),
  dept = c("IT", "Operations", "IT", "HR", "Finance")
)

table2 <- data.frame(
  `employee id` = c(6,7,8),
  `employee name` = c("Rasmi", "Pranab", "Tusar"),
  salary = c(578, 72, 632),
  `start date` = c("2013-05-21", "2013-07-30", "2014-06-17"),
  dept = c("IT", "Operations", "Finance")
)
# a. Please merge table 1 and table 2 by employee name use full outer join 
a.merge <- merge(table1, table2, by = "employee.name", all = TRUE)
a.merge
# b. Please merge table 1 and table 2 by employee name use natural join
b.merge <- merge(table1, table2, by = "employee.name", all = FALSE)
b.merge