##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                            Derivative Practice                           ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#................practice using the function D().................

# Create and expression
my_expression <- expression(5 * x^2)

#find the derivative of the expression wirg respect to x
my_derivative <- D(expr = my_expression,name = "x")

#evaluate derivative at x = 2.8
x <- 2.8

#evaluate!
eval(my_derivative)

#................another practice using the function D().................
#find derivative with respect to x
my_derivative <- D(expr = expression(3.1 * x^4 - 28 * x), name = "x")

# create and store a function 
fx <- expression(x^2)             

# find the derivative with respect to x
df_dx <- D(expr = fx, name = "x")
df_dx

#................another practice using the function D().................
#find derivative with respect to x 
my_derivative <- D(expr = expression (2 * x^3 - 10.5 * x^2 + 4.1), name = "x")
my_derivative

#................another practice using the function D().................
ty <- expression((2 * y^3 + 1)^4 - 8 * y^3)
dy_dx <- D(expr = ty, name = "y")
dy_dx

# find the slope of T(y) at a range of values 
y <- seq(from = -0.4, to = 2.0, by = 0.1)

# evaluate the slope of T(y) at each of those values 
eval(dy_dx)
