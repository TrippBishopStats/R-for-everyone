# Create some vectors. Note, a vector is a 1D data structure where all elements are of the same type
x <- 1:10
y <- -4:5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse", "Basketball", "Tennis", "Cricket", "Soccer")

# create a data frame from the vectors that we have already defined. The vectors become the columns
# we can specify names for the columns like below. If we don't set column names, then R will use the vector names
theDF <- data.frame(First=x,Second=y,Sport=q)

class(theDF$Sport)

View(theDF)

# get dimensional info from the data frame.
nrow(theDF)
ncol(theDF)
dim(theDF)

# print out the column and row names.
names(theDF)
names(theDF)[3]
rownames(theDF)

# we can assign row indexes if we don't want to use the default values.
rownames(theDF) <- c("One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten")
rownames(theDF)

# this will revert the row indices to the default.
rownames(theDF) <- NULL

# print the first rows
head(theDF)
head(theDF, n=7)

# print the last rows
tail(theDF)
tail(theDF, n=7)

# get the type of the variable
class(theDF)

# get a single column from the data frame by name
theDF$Sport

# get a single value from the data frame.
theDF[3,2]

# we can use vectors to select more than one row or column at a time
theDF[3, 2:3]

theDF[c(3,5), 2]

# since we're returning more than one column we get the column names with this call.
theDF[c(3,5), 2:3]

# get all rows, 3rd column
theDF[,3]

# get all rows and columns 2 & 3
theDF[,2:3]

# to get columns by name, use a character vector
theDF[, c("First", "Sport")]