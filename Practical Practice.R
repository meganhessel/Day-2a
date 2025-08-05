##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                            Interactive Session Pt b                           ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#................Plotting a function using ggplots.................

library(ggplot2)

#defining a function 
eq1 <- function(x) {
  3 * x^2 + 4
}

# create values to evulate function over
my_data_range <- data.frame(x = c(1,100))

#plot as a continous curve over a specific range using 'geom_function()'
ggplot(data = my_data_range, aes(x=x)) +
  geom_function(fun = eq1)

#................example plotting derivatives.................
# create new function 
ct <- function(t) {
  t^3
}

my_data_range <- data.frame(t = c(-5,5))

ggplot(data = my_data_range, aes(x =t)) +
  geom_function(fun = ct)

# find the deritivate 
dc_dt <- D(expr = expression(t^3), name = "t")
dc_dt

dc_dt_fun <- function(t) {
  3 *t^2
}

ggplot(data = my_data_range, aes (x = t))+ 
  geom_function(fun = ct, color = "red") + 
  geom_function(fun = dc_dt_fun, color = "blue")

#................partical derivatives.................
f_xyz <- expression(2*x*y - 3 *x^2 * z^3)

# partical with respective to x 
 df_dx <- D(expr = f_xyz, name = "x")
df_dx

df_dz <- D(expr = f_xyz, name = "z")
df_dz

df_dy <- D(expr = f_xyz, name = "y")
df_dy
