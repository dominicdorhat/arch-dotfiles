# git guide

## set config values

before you start using git, config values for your `GitHub` account needs to be set 

```bash
git config --global user.name "username"
git config --global user.email "email@gmail.com"
```

to list all global variables 

```bash
git config --list 
```

git may ask for your password before your first commit 

### setting local config 

you may have to use a different account for company projects. To specify that a repo use a different account:

```bash
git config user.name "username"
git config user.email "email@email.com"
```

do this in the repo itself



## create a new repository

~~~ bash 
git init
~~~

create a copy of a local repository by running 

~~~ bash
git clone <link_of_remote_repo>
~~~



## workflow 

your local repository consists of three ***trees*** maintained by git. The first one is your `working directory` which holds the actual files. The second one is the `Index` which is the staging area and finally `HEAD` which points to the **last commit**.



## add & commit

you can propose changes (add to the **index**) using 

~~~ bash
git add <filename> 
git add *
~~~

to *commit* the changes use 

~~~ bash 
git commit -m "Commit message"
~~~

now the file is committed to the `HEAD` but not  in your *remote* repository yet.



## pushing changes

changes are now in the `HEAD` of your local working copy. To send these changes to the *remote* repository, run

~~~ bash
git push origin master
~~~

change *master* to whatever *branch* you are working on

if you have not cloned an existing remote repository and want to connect your repo to a remote server, add it with

~~~ bash
git remote add origin
~~~



## branching

branches are used to develop features isolated from each other. The *master* branch is the *default* branch when you create a repository. Use other branches for development and merge them together to the master branch upon completion. They are multiple types of branching models.

to create a branch named *"feature_x"* and switch to it, use

~~~ bash
git checkout -b feature_x
~~~

switch back to *master*

~~~ bash
git checkout master 
~~~

and delete the branch again

~~~ bash
git branch -d feature_x
git branch -D feature_x
~~~

`-D` parameter forces a deletion of a branch that has not merged changes yet (***HARD DELETE***)

a branch is *not available to others* unless you push the branch to your remote repository 

~~~ bash
git push origin <branch>
~~~



## update & merge

to update your local repository to the newest commit, run

~~~ bash
git pull
~~~

in your working repository to *fetch* and *merge* remote changes. `git pull` is a combination of `git fetch` and `git merge`

to merge another branch into your ***active branch*** (e.g. *master*), use

~~~ bash
git merge <branch>
~~~

in both cases git tries to auto-merge changes. Unfortunately, this is not always possible and results in *merge conflicts*. You are responsible to merge those *conflicts* manually by editing the files shown by git. After changing, you need to mark them as merged with 

~~~ bash
git add <file_name>
~~~

before merging changes, you can also preview them by using

~~~ bash 
git diff <source_branch> <target_branch>
~~~



[SOfaURCE](http://rogerdudler.github.io/git-guide/)

 

