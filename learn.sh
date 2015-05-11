#!/bin/bash

############### Printing ############## 
echo "Welcome to bash..."
printf "Hello User..."

############## Reading from the keyboard ##########
echo "----- Inputs from Keyboard -----"
echo "May I know who is this"
read name
echo Hi $name

#read -p 'username:' uservar
#read -sp 'passwrd:' passwd
#echo $uservar your password is $passwd

#echo "Enter three names"
#read name1 name2 name3
#echo "The three names are $name1,$name2 and $name3"

########## Variables #######################
echo "----- Variables -----"
var="mercury"
echo $var
export $var

############### Conditional statements ##################
#If conditions 
echo "----- Conditional Operators -----"
if [ $var == "mercury" ]
then
   echo "Indeed its mercury"
else
   echo "No its not mercury"
fi

## And/or oprerator
echo "----- Using or/and operator in condition checking -----"
var1="earth"
if [ $var == "mercury" ] || [ $var1 == "earth" ]
then
   echo "Its mercury or earth"
else
   echo "No its neither mercury nor earth "
fi

#Regular expression matches
#list=("mercury" "venus" "earth" "mars"
if [[ $var =~ "m*" ]]
then
   echo "Regex Match"
else
   echo "Regex did not match"
fi

############## Using loops #######################
list=(mercury venus earth mars)

echo ${list[*]} #To print all the elements of a array
printf "Number of elements:${#list[*]} \n"
echo ${!list[*]} #to get all the index in an array
echo Number of elemenets in array : ${#list[*]} #To get the number of elements in an array
echo The size of ${list[0]} : ${#list[0]} #To get the size of array element of index 0

#for loop
printf ".----- The elements of the array ----- \n"
for planet in ${list[*]}
do
  echo $planet
done

#Ranges
echo "----- Ranges -----"
for i in {0..5}
do 
  echo $i
  if [ $i -eq  3 ]
  then
     echo "Found 3"
  fi
done  

#usage of break
echo "----- Usage of break -----"
for planet in ${list[*]}
do
  echo $planet
  if [ $planet == "earth" ]
  then
    break
  fi
done 

#Usage of continue
echo "----- Usage of continue -----"
for planet in ${list[*]}
do
  if [ $planet == "venus" ]
  then
    continue 
  fi
  echo $planet
done 

# There are also ther constructs like 1)while 2)until 3)select

##################### Functions ##############################
echo "----- Functions -----"
fun_print(){
  echo Inside a function
  echo $1 $2
  return 5
}

fun_print earth mars 
echo the function had a return value of $?

################### User Interface ##########################
# Handles cursor position and colored output text display in the terminal
echo "----- User Interface -----"
#echo "$(tput sgr0)" #To reset
#echo "$(tput setaf 1)" -->red 2...7-->white
echo "$(tput bold)$(tput setaf 1)hello in red $(tput sgr0)"
echo "$(tput bold)$(tput setaf 3)hello in yellow $(tput sgr0)"

################### Add new bash concepts below ########################### 
