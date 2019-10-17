# R als Taschenrechner ----------------------------------------------------
# (Inspiration: https://learnxinyminutes.com/docs/r/)

# On Windows you can use CTRL-ENTER to execute a line.
# On Mac it is COMMAND-ENTER

# Data types and basic arithmetic -----------------------------------------

# INTEGERS


# NUMERICS


# Everything in R is a vector


# VARIABLES and assignment


# BASIC ARITHMETIC


# CHARACTERS / STRINGS

# LOGICALS

# Use | and & for logic operations.
# OR

# AND

# Applying | and & to vectors returns elementwise logic operations

# FACTORS
# The factor class is for categorical data
# Factors can be ordered (like childrens' grade levels) or unordered (like gender)
factor(c("female", "female", "male", NA, "female", "non-binary"))

# NULL

# TYPE COERCION


# FUNCTIONS

## Everything that does something is a function, everything that exists is an object


# Data structures ---------------------------------------------------------
# Vectors, matrices, data frames, and arrays

# ONE-DIMENSIONAL

# We ask for specific elements by subsetting with square brackets
# (Note that R starts counting from 1)


# We can also search for the indices of specific components,

# grab just the first or last few entries in the vector,


# or figure out if a certain value is in the vector

# If an index "goes over" you'll get NA:

# You can find the length of your vector with length()

# You can perform operations on entire vectors or subsets of vectors


# and R has many built-in functions to summarize vectors


# Some more nice built-ins:
# :
# seq


# TWO-DIMENSIONAL (ALL ONE CLASS)

# You can make a matrix out of entries all of the same type like so:


# Unlike a vector, the class of a matrix is "matrix", no matter what's in it

# Ask for the first row

# Perform operation on the first column

# Ask for a specific cell


# Transpose the whole matrix

# Matrix multiplication


# cbind() sticks vectors together column-wise to make a matrix


# Because matrices must contain entries all of the same class,
# everything got converted to the character class

# rbind() sticks vectors together row-wise to make a matrix

# TWO-DIMENSIONAL (DIFFERENT CLASSES)
# For columns of different types, use a data frame



# The data.frame() function converts character vectors to factor vectors
# by default; turn this off by setting stringsAsFactors = FALSE when
# you create the data.frame


# There are many twisty ways to subset data frames, all subtly unalike


# Plots -------------------------------------------------------------------
# BUILT-IN PLOTTING FUNCTIONS

# Scatterplots!


# Plot regression line on existing plot


# Histograms!


# Barplots!


# Piecharts
# Graphical parameters
cols <- c('#0292D8', '#F7EA39', '#C4B632')
par(mar = c(0, 1, 0, 1))


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
