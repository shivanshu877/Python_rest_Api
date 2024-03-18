#vector is a homogeneous
c =  c(1L , 2 ,3)
c
# precedance of vector  char -  complex -  int -  numeric
# variabes   conversion numeric integer  
#list heterogenous data structure
s  <-  list( 1, 2,1 , 00000 , "sdfkljsdf")
s
a =sd
a = class(s)
a
paste("list   " , s)

 temp = list(c(45L , 45,23.9) , c(23 , "sun" , "earth" ) , c(34-7i , TRUE ,65L))
temp
temp = list(c(45L , 45,23.9) , c(23 , "sun" , "earth" ) , list(34-7i , TRUE ,65L))
temp
class(temp[[1]][3])
#extraction 
a = temp[[2]][1]
a
temp[[2]][c(1,2  , 3)]
temp[[1]][c(1,3)] <- 100
temp

names(temp) = c('num' , 'num2' ,'num3')
temp['num3']
temp$num[1]


colors = c('green' , 'black')
'green' %in% colors
colors = append(colors , 'blue')
colors = append(colors , 'red' , after =2)
colors
table  =  list(c(11 , 13 , 14 , 16) , c('bhanu' ,'partap' ,'singh' , 'shivang') , c(1000,2000,3000,5000))
table
names(table) =  c('id' , 'name' , 'salary')
adto =c(17 , 'vashu' , 200000)
  
table  = rbind(table , adto )
table

# Matrix
m1<-  matrix( c(1  , 24 , 39 , 46 , 68 , 100) , nrow= 3  , ncol=3 , byrow =  TRUE)
m1
#accessing matrix
m1[1,]
m1[c(1:3) , ]
m1[,c(2,3)]

m1[,] > 30
#delete 
m1 <- m1[-1 ,]
m1
#
#add new row and col in matrix 
m1 <-  rbind(m1 , c(1 , 2, 3))
m1
#cbind
m1 <- cbind(m1 , C(4 , 5, 6 ,4 ))
m1

al <- matrix(c(120:200) , nrow=10 ,ncol=8 , byrow = TRUE )
al
al <- cbind(al , c(1:10))
al
# t for transpose
t(al)
al =  t(al)
al
#artithmetic operator 
am  =  al%%10
am
al
temp =  al %% am
temp
# integer division by / numeric division
temp =  al %/% am
temp
#special matrix with 11 all element and 3 row 3 col 
a <- matrix(11,3,3)
a
#diagonal matrix
d <- diag(x =1 ,nrow = 3 , ncol = 3  )
d
s =  matrix(1 , 5 , 5)
s
#Array is multi-dimensional data structure
#Array creates composition of multiple matrices in a array
#Array is created by array()
#accept input as c()
v1<-c(3:12)
length(v1)
v2<-c(12:22)
length(v2)
al =0
#naming array
r<-c('r1','r2','r3')
c<-c('c1','c2','c3')
m<-c('mat1','mat2','mat3','mat4')
a1<-array(c(v1,v2 ,  v1 , v2),dim=c(3,3,3 , 3),dimnames=list(r,c,m))
a1

data1 <- c(1,2,3,4,5,6)
data2 <- c(60, 18, 12, 13, 14, 19)

# assigning row names
row.names=c("row1","row2","row3")

# assigning column names
column.names=c("col1","col2","col3")

# assigning array names
matrix.names=c('array1','array2','array3')

# pass these vectors as input to the array.
#  3 rows,3 columns and 3 arrays
result <- array(c(data1, data2), dim = c(3,3,3),
                dimnames=list(row.names,column.names,
                              matrix.names))
print(result)


result[ 1,2 ,1]



z <- 50:60
z





#accessing elements
a1[2,2,1]
#access 1st and 3rd row in matrix 3rd
a1[c(1,3),,3]
#access 2nd,1st column in matrix 2nd
a1[,c(1,2),2]
#update value by 50, less than 20 in matrix2
al[ , , 2] < 20 = 50
#data frames
#ensure data in tabular format
# that contain multiple datatype in different field 
# data frame is dimensional 
# heterogeneous data structure
# input as stored in row and colums
# input as list of vector  of equal length
# created by data frame()
df = data.frame(emp_id=c(1,2,3  , 4, 5) , name = c('vashu' ,'dev' , 'parashar' , 'd' , 'e') , salary=c(1000 , 1000 ,1000 , 1000 , 1000))
df
df[c(2:3),]
dl <-  data.frame(df$name)
dl
ml <-  rbind(df , list(6 , 'f' , 10000))
ml
salary = data.frame(ml$salary*2)
c <- cbind(ml , salary )
c
# list to dataframe
d = list(c('p1' , 'p2' , 'p3') , c(45 , 56 , 67) , c(TRUE  , FALSE , TRUE))
d
names(d) =  c('People' , 'Age' , 'Vote')
d
newdf = data.frame(d)
#data structure :factor
# factors are the data objects  which used to categories 
# data amd store it as levels 
# data can be numeric , integer , and character
#take vector as a input
# created by factor()
# two types of data : ordinal and  nominal
f1 <-factor(c('B', 'D' , 'A' , 'E' , 'D' , 'D' , 'E' ,'A' , 'B'))
f1
f2 <- factor(c('north' , 'west' ,'west' , 'east'))
f2
#we cannot do nay changes in it when it is not possible in levels
f1[1] <- 'G'
f1 <-factor(c('B', 'D' , 'A' , 'E' , 'D' , 'D' , 'E' ,'A' , 'B') , levels =c('A' , 'B' , 'C' , 'D' , 'E' , 'F' , 'G' , 'H'))
f1
# we get na if we use g  in place of G
f1[3] <- 'g'
f1

f2 = factor(c('north' , 'west' , 'west' , 'west' , 'south') , labels =  c('N' , 'S' , 'E'))
f2

#gl() # ordered repition of data
f3 <- gl(4 , 4 ,labels = c('btech' , 'bca' , 'bba' , 'mba'))
f3

# 1st no of label
# 2nd argument - rePITION
# 3rd argument label
f3[3] <-'mba'
f3
f3[c(1 , 5 , 3 )]


# if else in r 

{
  number <- as.numeric(readline("Enter Number: "))
  if (number < 0) {
    paste(number, ": Negative number")
  } else if (number > 20) {
    
    if (number %% 2 == 1) {
      print(": Odd")
    } else {
      print(": Even")
    }
    print(paste(number, ": Positive number"))
  } else {
    print("Zero")
  }
}



# switch statement 
# it is multi way branch statement 
# provides an easy way to dispatch execution for 
# different parts of code
# the code is based on value of experssion 
#if expression is a string  the string  matched to the listed cases
# if there is more than one match
# the first match element is used
# no default case is available 
# if no case is matched , an unnamed case is used
# two types based on index , based on matching values


val <- switch( 
  5, 
  "Geeks1", 
  "Geeks2", 
  "Geeks3", 
  "Geeks4", 
  "Geeks5", 
  "Geeks6"
) 
print(val) 





# Following is val1 simple R program   
# to demonstrate syntax of switch. 

# Mathematical calculation 


print(result)   
z1<-'2'
z <- switch(z1 ,'2'='dev' , '1'='d' )
z

a = 0
b =1
e <- switch(a+b , '10')
e


{
val1 =  as.numeric(readline("Enter Number1: "))
val2 = as.numeric(readline("Enter Number2: "))
val3 = readline("Choice a -add s -subtract m -multiplication d -division: ")  
result = switch(   
  val3,
  "a"= cat("Addition =", val1 + val2),   
  "s"= cat("Subtraction =", val1 - val2),   
  "d"= cat("Division = ", val1 / val2),   
  "m"= cat("Multiplication =", val1 * val2)
)   }



# funtion in r language
# a set of statements which are organised together to perform a specifict task 
# function typed : user defined function and inbuilt function
# syntax = fn_name = function(args1 , args2 )


add <- function(a , b) {
  return (a+b);
}
x  <- add(10  , 20) # positional argument
x <- add(b  = 20  , a =20) # named parameter
add <- function(a =20 , b) { # default value funcitons
  return (a+b);
}
x <- add(30 , 30)
print(x)

sq <- function(a){
for( i in 1 :10) {
print(sqrt(i))
}
}
sq(10)


floor(10.60)
order(c(100, 10, 1000))
  