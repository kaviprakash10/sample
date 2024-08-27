Git Branch:

 A branch represents an independent line of development. Branches serve as an abstraction for the edit process. You can think of them as a way to request a brand new working directory, staging area, and project history. New commits are recorded in the history for the current branch, which results in a fork in the history of the project. This commend lets you to create, list, rename, and delete branches. It doesn't let swith between branches or put a history back together again.

To list all the branches in your repo , we can use

       git branch --list
 
To create a new branch, you can use this

       git branch <testbranch>
 
To delete a the branch, we use 

       git branch -d<testbranch>
 
To rename the branch, use this command

    git branch -m<branch>

Git Checkout:

 The git checkout command lets you navigate between the branches created by git branch. Checking out a branch updates the files in the working directory to match the version stored in that branch, and it tells Git to record all new commits on that branch. Think of it as a way to select which line of development you’re working on. The git checkout command may occasionally be confused with git clone. The differenthe two commands is that clone. The diference between the two commands is that clone works to fetch code from a remote repo, alternatively checkout works to switch between versions of code already on the local system.

    git checkout -b<new-branch>

 The above example creates and checkout the new branch. Git checkout works with git branch. The git branch command can ve used to create a new branch.
 
To switch the  branch, you use 

    git checkout <branchname>

Git Merge:

  Git merge will combine multiple sequences of commits into one unified history. In the most frequences use cases, git merge is used to combine two branches. 
  
To merge the branch, you use 

       git merge <branchname> 

Merge conflicts:

   Version control systems are all about managing contributions between multiple distributed. Sometimes multiple developers may try to edit the same content. Conflicts generally arise when two people have changed the same file, or if one developer deleted a file while another developer was modifying it. It will affect the developer conducting the merge. 

Git merge strategies:

   A merge happens when combining two branches. Git will take two or morew commit pointers and attempt to find a common base commit between them. Git has several different methods to find a base commit, these methods are called "merge strategies". Which means a merge commit is a regular commit which just happens to have two parent commits.

 The following is a list of the available merge strategies:
  
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

The Feature Branch Workflow:

 The Feature Branch Workflow assumes a central repository, and "main" represents the official project history. Instead of committing directly on their local "main" branch, developers create a new branch every time they start work on a new feature. In addition feature branches can be pushed to the central repository. This makes it possible to share a feature with other developers without touching any official code. 

Gitflow:

  Gitflow is an alternative Git branching model that involves the use of feature branches and multiple primary branches.Compared to trunk-based development, Gitflow has numerous, longer-lived branches and larger commits. Under this model, developers create a feature branch and delay merging it to the main trunk branch until the feature is complete. 
How it works
   Instead of a single main branch, this workflow uses two branches to record the history of the project. The main branch stores the official release history, and the develop branch serves as an integration branch for features. It's also convenient to tag all commits in the main branch with a version number.The first step is to complement the default main with a develop branch. 

    git branch develop
    git push -u origin develop
Creating a feature branch
Without the git-flow extensions:

    git checkout develop
    git checkout -b feature_branch
 When using the git-flow extension:

    git flow feature start feature_branch
Continue your work and use Git like you normally would.

Finishing a feature branch

When you’re done with the development work on the feature, the next step is to merge the feature_branch into develop.
Without the git-flow extensions:

    git checkout develop
    git merge feature_branch
Using the git-flow extensions:

    git flow feature finish feature_branch

Forking workflow:

  The Forking Workflow is fundamentally different than other popular Git workflows. Instead of using a single server-side repository to act as the “central” codebase, it gives every developer their own server-side repository. This means that each contributor has not one, but two Git repositories: a private local one and a public server-side one. The Forking Workflow is most often seen in public open source projects. The main advantage of the Forking Workflow is that contributions can be integrated without the need for everybody to push to a single central repository.

 When they're ready to publish a local commit, they push the commit to their own public repository—not the official one. Then, they file a pull request with the main repository, which lets the project maintainer know that an update is ready to be integrated. The pull request also serves as a convenient discussion thread if there are issues with the contributed code. The following is a step-by-step example of this workflow.
1. A developer 'forks' an 'official' server-side repository. This creates their own server-side copy.

2. The new server-side copy is cloned to their local system.

3. A Git remote path for the 'official' repository is added to the local clone.

4. A new local feature branch is created.

5. The developer makes changes on the new branch.

6. New commits are created for the changes.

7. The branch gets pushed to the developer's own server-side copy.

8. The developer opens a pull request from the new branch to the 'official' repository.

9. The pull request gets approved for merge and is merged into the original server-side repository

Forking vs cloning

It's important to note that "forked" repositories and "forking" are not special operations. Forked repositories are created using the standard git clone command. Forked repositories are generally "server-side clones" and usually managed and hosted by a 3rd party Git service like Bitbucket. There is no unique Git command to create forked repositories. A clone operation is essentially a copy of a repository and its history. 
