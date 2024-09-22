# 1.File management
Let's create file using vim editor
   admin@sudhans-MacBook-Pro ~ % vim sample.txt
The above command will open a empty txt file called sample, Then we can some text in the file. Now we want to save the file, then exit from the file.
If you want to check the content of the file you use this commend.
admin@sudhans-MacBook-Pro ~ % cat sample
This is a testfile or a sample file.
This is the content we add in the file.
Now we see about the file permissions using chmod,
 
 admin@sudhans-MacBook-Pro ~ % ls -l sample
 -rw-r--r--   1 admin  staff    37 Sep 19 15:11 sample

Now we change the file permission using chmod,
 admin@sudhans-MacBook-Pro ~ % chmod 764 sample
Now let check the permission,
 admin@sudhans-MacBook-Pro ~ % ls -l sample
 -rwxrw-r--  1 admin  staff  37 Sep 19 15:11 sample
Next we change the Ownership of the file
admin@sudhans-MacBook-Pro ~ % ls -l sample
 -rw-r--r--   1 admin  staff    37 Sep 19 15:11 sample
now we change the ownership admin into root,
 admin@sudhans-MacBook-Pro ~ % sudo chown root sample
Let's check the ownership of the file,
 admin@sudhans-MacBook-Pro ~ % ls -l sample
 -rwxrw-r--  1 root  staff  37 Sep 19 15:11 sample
Here, you can see the ownership of the file changed admin inot root.

# 2. File and Process
## ps command
The `ps` Command to List Running Processes in Linux. 'ps' stands for process status.
Syntax of ps command ps [option]
## 1) Simple process selection : Shows the processes for the current shell 
ps
 admin@sudhans-MacBook-Pro ~ % ps
  PID TTY           TIME CMD
 2118 ttys000    0:00.06 -zsh
 2259 ttys002    0:00.04 /bin/zsh -il
## 2) View All Running Processes in Linux.
ps -A
 admin@sudhans-MacBook-Pro ~ % ps -A
  PID TTY           TIME CMD
    1 ??         0:34.64 /sbin/launchd
   82 ??         0:25.58 /usr/libexec/logd
   83 ??         0:00.04 /usr/libexec/smd
   84 ??         0:07.72 /usr/libexec/UserEventAgent (System)
   87 ??         0:00.77 /System/Library/PrivateFrameworks/Uninstall.framework/
   88 ??         0:19.26 /System/Library/Frameworks/CoreServices.framework/Vers
   89 ??         0:01.47 /System/Library/PrivateFrameworks/MediaRemote.framewor
   92 ??         0:04.43 /usr/sbin/systemstats --daemon
   94 ??         0:07.41 /usr/libexec/configd
   95 ??         0:00.01 endpointsecurityd
   96 ??         0:12.07 /System/Library/CoreServices/powerd.bundle/powerd
## 3) List Processes Not associated with a Terminal in Linux
ps -a 
 admin@sudhans-MacBook-Pro ~ % ps -a
  PID TTY           TIME CMD
 2117 ttys000    0:00.02 login -pf admin
 2118 ttys000    0:00.07 -zsh
 2357 ttys000    0:00.01 ps -a
 2259 ttys002    0:00.04 /bin/zsh -il
## 4) List All Processes Associated with this Terminal in Linux
ps -T
 admin@sudhans-MacBook-Pro ~ % ps -T
  PID TTY           TIME CMD
 2117 ttys000    0:00.02 login -pf admin
 2118 ttys000    0:00.07 -zsh
 2361 ttys000    0:00.01 ps -T

## kill command
kill command in Linux is a built-in command which is used to terminate processes manually.
Basic Syntax of kill command in Linux:
kill [signal] PID
Here, we can use the signal as number or a tearm.
 admin@sudhans-MacBook-Pro ~ % ps
  PID TTY           TIME CMD
 2407 ttys000    0:00.04 -zsh
 2259 ttys002    0:00.04 /bin/zsh -il
Now we kill the signal using number 9 or SIGKILL, It denotes kill the signal
 admin@sudhans-MacBook-Pro ~ % kill -9 2259
 admin@sudhans-MacBook-Pro ~ % ps
  PID TTY           TIME CMD
 2407 ttys000    0:00.04 -zsh
Here you can see the signal was killed.
# 3. Introduction to Shell Scripting.
## simple program in shell script
Creating lool
    #!/bin/bash
 echo "The number "
 for ((i=1; i<=10; i++))
 do
 echo "$i" 
 done
Output
1 2 3 4 5 6 7 8 9 10
## Local variable
Creating a local variable
 #!/bin/bash
 function test()  
 {
  local x="passed"
 echo "The test is $x"
 }
 test 
 echo"The test is $x"
Output:
The test is passed
The test is 
## Global variable
Crating a Global variable
  #!/bin/bash
 function test()  
 {
 x="passed"
 echo "The test is $x"
 }
 test 
 echo"The test is $x"
Output:
The test is passed
The test is passed
# 4. Conditional, Looping statements and Functions