library(lpSolveAPI)

lprec<-make.lp(0,27)

lp.control(lprec, sense='min')

set.objfn(lprec, c(1.52, 1.60, 1.40, 1.70, 1.63, 1.55, 1.45, 1.57, 1.30, 5.15, 5.12, 5.32, 5.69, 5.47, 6.16, 6.13, 6.05, 6.25, 5.63, 6.12, 6.17, 5.80, 5.71, 5.87, 0, 0, 0))

add.constraint(lprec,c(1,1,1), "=", 93,indices = c(1,2,3))
add.constraint(lprec,c(1,1,1), "=", 88,indices = c(4,5,6))
add.constraint(lprec,c(1,1,1), "=", 95,indices = c(7,8,9))
add.constraint(lprec,c(1,1,1), "=", 30,indices = c(10,11,12))
add.constraint(lprec,c(1,1,1), "=", 57,indices = c(13,14,15))
add.constraint(lprec,c(1,1,1), "=", 48,indices = c(16,17,18))
add.constraint(lprec,c(1,1,1), "=", 91,indices = c(19,20,21))
add.constraint(lprec,c(1,1,1), "=", 48,indices = c(22,23,24))
add.constraint(lprec,c(1,1,1), "=", 2,indices = c(25,26,27))
add.constraint(lprec,c(rep(1,3),rep(-1,6)),"=",0,indices=c(1,4,7,10,13,16,19,22,25))
add.constraint(lprec,c(rep(1,3),rep(-1,6)),"=",0,indices=c(2,5,8,11,14,17,20,23,26))
add.constraint(lprec,c(rep(1,3),rep(-1,6)),"=",0,indices=c(3,6,9,12,15,18,21,24,27))
solve(lprec)

get.objective(lprec)

get.constraints(lprec)

get.variables(lprec)




