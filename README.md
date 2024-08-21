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

Merge conflicts

   Version control systems are all about managing contributions between multiple distributed. Sometimes multiple developers may try to edit the same content. Conflicts generally arise when two people have changed the same file, or if one developer deleted a file while another developer was modifying it. It will affect the developer conducting the merge. 

Git merge strategies

   A merge happens when combining two branches. Git will take two or morew commit pointers and attempt to find a common base commit between them. Git has several different methods to find a base commit, these methods are called "merge strategies". Which means a merge commit is a regular commit which just happens to have two parent commits.

 The following is a list of the available merge strategies.
  
  1)Recersive
         
    git merge -s recursive branch1 branch2
This operates on two heads. Recursive is the default merge strategy when pulling or merging one branch. Additionally this can detect and handle merges involving renames. This is the default merge strategy when pulling or merging one branch.

  2)Resolve

    git merge -s resolve branch1 branch2
This can only resolve two heads using a 3-way merge algorithm. It tries to carefully detect cris-cross merge ambiguities and is considered generally safe and fast.

  3)Octopus
     
    git merge -s octopus branch1 branch2 branch3 branchN
The default merge strategy for more than two heads. When more than one branch is passed octopus is automatically engaged. 
  
  4)Ours

    git merge -s ours branch1 branch2 branchN
The Ours strategy operates on multiple N number of branches. The output merge result is always on the current branch HEAD.The "ours" term implies the preference effectively ignoring all changes from all other branches.

  5)Subtree

    git merge -s subtree branchA branchB
When merging A and B, if B is a child subtree of A, B is first updated to reflect the tree structure of A, This update is also done to the common ancestor tree that is shared between A and B.

The Feature Branch Workflow

 The Feature Branch Workflow assumes a central repository, and "main" represents the official project history. Instead of committing directly on their local "main" branch, developers create a new branch every time they start work on a new feature. In addition feature branches can be pushed to the central repository. This makes it possible to share a feature with other developers without touching any official code. 
