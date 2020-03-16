# R for Everyone: Advanced Analytics and Graphics Ch01-04.
# ------------------< 1. basics >-------------------------------
library(swirl)
require(swirl)
?require
# Details ... require is designed for use inside other functions;
# it returns FALSE and gives a warning if the package does not exist
# (rather than an error as library() does by default).
??library
library(swirlx) # Error!
require(swirlx) # Warning!
# body(require)
# value <- tryCatch(library(package, ...))
#
###
find("apropos")
apropos("help")
?apropos
help("find")
help.search("find")
find("find")
help("help")
#
###
getwd()
setwd("../")
dir()
#
# ------------------< 2. operators >-------------------------------------
# + - * / ^
1+2*3/4
sqrt(5^6)
#
# == != > <=
1+2*3 <= 4/5^6
# 4/5^6
1:10 < 5
#
# <-  =  
x <- (1:10 < 5)
y = which(x == TRUE)
y
# which(1:10 < 5)
#
###
assign("w", 99)
assign("w[2]", 66)
ls()
# w[1]
w[2]   # NA...
get("w[2]")
rm(w)
ls()
# ------------------< 3. singleton data types >------------------------------------
class(y)
is.numeric(y)
typeof(y)
class(y) <- "define a class by yourself"
y
typeof(y) <- "no, you can't"   # Error!
class(y) <- "integer"
# y
x
class(x)
is.numeric(x)
is.logical(x)
#
# y is an integer vector
# x is a logical vector
nchar(y)
length(y)
nchar(x)
length(x)
# nchar(as.logical(y))
# nchar(as.integer(x))
#
###
# z is a character vector
(z <- as.character(y*100))
class(z)
nchar(z)
length(z)
#
###
# Date is a stored as a double to keep time
(date <- as.Date("2017-02-24"))
(d1 <- as.POSIXct(date)) # CST
(d2 <- as.POSIXlt(date)) # UTC
typeof(date)
typeof(d1)
typeof(d2)
#
# three classes: Date, POSIXt/POSIXct, POSIXt/POSIXlt
?Date
example(Date)
class(date)
class(d1)
class(d2)
date == d2   # Warning!
d1 == d2
# format(date) == format(d2)
# format(d1) == format(d2)
#
### constants: TRUE FALSE NA NULL
is.logical(x)
x[c(1,3)] <- NA
x
is.na(x)
sum(x)   # NA...
sum(x, na.rm = TRUE)
is.null(x)
pos <- which(is.na(x))
# pos
x[-pos]
sum(x[-pos])
# x <- x[!is.na(x)]
#
# -------------------< 4. multi-valued data types >----------------------------------
# concatenate, sequence
c(1:3, 4, 5:9)
seq(5, 9, by=2)
x <- seq(-5, 5, by=1.5)
x
# seq(5, 6, by=2)
# seq(5, -5, by=1.5)
#
### access by index: [:] [c()]
(x <- x > 0)
any(x)
all(x)
x[2]
x[1:3]
x[c(2,4,8)]   # NA...
# length(x)
#
names(x)
names(x) <- c("1st","2nd", "3rd", "4th")
x
#
### factor is an useful data type
as.factor(x)
class(x)
typeof(x)
x.fact <- factor(x)
x.fact
#
# factor is indexed by integers for better efficiency
class(x.fact)
typeof(x.fact)
factor(x, labels = c("Neg", "Pos"))
# levels(x.fact) <- c("Neg", "Pos")
#
# ------------------------< 5. data.frame >----------------------------------
dataf <- data.frame(no = 1:7, name = names(x), check = x, fact = x.fact)
str(dataf)
class(dataf$check)
class(dataf$fact)
View(dataf)
###
nrow(dataf)
ncol(dataf)
dim(dataf)
(tempf <- data.frame(names(x), x, stringsAsFactors = FALSE))
str(tempf)
# stringAsFactors = TRUE is the default setting,
# but it can be changed by options(stringsAsFactors = FALSE)
#
### Use $ to access a column
dataf$name
dataf$name <- as.character(dataf$name)
dataf$name[is.na(dataf$name)] <- c("5th", "6th", "7th")
dataf$name
head(dataf,3)
tail(dataf,3)
rownames(dataf) <- dataf$name
dataf
#
# ------------------------< 6. matrix >----------------------------------
# recycling rule
mx <- matrix(1:15, nrow =6)
mx
nrow(mx); ncol(mx); dim(mx)
#
# matrix transpose, multiplication, element-wise  
t(mx)
mx %*% t(mx)
mx * mx
#
###
colnames(mx) <- c(3:1)
mx
LETTERS[1:3]
colnames(mx) <- c(LETTERS[3:1])
mx
letters[c(1:3,23:30)]
# rownames(mx) <- c(letters[1:nrow(mx)])
#
# ----------------------------< practice by yourself >------------------------------
### Learning on swirl
#
browseURL(url="http://datascienceandr.org/index.html")
if (!require(swirl)) {
  install.packages("swirl")
  library(swirl)
}
install_from_swirl("R Programming Alt")
# install_course_zip("DataScienceAndR.zip")
# setwd("...") if error 1 in extracting from zip file 
###
swirl()
## DataScienceAndR
# 4: 01-RBasic-03-Data-Structure-Object
# 5: 01-RBasic-04-Factors
# 6: 01-RBasic-05-Arrays-Matrices
#
# ------------< EX2. post one of your findings in swirl courses ----------
###
# ------------------------< 7. Function >----------------------------------
#
say.hello <- function()
{
  print("Hello, World!")
}
say.hello()
#
# One argument --------------------------------------- #
sprintf("Hello %s", "John")
hello.person <- function(name)
{
  print(sprintf("Hello %s", name))
}
hello.person("John")
hello.person("Mary")
#
# two arguments? --------------------------------------- #
sprintf("Hello %s, today is %s", "John", "Friday")
hello.person <- function(first, last)
{
  print(sprintf("Hello %s, today is %s", first, last))
}
hello.person("Jane", "Monday")
#
# ------------< HW1: upload a useful function written by yourself -------------
### define a function with an input vector for a purpose
#