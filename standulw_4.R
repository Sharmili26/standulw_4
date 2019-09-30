 
library(lpSolveAPI)

lprec <- read.lp("Assignment 4.lp") 

#Solve the problem
solve(lprec)

#Set objective function
get.objective(lprec)


#Variable Values
get.variables(lprec)

#Constraints
get.constraints(lprec)

#Shadow price and Reduced cost
get.sensitivity.rhs(lprec)



