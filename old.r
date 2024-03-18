a = c(10 ,20,30)
b = c(10,20,30)
print(a+b)
c  =
  c = 1:20
print(c)
class(c)
str(c)
class(c)

b = (c>2)


b
z <- c(2,3,4,5,5)
b  <-  (z>2)
b
z = c(1:20)
x = (z > 5  & z <  17) 
z  =  z[x]


name = c( "asdf" , "sdfsdf" , "sdf")
name[-1]






list1 = list(c(1,2,3,4) , 234 , c("vashu dev "))
list1[[3]][1]

a = c(1,2,3,4,5)
b = c(1,2,3,4,5)

c = c(a,b)
c
x = matrix(data =c  , nrow =  5 , ncol=2 , byrow=FALSE )
x
a = c(1 , 11 , 21 , 10 , 20 , 30 )
x  =  matrix(data =a  , nrow=2 , ncol = 3 , byrow = TRUE)
x




x = data.frame(a = c(12,12) , b = c("sadasd" , "sadfsaf"))
length(x)
dim.data.frame(x)



newframe = data.frame(name = c("vashu" , "dev" , "shivanshu"))

#indexing in dataframe to get value
x = newframe[1,2]
x

stu = data.frame(name = c("vashu" , "dev" , "parashar") ,age = c(19 , 19 , 19) , salery = c(1000,200,300))
stu
v  =    stu[3]  < 1000 & stu[3] > 200
stu[v]
v = stu['salery'] > 200
stu[v]


data_1 = rbind(new  , newframe)
data_1

stu
stu[stu == 'parashar'] = 'vashu'
stu




#conditionl statements 
a = 5 
b = 5
if (  a  < b ){
  print(" a is less than b ")
}else if( a > b ){
  print("a is greater than b ")
}else{
  print("they are equal")
}
v  =  ifelse(a ==  5  ,  "ok" , "no")
v
x = ifelse(stu$ag == 19, "ok" , "")
stu =  cbind(stu , x)
stu 

ok_or_not  =  ifelse(stu$salery %in% c(1000,200) , 1 , 0 )
stu =  cbind(stu , ok_or_not)
stu


for( i in stu$salery){
  if ( i  ==  200)
    print("sdfsdzf")
}


x  =  31
for ( i  in  2:(x-1)){
  if ( x %% i == 0 ){
    print( " not prime ")
    print(i)
    break
  }
}

# Ecudlian   
#        -------
#      x |  y  |
#   -----       ---------
#         rem 
#                   -------
#          x = rem |  y=x  |
#          ---------       ---------
#
rem = 1 
x = 15
y  = 18
greater =  ifelse(x > y , x , y )
using_for =  function( x , y , greater){
  for( i in 1:greater)  {
    rem = y%% x
    if ( rem == 0 ) {
      print(x)
    }
    y= x
    x= rem 
  }
}
using_while =  function( x , y , greater){
  
  while( i  <= greater)  {
    rem = y%%x
    if ( rem == 0  ) {
      print(x)
    }
    y= x
    x= rem 
    i = i +1 
  }
  
}
using_for(x , y, greater)
using_while(x , y, greater)


firstfun  =  function(x , y){
  return (x+y)
}
firstfun(x,y)

c = c()
even  = function(x){
  for( i in 1:x){
    if(i %% 2  == 0 ){
      c = c(c,i)
      
    }
    
  }
  return(c)
}


even(13)
c


ab =""
concat = function( a , b){
  paste(a , b , sep = " ") 
}

concat("harsh" , " dahiya")




i =  1 
while( i  < 6){
  print(i)
  i = i +1
}

v = 1 
x = 10
i =  1 
while(i < 5){
  v = v * i
  i = i+1
  
}
v

#factor 
boolean = c('TRUE', 'false','true','false')
boolean = factor(boolean)
boolean


#dplyr package in r language



df = data.frame(name =  c('vashu' , 'dev' , 'parashar' ) ,age = c(18 , 20 , 30) ,salary = c(NA , 20000 , 30000))
df
#filter  (ROW)
filter(df,!is.na(salary) & age > 18)

# arrange
arrange(df , desc(age))


# select (COLUMN)
select(df , starts_with('a'))
select(df , ends_with('e'))
select(df , 1 )
select(df , 2 )
select(df , 1:3)

# rename 
rename(df , income = salary)  # new name before after that  another

# mutate and transmute add new variable (column)  
df  =  mutate(df , double_age  =  age*2)
#also bind with data 
df
#use for deleting the column also
df  =  mutate(df , double_age = NULL)
df
#give us separate column without binding 
transmute(df, v =  age*2)


#summarise 
summarise(df , mean =  mean(age))


# join 
df1 = data.frame( name  =  c('vashu' , 'dev   ', 'parashar') , id = c( 1 , 2, 3) , marks =c( 100 , 200 , 300))
df1
df
df_left  =  merge( x = df , y =  df1 ,  by = 'name' , all.x =  TRUE ) # all.x use for left join 
df_left
df_right  =  merge( x = df , y =  df1 ,  by = 'name' , all.Y =  TRUE ) # all.y use for rgiht  join 
df_right



# inner join for common  thing btw two table

df_inner  =  merge( x = df , y =  df1 ,  by = 'name' ) #nothing  for inner 
df_inner



data = read.csv('C:\\Users\\vashu\\OneDrive\\Desktop\\module_5_auto.csv')
View(data)

table(data$make)
print(data$make)

data  = rename(data , make_rename = make)
summary(data)
data = data.frame("price" = c(12,12,12,13,11,34,333,32,12,3,2,23,321))
data
data$new_price =  ifelse(data$price >50  ,  "Yes" , "No")
data
new_col = c()
for (i in data$price) {
  if ( i > 13207){
    x = 'high'
  }
  else {
    x = 'low'
  }
  new_col = c( new_col , x)
}
s
data  = mutate(data , new_col)  

data['new_col1'] = new_col


x  =  c ( 1 , 2 , 3  ,23,23,23,23,23,23,23,23,23,23)
png("my_plot.png", width = 800, height = 400)
barplot(x)
dev.off()       
names(x) =  c("vashu" , "dev" , "parashar")
pie3D(x , main = "pie_chart")


x = c(12,34,45,23,234,45,56,56,56,456,453,34,34,34,345)
hist(x)


# Regular Expression and Tidy Data In R

str_detect('vashu' , 'v')
v =  c(str_extract_all('sumit' , '.'))
v
#\n new line
# \t tab 
# \b word boundry




# tidy data

new   = data5 %>% mutate(n = "no")
new


new2 = new %>% filter(age  ==  35)
new2


# regression  
data = read.csv('C:\\Users\\vashu\\OneDrive\\Desktop\\Programming\\R\\summer intern\\Advertising.csv')
data
data = select(data, -1)
data
plot(x  =  data$Newspaper , y  = data$Sales)
lr  =  lm(formula  =  Sales ~ TV  , data  =  data)
summary(lr)
lr_1  =  lm(formula  =  Sales ~ TV   + Radio, data  =  data)
summary(lr_1)
#r ^ 2 is use to f=define if it is giving us good result or not 





--------------------------------------------------------------------------------------------------
  
  
  df  =  read.csv("C:\\Users\\vashu\\OneDrive\\Desktop\\Programming\\R\\summer intern\\train_ctrUa4K.csv")
df
nrow(df)
males  =  df %>% filter(Gender == "Male")
females = df %>% filter(Gender == "Female")
df_1 = df %>% filter (Loan_Status == 'Y')
df_1_male =  df_1 %>% filter(Gender == 'Male')
df_1_female =  df_1 %>% filter(Gender == 'Female')
approval_rate_male =   nrow(df_1_male) / nrow(males)
approval_rate_female  =  nrow(df_1_female) / nrow(females)
nrow(df_1_female)
approval_rate_male
approval_rate_female

temp = loan_data %>% group_by(Gender,Loan_Status) %>%
  
  summarise(total_count =n(),.groups = 'drop')


temp = df  %>% group_by(Married,Loan_Status) %>%
  
  summarise(total_count =n(),.groups = 'drop')

married  =  df %>% filter(Married == "Yes")
single = df %>% filter(Married== "No")
df_1 = df %>% filter (Loan_Status == 'Y')
df_1_married =  df_1 %>% filter(Married == "Yes")
df_1_single =  df_1 %>% filter(Married == "No")
approval_rate_married =   nrow(df_1_married) / nrow(married)
approval_rate_single  =  nrow(df_1_single) / nrow(single)

approval_rate_married
approval_rate_single

df_1_male_married  =  df_1_male %>% filter(Married  == 'Yes'  )
df_1_male_married
nrow(df_1_male_married)



temp = df  %>% group_by(Married,Loan_Status) %>%
  
  summarise(total_count =n(),.groups = 'drop')

temp



# Gender and marital Status   -- loan approval rate 
temp = df  %>% group_by(Gender ,Married ) %>%
  
  summarise(total_count =n(),.groups = 'drop')

temp


loan_approvalrate_male_married =  nrow(df  %>%  filter(Gender == 'Male' & Married == 'Yes' & Loan_Status == 'Y')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='Yes'))
loan_approvalrate_male_married


loan_approvalrate_male_unmarried =  nrow(df  %>%  filter(Gender == 'Male' & Married == 'No' & Loan_Status == 'Y')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='No'))
loan_approvalrate_male_unmarried

loan_approvalrate_female_married =  nrow(df  %>%  filter(Gender == 'Female' & Married == 'Yes' & Loan_Status == 'Y')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='Yes'))
loan_approvalrate_female_married

loan_approvalrate_female_unmarried =  nrow(df  %>%  filter(Gender == 'Female' & Married == 'No' & Loan_Status == 'Y')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='No'))
loan_approvalrate_female_unmarried


# Gender and marital Status and dependents   -- loan approval rate 


df %>% group_by(Dependents)
# -- 0 , 1, 2, 3+ Dependents  




loan_approvalrate_male_married_0=  nrow(df  %>%  filter(Gender == 'Male' & Married == 'Yes' & Loan_Status == 'Y' & Dependents == '0')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='Yes'  & Dependents == '0'))
loan_approvalrate_male_married_0


loan_approvalrate_male_unmarried_0 =  nrow(df  %>%  filter(Gender == 'Male' & Married == 'No' & Loan_Status == 'Y'  & Dependents == '0')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='No'  & Dependents == '0'))
loan_approvalrate_male_unmarried_0


loan_approvalrate_male_married_1=  nrow(df  %>%  filter(Gender == 'Male' & Married == 'Yes' & Loan_Status == 'Y' & Dependents == '1')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='Yes'  & Dependents == '1'))
loan_approvalrate_male_married_1


loan_approvalrate_male_unmarried_1 =  nrow(df  %>%  filter(Gender == 'Male' & Married == 'No' & Loan_Status == 'Y'  & Dependents == '1')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='No'  & Dependents == '1'))
loan_approvalrate_male_unmarried_1

loan_approvalrate_male_married_2=  nrow(df  %>%  filter(Gender == 'Male' & Married == 'Yes' & Loan_Status == 'Y' & Dependents == '2')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='Yes'  & Dependents == '2'))
loan_approvalrate_male_married_2


loan_approvalrate_male_unmarried_2 =  nrow(df  %>%  filter(Gender == 'Male' & Married == 'No' & Loan_Status == 'Y'  & Dependents == '2')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='No'  & Dependents == '2'))
loan_approvalrate_male_unmarried_2

loan_approvalrate_male_married_3plus =  nrow(df  %>%  filter(Gender == 'Male' & Married == 'Yes' & Loan_Status == 'Y' & Dependents == '3+')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='Yes'  & Dependents == '3+'))
loan_approvalrate_male_married_3plus


loan_approvalrate_male_unmarried_3plus =  nrow(df  %>%  filter(Gender == 'Male' & Married == 'No' & Loan_Status == 'Y'  & Dependents == '3+')) /  nrow(df  %>%  filter(Gender == 'Male' & Married =='No'  & Dependents == '3+'))
loan_approvalrate_male_unmarried_3plus





loan_approvalrate_female_married_0=  nrow(df  %>%  filter(Gender == 'Female' & Married == 'Yes' & Loan_Status == 'Y' & Dependents == '0')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='Yes'  & Dependents == '0'))
loan_approvalrate_female_married_0


loan_approvalrate_female_unmarried_0 =  nrow(df  %>%  filter(Gender == 'Female' & Married == 'No' & Loan_Status == 'Y'  & Dependents == '0')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='No'  & Dependents == '0'))
loan_approvalrate_female_unmarried_0


loan_approvalrate_female_married_1=  nrow(df  %>%  filter(Gender == 'Female' & Married == 'Yes' & Loan_Status == 'Y' & Dependents == '1')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='Yes'  & Dependents == '1'))
loan_approvalrate_female_married_1


loan_approvalrate_female_unmarried_1 =  nrow(df  %>%  filter(Gender == 'Female' & Married == 'No' & Loan_Status == 'Y'  & Dependents == '1')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='No'  & Dependents == '1'))
loan_approvalrate_female_unmarried_1

loan_approvalrate_female_married_2=  nrow(df  %>%  filter(Gender == 'Female' & Married == 'Yes' & Loan_Status == 'Y' & Dependents == '2')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='Yes'  & Dependents == '2'))
loan_approvalrate_female_married_2


loan_approvalrate_female_unmarried_2 =  nrow(df  %>%  filter(Gender == 'Female' & Married == 'No' & Loan_Status == 'Y'  & Dependents == '2')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='No'  & Dependents == '2'))
loan_approvalrate_female_unmarried_2

loan_approvalrate_female_married_3plus =  nrow(df  %>%  filter(Gender == 'Female' & Married == 'Yes' & Loan_Status == 'Y' & Dependents == '3+')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='Yes'  & Dependents == '3+'))
loan_approvalrate_female_married_3plus


loan_approvalrate_female_unmarried_3plus =  nrow(df  %>%  filter(Gender == 'Female' & Married == 'No' & Loan_Status == 'Y'  & Dependents == '3+')) /  nrow(df  %>%  filter(Gender == 'Female' & Married =='No'  & Dependents == '3+'))
loan_approvalrate_male_married_0
loan_approvalrate_male_married_1
loan_approvalrate_male_married_2
loan_approvalrate_male_married_3plus
loan_approvalrate_male_unmarried_0
loan_approvalrate_male_unmarried_1
loan_approvalrate_male_unmarried_2
loan_approvalrate_male_unmarried_3plus

loan_approvalrate_female_married_0
loan_approvalrate_female_married_1
loan_approvalrate_female_married_2
loan_approvalrate_female_married_3plus
loan_approvalrate_female_unmarried_0
loan_approvalrate_female_unmarried_1
loan_approvalrate_female_unmarried_2
loan_approvalrate_female_unmarried_3plus



# having cooapplicant   has any significance  impact on  loan approval rate or not 


nrow(df %>% filter(CoapplicantIncome  == '0' & Loan_Status == 'Y'))
#177  41
nrow(df %>% filter(CoapplicantIncome  != '0' & Loan_Status == 'Y'))
#245  58
max(df$CoapplicantIncome)
median(df$CoapplicantIncome)

nrow(df %>% filter(  CoapplicantIncome  > '0'  &  CoapplicantIncome <  '2000'  &  Loan_Status == 'Y'))
#  2000 - 87
# 3000 -  77
# 4000 - 29 
# 5000  - 18
# 5000 to  8000 - 22     233 total

v  = c()
for (i  in df$CoapplicantIncome ){
  if (i == 0)
    v = c(v , 0) else
      v  =  c(v , 1)
    
}
v
df['new'] = v



df  <-  read.csv("C:\\Users\\Pattern\\Downloads\\IBM.csv")
summary(df)
summary.table(df$MaritalStatus)












#vector is a homogeneous
c =  c(1L , 2 ,3)
c
# precedance of vector  char -  complex -  int -  numeric
# variabes   conversion numeric integer  
#list heterogenous data structure
s  <-  list( 1, 2,1 , 00000 , "sdfkljsdf")
s
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



emp  = data.frame(e_id = c(11 , 12,13) , name =  c('vashu' , 'dev' ,'parashar') , position = c('manager' , 'Head' , 'ao'))
emp

Department  = data.frame(d_id = c('D11' , 'D12','D13') , dname =  c('computing' , 'bussiness' ,'agriculture') , dloc = c('B-34' , 'B-12' , 'B-53'))
Department


df = data.frame()
df = data.frame(emp, Department)
df
 
df[2,6]  = 'B-46'
df

df1 =  df[-3,]
df1

print(df1[2,c(1 , 2)])


