# Git Fetch
The git fetch command downloads commits, files, and refs from a remote repository into your local repo. When downloading content from a remote repo, git pull and git fetch commands are available to accomplish the task, You can consider git fetch the safe version of these two commands. 


<image src="image/test.png">

### Git Fetch Commands 

    git fetch <origin>

 Fetch all of the branches from the repository. This also downloads all of the required commits and files
 from the other repository.

     git fetch <origin> <main>
Same as the above command, but only fetch the specified branch.

    git fetch -all

A power move which fetches all registered remotes and their branches.

# Git Push
Git push is most commonly used to publish an upload local changes to a central repository. After a local repository has been modified a push is executed to share the modifications with remote team members.
 
     git push <remote><branch>

This command will push all of the necessary commits and internal objects. This creates a local branch in the destination repository. 

    git push <remote> --force

It is same as the above command but it forcefully  push that even if it results in a non-fast-forward merge. 
 
 ## Example for push command
 
    git fetch origin main
    git push origin main

This should result in a fast-forward merge, and git push should not complain about any of the non-fast-forward issues discussed above.

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