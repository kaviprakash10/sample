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
admin@-MacBook-Pro sample % git add README.md

admin@-MacBook-Pro sample % git commit -m "update"

[main 5b1a3e1] update
 1 file changed, 13 insertions(+), 21 deletions(-)

admin@-MacBook-Pro sample % git push origin main

Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 4 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 780 bytes | 780.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/kaviprakash10/sample.git
   cf2d192..5b1a3e1  main -> main
 
 To push a updated file to your remote repo, first you need to update on your local repo then you want to leave commit message then push to the remote repo.
 
# Git Pull
 
 Git pull command is used to download the file from the remote repo to our local repo to match tjat content. 

    git pull <origin>
## Example
admin@sudhans-MacBook-Pro sample % git pull

remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 3 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
Unpacking objects: 100% (3/3), 914 bytes | 304.00 KiB/s, done.
From https://github.com/kaviprakash10/sample
   5b1a3e1..31da220  main       -> origin/main
Updating 5b1a3e1..31da220
Fast-forward
 example.tf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 
Fetch the specified remote’s copy of the current branch and immediately merge it into the local copy

# Git Branch 

Branch is used to store the files or project under the branches.

    git branch --list
List all of the branches in your repository. 

     git branch <testbranch>
Create a new branch called ＜testbranch＞. 

## Example 
admin@sudhans-MacBook-Pro sample % git branch  
* main

 It show the branch that we working on.

admin@sudhans-MacBook-Pro sample % git branch testbranch

 This command create a branch called testbranch.

admin@sudhans-MacBook-Pro sample % git branch --list
* main
  testbranch

admin@sudhans-MacBook-Pro sample % git branch -d testbranch

Deleted branch testbranch (was 31da220).
 
 This command will delete the branch that we created.

# Git checkout
 The git checkout command used to create branch and swith to the branch that we created

 ## Example
 admin@sudhans-MacBook-Pro sample % git checkout -b testbranch

Switched to a new branch testbranch

# Git Merge
  This git merge is used to merge the local repo and remote repo. Which means this will merge every file the we have in the the remote repo.

## Exapmle
admin@sudhans-MacBook-Pro sample % git merge

Updating 31da220..d743d18
Fast-forward
 example.tf  | 1 -
 testfile.tf | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)
 delete mode 100644 example.tf
 create mode 100644 testfile.tf