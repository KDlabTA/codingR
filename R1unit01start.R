rm(list=ls())
########################################################
# Basic Coding: environment & resources
#######################################
# 1.CRAN: download R
# browseURL("https://cran.r-project.org/")
# 2.RStudio: download IDE
# browseURL("https://www.rstudio.com/products/rstudio/download/")

# 3.RStudio IDE
# script editor, console, environment, ...
# MENU: Tools/Golbal Options...
# Incorrect file encoding 不正確的中文檔案編碼
# (1) File/Reopen with Encoding...
# OR
# (2) Tools/Global Options => Code/Saving/ => Default text encoding/Change...

# 4.installing/loading the package:
if(!require(installr)) {
  install.packages("installr")
  library(installr)
} #load / install+load installr

# 5.Learning on swirl
# browseURL(url="https://github.com/TaiwanRUserGroup/DSC2015Tutorial#%E5%AE%89%E8%A3%9Dswirl%E8%AA%B2%E7%A8%8B")
# source("http://taiwanrusergroup.github.io/R/init.R")

if (!require(swirl)) {
  install.packages("swirl")
  library(swirl)
}
# ----- execute swirl() function  -----
# swirl()

# 6.See how to use a function
args(load)
args(example)
?example
example('mean')
?mean
?sd
example('sd')

# 7.Execute a script file
# source("R1unit01start.R", echo=TRUE) # maybe encoding Error!
# Be careful of the infinite recursion...
# source("R1unit01start.R", encoding="BIG5",echo=TRUE)
# source("R1unit01start.R", echo=FALSE)
matrix(1:30, nrow = 4)   # Warning
suppressWarnings(matrix(1:30, nrow = 4))
# options("warn")
# options(warn=-1)

# 8.Keyboard shortcuts for RStudio
# Move focus to Source Editor	Ctrl+1,   Move focus to Console  Ctrl+2
# Move focus to Help,...Viewer  Ctrl+3,...Ctrl+9
#
# Clear console "Ctrl+L",     Save active document	Ctrl+S
# Close all open documents	Ctrl+Shift+W
# Change working directory  "Ctrl+Shift+H"
# Interrupt currently executing command  "Esc"
#
# Undo	"Ctrl+Z",     Redo      "Ctrl+Shift+Z"
# Copy	Ctrl+C,     Paste     Ctrl+V	(Command in Mac)
# Cut   Ctrl+X,   Select All  Ctrl+A	(Command in Mac)

# ----- 9.get articles for help -----
vignette()
vignette("hcl-colors")
vignette(package = "GGally") # maybe not installation!

if (!require(devtools)) {
  install.packages("devtools")
  library(devtools)
} # devtools
# list the loaded packages: (.packages())
if (!require(GGally)) {
  install_github("cran/GGally")
  # install.packages("GGally")
  library(GGally)
} # GGally
help(package = GGally)
# vignette(topic = "ggmatrix")
# vignette("ggpairs", package = "GGally")
if (!require(dplyr)) {
  install.packages("dplyr")
  library(dplyr)
} # dplyr

vignette(package="DT")
if (!require(DT)) {
  install.packages("DT")
  library(DT)
} # DT
help(package = DT)
vignette("DT")
# browse the package vignette
########################################################
# install_from_swirl("R Programming")
# install_from_swirl("R Programming Alt")
# swirl()

# Try the following units to learn the basics
# (1) R Programming (1~15)
# 1: Basic Building Blocks
# 2: Workspace and Files
# 3: Sequences of Numbers
#
# (2) R Programming Alt (1~13)
# 1: Basic Building Blocks
# 2: Sequences of Numbers
# 3: Vectors
#
# (3) DataScienceAndR (in Chinese, 1~21)
# 1: 00-Hello-DataScienceAndR
# 2: 01-RBasic-01-Introduction
# 3: 01-RBasic-02-Data-Structure-Vectors
########################################################
