# Git Fetch
This command that tells your local repo to retrieve the latest update.The git fetch command downloads commits, files, and refs from a remote repository into your local repo.  


### Git Fetch Commands 

    git fetch 

## Example
admin@ -MacBook-Pro sample % git fetch
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 905 bytes | 82.00 KiB/s, done.
From https://github.com/kaviprakash10/sample
   fa02d97..cf2d192  main       -> origin/main

It will check any changes in the remote repo, if there is any changes it will show like the above example. If there is no changes it shows nothing.

# Git Push
Git push is most commonly used to publish an upload local changes to a central repository. After a local repository has been modified a push is executed to share the modifications with remote team members.
 
     git push <remote><branch>

## Example 


# Git Pull
 
 Git pull command is used to download the file from the remote repo to our local repo to match tjat content. 

    git pull <origin>

Fetch the specified remote’s copy of the current branch and immediately merge it into the local copy

# Git Branch 

Branch is used to store the files or project under the branches.

    git branch --list
List all of the branches in your repository. 

     git branch <testbranch>
Create a new branch called ＜testbranch＞. 

# Git checkout
 The git checkout command used to navigate between the branches created by the " git branch " command.Checking out a branch updates the files in the working directory to match the version stored in that branch and it tells Git to record all new commits on that branch. Sometime we may confused with git clone. The difference between the two commands is that clone works of fetch code from a remote repo but the checkout command used to switch the version code on the local system.

 ## Example
    git checkout -b ＜testbranch＞
    
The above example simultaneously creates and checks out ＜testbranch＞. 