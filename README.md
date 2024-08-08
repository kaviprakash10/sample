Git Branch
 A branch represents an independent line of development. Branches serve as an abstraction for the edit process. You can think of them as a way to request a brand new working directory, staging area, and project history. New commits are recorded in the history for the current branch, which results in a fork in the history of the project. This commend lets you to create, list, rename, and delete branches. It doesn't let swith between branches or put a history back together again.
To list all the branches in your repo , we can use
 git branch --list
To create a new branch, you can use this
 git branch <testbranch>
To delete a the branch, we use 
 git branch -d<testbranch>
To rename the branch, use this command
 git branch -m<branch>

Git Checkout
 The git checkout command lets you navigate between the branches created by git branch. Checking out a branch updates the files in the working directory to match the version stored in that branch, and it tells Git to record all new commits on that branch. Think of it as a way to select which line of development you’re working on. The git checkout command may occasionally be confused with git clone. The differenthe two commands is that clone. The diference between the two commands is that clone works to fetch code from a remote repo, alternatively checkout works to switch between versions of code already on the local system.

git checkout -b<new-branch>
 The above example creates and checkout the new branch. Git checkout works with git branch. The git branch command can ve used to create a new branch.
To switch the  branch, you use 
 git checkout <branchname>

Git Merge
  Git merge will combine multiple sequences of commits into one unified history. In the most frequences use cases, git merge is used to combine two branches. 
To merge the branch, you use 
 git merge <branchname> 
