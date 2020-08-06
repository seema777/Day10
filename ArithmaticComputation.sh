#!/bin/bash -x

echo "Welcome to Arthimatic Computation and Sorting on Master Branch"


#!/bin/bash -x

read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c


#!/bin/bash -x

read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c

echo $(( (a + b) * c ))


#!/bin/bash -x

read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c

echo $(( (a * b) + c ))


#!/bin/bash -x

read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c

echo $(( (c + a) / b ))


#!/bin/bash -x

read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c

echo $(( (a % b) + c ))


#!/bin/bash -x

read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c

declare -A dict

dict["Result1"]=$(( (a + b) * c ))
dict["Result2"]=$(( (a * b) + c ))
dict["Result3"]=$(( (c + a) / b ))
dict["Result4"]=$(( (a % b) + c ))

echo ${dict[@]}


#!/bin/bash -x

read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c

declare -A dict

dict["Result1"]=$(( (a + b) * c ))
dict["Result2"]=$(( (a * b) + c ))
dict["Result3"]=$(( (c + a) / b ))
dict["Result4"]=$(( (a % b) + c ))

echo ${dict[@]}

array[0]=${dict[Result1]}
array[1]=${dict[Result2]}
array[2]=${dict[Result3]}
array[3]=${dict[Result4]}

echo ${array[@]}




read -p "Enter First number: " a
read -p "Enter Second number: " b
read -p "Enter Third number: " c

declare -A dict

dict["Result1"]=$(( (a + b) * c ))
dict["Result2"]=$(( (a * b) + c ))
dict["Result3"]=$(( (c + a) / b ))
dict["Result4"]=$(( (a % b) + c ))

echo Dictionary values : ${dict[@]}

array[0]=${dict[Result1]}
array[1]=${dict[Result2]}
array[2]=${dict[Result3]}
array[3]=${dict[Result4]}

echo Array elements : ${array[@]}

echo "Array in original order"
echo ${array[@]}

for ((i = 0; i<5; i++))
do

    for((j = 0; j<5-i-1; j++))
    do

        if [[ ${array[j]} -lt ${array[$((j+1))]} ]]
        then

            temp=${array[j]}
            array[$j]=${array[$((j+1))]}
            array[$((j+1))]=$temp
        fi
    done
done

echo "Array in Descending order :"
echo ${array[@]}


