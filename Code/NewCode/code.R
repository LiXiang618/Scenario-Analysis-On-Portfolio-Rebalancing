rm(list = ls())

library(e1071) 

#Basic parameters
T = 1
n = 2520
dt = T/n

#Stock parameters
mu =  0.00
sigma = 0.50
S_0 = 100

#Risk-free asset parameters
r = 0.02
B_0 = 100

#Portfolio Initiation
Portfolio_init = function()
{
  Cash <<- 1000000
  w1 <<- 0.5
  w2 <<- 0.5
  numS <<- Cash*w1/S_0
  numB <<- Cash*w2/B_0
  V_0 <<- numS*S_0 + numB*B_0
  Cash <<- Cash - V_0
  V <<- c()
}

numOfSim = 600

source("distribution.R")