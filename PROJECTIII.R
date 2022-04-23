ss <- read.csv("C:/Users/Shoya/Downloads/spotify_songs.csv")
head(ss[with(ss, order(track_name)),][c(2, 10, 12:13, 15, 17:22)], n = 50)
# Looks like songs can technically encompass multiple playlist genres
# To conduct the analysis correctly, need to make sure that the values are actually distinct (remove duplicates)
ss2 <- unique(ss[c(2, 10, 12:13, 15, 17:22)])
head(ss2[with(ss2, order(track_name)),], n = 50)
nrow(ss2)
# Looks like songs that encompass multiple genres actually have their own characteristics per playlist genre
# This is ok, considering a song can encompass multiple genres, and add their own propensities based on who listens to the song

# Now to use filtered dataframe

# Maybe create the vertical lines within histogram plot with the mean, median, and mode?

Mode <- function(x) {
  y <- unique(x)
  y[which.max(tabulate(match(x, y)))]
}

# get distribution of each genre for each metrics
hist_plot <- function(df=ss2){
  data = df[-1]
  genre_mode <- aggregate(data[-1], list(genre = data$playlist_genre), Mode)
  genre_mode$aggregation <- 'mode'
  genre_mean <- aggregate(data[-1], list(genre = data$playlist_genre), mean)
  genre_mean$aggregation <- 'mean'
  genre_median <- aggregate(data[-1], list(genre =data$playlist_genre), median)
  genre_median$aggregation <- 'median'
  table <- do.call("rbind", list(genre_mode, genre_mean, genre_median))
  
  metric <- colnames(data[-1])
  genre <- unique(data[[1]])
  for (me in metric){
    windows.options(width=10, height=10)
    par(mfrow=c(3,2))
    for (ge in genre){
      name <- sprintf("Genre: %s - Histogram of %s", ge, me)
      x <- sprintf("%s, %s", me, ifelse(me == "tempo",
                                           "Beats Per Minute",
                                           "Scale of 0 to 1"))
      hist(df[df$playlist_genre==ge, me], main = name, xlab = x, col = 'grey', border = 'grey')
      abline(v=genre_mode[genre_mode$genre == ge, me], col='blue', lty = 'dashed')
      abline(v=genre_mean[genre_mean$genre == ge, me], col='red', lty = 'dashed')
      abline(v=genre_median[genre_median$genre == ge, me], col='green', lty = 'dashed')
      legend(
        "topright", 
        lty=c('dashed','dashed','dashed'),
        col=c("blue", "red", "green"), 
        legend = c(paste("Mode", genre_mode[genre_mode$genre == ge, me],sep = ": "),
                   paste("Mean", round(genre_mean[genre_mean$genre == ge, me], 3),sep = ": "),
                   paste("Median", genre_median[genre_median$genre == ge, me],sep = ": ")),
        bg="transparent"
      )
    }
    #dev.new()
  }
  return(table)
} # create a nested for loop, one for genre, and one for each KPI

final <- hist_plot()
print(final)


