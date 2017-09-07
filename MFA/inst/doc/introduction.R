## ----echo=FALSE----------------------------------------------------------
library(MFA)

## ------------------------------------------------------------------------
GSVD(Data=mtcars)

## ------------------------------------------------------------------------
mfa(data=mtcars,sets=list(1:3,4:6,7:8,9:11), ncomps = 2, center = TRUE, scale = TRUE)

## ------------------------------------------------------------------------
plot(MFA=mfa(mtcars[c(1:2,4:5,8:9,20:21),],sets=list(1:3,4:6,7:8,9:11)),labels=c("Maz1","Maz2","Hor1","Hor2","Merc1","Merc2","Toyota1","Toyota2"),dim1=1,dim2=2)

## ------------------------------------------------------------------------
plot_factorscore(mtcars[c(1:2,4:5,8:9,20:21),],sets=list(1:3,4:6,7:8,9:11),dim1=1,dim2=2,
                 labels=c("Maz1","Maz2","Hor1","Hor2","Merc1","Merc2","Toyota1","Toyota2"))


## ------------------------------------------------------------------------
plot_partialfs(mtcars[c(1:2,4:5,8:9,20:21),],sets=list(1:3,4:6,7:8,9:11),dim1=1,dim2=2,
               labels=c("Maz1","Maz2","Hor1","Hor2","Merc1","Merc2","Toyota1","Toyota2"))


## ------------------------------------------------------------------------
mt.mfa<-mfa(data=mtcars,sets=list(1:3,4:6,7:8,9:11), ncomps = NULL, center = TRUE, scale = TRUE)
summary(mt.mfa,ncomps=2)

## ------------------------------------------------------------------------
bootstrap(dataset=mtcars,sets=list(1:3,4:6,7:8,9:11), ncomps=NULL, center=TRUE, scale=TRUE, k=10,B=100)

## ------------------------------------------------------------------------
plot(bootstrap(dataset=mtcars,sets=list(1:3,4:6,7:8,9:11), ncomps=2, center=TRUE, scale=TRUE, k=10,B=100))

## ------------------------------------------------------------------------
mfa1=mfa(data=mtcars,sets=list(1:3,4:6,7:8,9:11), ncomps = NULL, center = TRUE, scale = TRUE)
table_1<-mfa1$MatrixZ[,1:3]
table_2<-mfa1$MatrixZ[,4:6]
Lg(MFA=mfa1,table1=table_1,table2=table_2,order1=1,order2=2)

## ------------------------------------------------------------------------
Lg_table(mtcars,sets=list(1:3,4:6,7:8,9:11),center=TRUE,scale=TRUE)

## ------------------------------------------------------------------------
mfa1=mfa(data=mtcars,sets=list(1:3,4:6,7:8,9:11), ncomps = NULL, center = TRUE, scale = TRUE)
table_1<-mfa1$MatrixZ[,1:3]
table_2<-mfa1$MatrixZ[,4:6]
RV(table1=table_1,table2=table_2,center=TRUE,scale=TRUE)

## ------------------------------------------------------------------------
RV_table(mtcars,sets=list(1:3,4:6,7:8,9:11),center=TRUE,scale=TRUE)

## ------------------------------------------------------------------------
contr1 <- contributions(X=mtcars,sets=list(1:3,4:6,7:8,9:11),type=1)
contr1
contr2 <- contributions(X=mtcars,sets=list(1:3,4:6,7:8,9:11),type=2)
contr2
contr3 <- contributions(X=mtcars,sets=list(1:3,4:6,7:8,9:11),type=3)
contr3

