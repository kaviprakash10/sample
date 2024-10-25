Table of contents
=================

* [1. File management](#1file-management)
* [2.File and Processes](#2-file-and-process)
* [3.Introduction to Shell Scripting](#3-introduction-to-shell-scripting)
* [4.Conditional, Looping statements and Functions](#4-conditional-looping-statements-and-functions)
* [5.Testing process](#5testing-process)


# 1.File management
Let's create file using vim editor
command to create a file
 vim file.txt
 Ex: vim sample.txt

The above command will open a empty txt file called sample, Then we can some text in the file. Now we want to save the file, then exit from the file.
If you want to check the content of the file you use this commend.
  cat sample

This is a testfile or a sample file.That we created.
Now we see about the file permissions using chmod,
command to see a file permission
  ls -l 
Ex:ls -l sample

Now we change the file permission using chmod,
![openFloer](./images/fpcheck.png)
Now let check the permission,

Next we change the Ownership of the file,

In the above file the ownership is in the admin,now we change the ownership to other. 
now we change the ownership admin into root,
command to change the ownership admin
 sudo chown file
Ex:sudo chown root sample.txt
Let's check the ownership of the file,

Here, you can see the ownership of the file changed admin inot root.

# 2. File and Process
## ps command
The `ps` Command to List Running Processes in Linux. 'ps' stands for process status.
Syntax of ps command ps [option]
## 1) Simple process selection : Shows the processes for the current shell 
command to see the current shel:
  ps
 
## 2) View All Running Processes in Linux.
command to see all running process
 ps -A
 ## kill command
kill command in Linux is a built-in command which is used to terminate processes manually.
Basic Syntax of kill command in Linux:
kill [signal] PID
Here, we can use the signal as number or a tearm.

Now we kill the signal using number 9 or SIGKILL, It denotes kill the signal
command to kill the signal 
  kill -9 or SIGKILL PID

Here you can see the signal was killed.
# 3. Introduction to Shell Scripting.
## simple program in shell script
Here we created a looping progrom in sheel script.

  #!/bin/bash
  echo "The number "
  for ((i=1; i<=10; i++))
  do
  echo "$i" 
  done
Output

## Local variable
First we create a local variable,
 #!/bin/bash
 function first () {
   local x="Hi Guys"
   echo "Inside first function x=$x"
   }
   first
   echo "Outside first function x = $x"
Output:

## Global variable
Crating a Global variable
  #!/bin/bash
  function first () {
   x="Hello guys"
   echo "Inside first function x= $x"
   }
   first
   echo "Outside first function x = $x"
Output:

# 4. Conditional, Looping statements and Functions
There are total 5 conditional statements which can be used in bash programming, 

*[1.if statement](#1if-statement)
*[2.if-else statement](#2if-else-statement)
*[3.if..elif..else..fi statement](#3ifelifelsefi-statement)
*[4.switch statement](#4switch-case)
## 1.if statement
This will process if specified conditiom is true
Syntax:
 if [expression]
 then
 statement
 fi
## 2.if-else statement
If specified condirion is not true in if part then else part will be work.
Syntax:
if [expression]
then 
statement1
else 
statement2
fi
## 3.if.elif.else.fi statement
To use multiple conditions in one if-else,then elif keyword is use in shell.if condition1 is true it executes statement1 and statement2.Otherwise it check the else part.
Syntax:
 if [expression1]
 then
 statement1
 statement2
 elif[expression2]
 then 
 statement3
 statement4
 else
 statement5
 fi
## 4.switch case
Case statement is used to do a particular task.If specified value, match with the pattern then it will execute a block of that particular pattern.
Syntax:
 case in 
 case1 statement 1;;
 case2 statement 2;;
 esac
## Excuting if statement

## Excuting if-else

## Excuting for statement

## Excuting util statement 

## Excuting while statement

# 5.Testing process 

## Excuting command using GREP

* In the above exapmle -i option is used to to print all the matching case whether it may be in caps or not it will print.
* -h Display the matched line, but do not display the other line.
* -c Print only a count of line that match a pattern.
* -n Display the matched lines and their line number.

## Executing command SED