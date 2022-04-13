# Load the MASS package and inspect the help file for the UScereal
# data. This data frame provides nutritional and other information
# concerning breakfast cereals for sale in the United States in the
# early 1990s.
library(MASS)

# i. Create a copy of the data frame; name it cereal. To ease plotting, collapse the mfr column (manufacturer) of 
# cereal to be a factor with only three levels, with the corresponding labels
# "General Mills", "Kelloggs", and "Other". Also, convert the shelf
# variable (shelf number from floor) to a factor.
cereal <- UScereal
cereal$mfr <- factor(ifelse(cereal$mfr == "G", "General Mills", ifelse(cereal$mfr == "K", "Kelloggs", "Other")))
cereal$shelf <- factor(cereal$shelf)

# ii. Using cereal, construct and store two ggplot objects.
# 1. A scatterplot of calories on protein. Points should be colored
# according to shelf position and shaped according to manufacturer. 
library(ggplot2)
gg1 <- ggplot(cereal,aes(x=protein,y=calories,color=shelf,shape=mfr)) +
  geom_point() +
  #geom_smooth(method="lm",level=0.9,fullrange=FALSE,alpha=0.2) +
  ggtitle("Protein vs Calories Scatter Plot") +
  labs(x="Protein",y="Calories")
gg1

# 2. A set of kernel estimates of calories, with filled color differentiating shelf positions.
# Use 50 percent opaque fills
gg2 <- ggplot(data=cereal,aes(x=calories,fill=shelf)) + geom_density(alpha=0.5) +
  ggtitle("Cereal Calorie Probability Densities") +
  labs(x="Calories",y="Kernel Estimate")


# iii. Arrange the two plots in ii on a single device.
library(gridExtra)
grid.arrange(gg1,gg2)