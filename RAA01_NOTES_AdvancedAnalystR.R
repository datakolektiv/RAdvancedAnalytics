

### --- Comment 01
### --- This is my first R program

a <- 10

b <- 2

print(a^b)

# This is a comment. Will not execute.

print("Hello, World.")

my_array <- c(1,3,5,7,9)
lapply(my_array, function(x) x ^ 2)

library(ggplot2)
data("mtcars")
mtcars$model <- rownames(mtcars)
head(mtcars)
ggplot(data = mtcars, 
       aes(x = mpg, y = qsec,
           label = model, 
           group = gear, 
           color = gear)) + 
  geom_point() + 
  geom_smooth(formula ='y~x',
              method = "lm", 
              linewidth = .15) + 
  ggtitle("mpg vs. qsec in the mtcars dataset, per gear.") + 
  theme_bw() + 
  theme(plot.title = element_text(size = 10)) + 
  theme(panel.border = element_blank())



library(dplyr)
library(nycflights13)
flights |>
  filter(dest == "IAH") |> 
  group_by(year, month, day) |> 
  summarize(
    arr_delay = mean(arr_delay, na.rm = TRUE)
  )


a <- 5

if (a > 10) {
  print("Veliko")
} else {
  print("Malo")
}





