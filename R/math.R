# Tag 1

# R als Taschenrechner ----------------------------------------------------
# (Inspiration: https://learnxinyminutes.com/docs/r/)

# Comments start with number symbols.

# You can't make multi-line comments,
# but you can stack multiple comments like so.

# in Windows you can use CTRL-ENTER to execute a line.
# on Mac it is COMMAND-ENTER


# Data types and basic arithmetic -----------------------------------------

# INTEGERS
5L
5L + 3L

# NUMERICS
5
# Everything in R is a vector
c(3, 3, 3, 2, 2, 1)
5e4
avogadro <- 6.02e23
Inf

# VARIABLES
y <- "1"
x = 5
TRUE -> z

# BASIC ARITHMETIC
10L + 66L
53.2 - 4
2.0 * 2L
3L / 4L
5 %/% 2
5 %% 2
0 / 0
sin(pi / 2)
sin(pi)


?sin

# batman <- function() c(rep(0/0, 10), "Batman!")
# batman()

# VECTORS
c(1,2,3) + c(1,2,3)
4 * c(1,2,3)
a <- c(1, 2, 3)
a <- 1:3

?`:`

b <- c(1,2,3,1,2,3)
b * c(1,2)
b * rep(1:2, length.out = length(b) )

# CHARACTERS / STRINGS
"Horatio"
class("Horatio")
length("Horatio")
length(c("Call","me","Ishmael"))
nchar("Horatio")
# You can do regex operations on character vectors:
letters
month.abb

# LOGICALS
class(TRUE)
class(FALSE)
TRUE == TRUE
TRUE == FALSE
FALSE != FALSE
FALSE != TRUE

# Use | and & for logic operations.
# OR
TRUE | FALSE
# AND
TRUE & FALSE

# Applying | and & to vectors returns elementwise logic operations
c(TRUE,FALSE,FALSE) | c(FALSE,TRUE,FALSE)
c(TRUE,FALSE,TRUE) & c(FALSE,TRUE,TRUE)

# FACTORS
# The factor class is for categorical data
# Factors can be ordered (like childrens' grade levels) or unordered (like gender)
factor(c("female", "female", "male", NA, "female", "non-binary"))

# NULL
NULL

# TYPE COERCION
as.character(c(6, 8))
as.logical(c(1,0,1,1))

c(TRUE, 4)
c("dog", TRUE, 4)
as.numeric("Bilbo")

# FUNCTIONS
square <- function(x) x^2

root   <- function(x){
  sqrt(x)
}

## Everything that does something is a function, everything that exists is an object


# Data structures ---------------------------------------------------------
# Vectors, matrices, data frames, and arrays
# ONE-DIMENSIONAL

vec <- c(8, 9, 10, 11)
vec
# We ask for specific elements by subsetting with square brackets
# (Note that R starts counting from 1)

vec[1]
letters[18]
LETTERS[13]
month.name[9]
c(6, 8, 7, 5, 3, 0, 9)[3]
# We can also search for the indices of specific components,
which(vec %% 2 == 0)
# grab just the first or last few entries in the vector,
head(vec, 1)
tail(vec, 2)
# or figure out if a certain value is in the vector
any(vec == 10)
# If an index "goes over" you'll get NA:
vec[6]
# You can find the length of your vector with length()
length(vec)
# You can perform operations on entire vectors or subsets of vectors
vec * 4
vec[2:3] * 5
any(vec[2:3] == 8)
# and R has many built-in functions to summarize vectors
mean(vec)
median(vec)
var(vec)
sd(vec)
max(vec)
min(vec)
sum(vec)
# Some more nice built-ins:
5:15
seq(from=0, to=31337, by=1337)

# TWO-DIMENSIONAL (ALL ONE CLASS)

# You can make a matrix out of entries all of the same type like so:
mat <- matrix(nrow = 3, ncol = 2, c(1,2,3,4,5,6))
mat

# Unlike a vector, the class of a matrix is "matrix", no matter what's in it
class(mat)
# Ask for the first row
mat[1,]
# Perform operation on the first column
3 * mat[,1]
# Ask for a specific cell
mat[3,2]

# Transpose the whole matrix
t(mat)

# Matrix multiplication
mat %*% t(mat)

# cbind() sticks vectors together column-wise to make a matrix
mat2 <- cbind(1:4, c("dog", "cat", "bird", "dog"))
mat2

class(mat2)
typeof(mat2)
# Because matrices must contain entries all of the same class,
# everything got converted to the character class

# rbind() sticks vectors together row-wise to make a matrix
mat3 <- rbind(c(1,2,4,5), c(6,7,0,4))
mat3

# TWO-DIMENSIONAL (DIFFERENT CLASSES)
# For columns of different types, use a data frame

students <- data.frame(c("Cedric","Fred","George","Cho","Draco","Ginny"),
                       c(3,2,2,1,0,-1),
                       c("H", "G", "G", "R", "S", "G"))
names(students) <- c("name", "year", "house") # name the columns


nrow(students)
ncol(students)
dim(students)

# The data.frame() function converts character vectors to factor vectors
# by default; turn this off by setting stringsAsFactors = FALSE when
# you create the data.frame
?data.frame

# There are many twisty ways to subset data frames, all subtly unalike
students$year
students[, 2]
students[, "year"]

# Plots -------------------------------------------------------------------
# BUILT-IN PLOTTING FUNCTIONS

# Scatterplots!
x <- 1:20
y <- x + rnorm(length(x))

plot(x, y, main = "fake data")

# Plot regression line on existing plot
abline(lm(y ~ x), col = "red")

# Histograms!
hist(y)

# Barplots!
values <- c(1,4,5,1,2)
names(values) <- c("red","blue","purple","green","yellow")
barplot(values, col = names(values))


cols <- c('#0292D8', '#F7EA39', '#C4B632')
# Graphical parameters
par(mar = c(0, 1, 0, 1))

# Excercise: Can find the documentation for `par()` and make the background grey

pie(
  c(280, 60, 20),
  col = cols,
  init.angle = -50,
  border = NA, labels = NA
)

legend(1, 1, xjust = 0.5,
       yjust = 1,
       fill = cols,
       border = NA,
       legend = c('Sky', 'Sunny side of pyramid', 'Shady side of pyramid')
)
