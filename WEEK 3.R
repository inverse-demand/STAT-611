# 1. Store the following vector of 15 values as an object in your
# workspace: c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1). Identify the following elements:

val <- c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)

# 1.1  Those equal to 6
val[val == 6]

# 1.2 Those greater than or equal to 6
val[val >= 6]

# 1.3. Those less than 6 + 2
val[val >= (6 + 2)]

# 1.4. Those not equal to 6
val[val != 6]

# 2.Store the vector c(7,1,7,10,5,9,10,3,10,8) as rating. Identify the
# elements greater than 5 OR equal to 2.
rating <- c(7,1,7,10,5,9,10,3,10,8)
rating[(rating >= 5 | rating == 2)] # no elements == 2

# 3.Re-create exactly the following output:
  
# "The quick brown fox
#     jumped over
#  the lazy dogs"
#         \n to print a newline, you can use \t to print a tab.
cat("The quick brown fox \n\tjumped over \nthe lazy dogs")

# 4. The New Zealand government consists of the political parties
# National, Labour, Greens, and Maori, with several smaller parties ¯
# labeled as Other. Suppose you asked 20 New Zealanders which of
# these they identified most with and obtained the following data:
  
#   • There were 12 males and 8 females; the individuals numbered 1,
# 5–7, 12, and 14–16 were females.
# • The individuals numbered 1, 4, 12, 15, 16, and 19 identified with
# Labour; no one identified with Maori; the individuals numbered ¯
# 6, 9, and 11 identified with Greens; 10 and 20 identified with
# Other; and the rest identified with National.

# 4.1. Use your knowledge of vectors (for example, subsetting and
#                                     overwriting) to create two character vectors: sex with entries
# "M" (male) and "F" (female) and party with entries "National",
# "Labour", "Greens", "Maori", and "Other". Make sure the entries are
# placed in the correct positions as outlined earlier.
govt <- 1:20
govt.f <- govt
govt.f[c(5:7, 12, 14:16)] <- "F"; govt.f[govt.f != "F"] <- "M"

# party affiliation
govt.p <- govt
govt.p[c(1, 4, 12, 15, 16, 19)] <- "labour"; govt.p[c(6, 9, 11)] <- "greens"
govt.p[c(10, 20)] <- "other" ; govt.p[c(2, 3, 5, 7, 8, 13, 14, 17, 18)] <- "national"


# 4.2. Create two different factor vectors based on sex and party. Does
# it make any sense to use ordered=TRUE in either case? How has R
# appeared to arrange the levels?
govt.f.f <- factor(x=govt.f, levels=c("M", "F"), ordered=TRUE)
govt.p.f <- factor(x=govt.p, levels=c("labour", "maori", "greens", "other", "national"), ordered=TRUE)

govt.c <- unlist(list(govt.f.f, govt.p.f))

# Order is important in this case because the levels are not in alphabetical order

  
#  4.3. Use factor subsetting to do the following:
#  i. Return the factor vector of chosen parties for only the male
# participants.
govt.c[govt.c == "M"]

# ii. Return the factor vector of genders for those who chose
# National.
govt.c[govt.c == "national"]

# 4.4. Another six people joined the survey, with the results
# c("National","Maori","Maori","Labour","Greens","Labour") for the
# preferred party and c("M","M","F","F","F","M") as their gender.
# Combine these results with the original factors from (1.2).




