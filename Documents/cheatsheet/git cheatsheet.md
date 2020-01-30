# git cheat sheet

## delete a local branch

~~~ bash 
git branch -d branch_name
git branch -D branch_name
~~~

`-D` parameter or `--delete --force` is a **forced delete** regardless of its `push` or `merge` status

## delete a remote git branch

~~~ bash
git push <remote_name> --delete <branch_name> 
~~~

this will delete the specified branch in the remote repo (*GitHub*). `remote_name` is usually *master*

## gitignore

before first commit, assuming the `.gitgnore` checkbox wasn't checked.

~~~ bash
nul >> gitignore.txt
~~~

used to hide certain files from git. Add all the file names of your choice. To hide all files of a certain *file extension*, add wildcard `*`. Example, `*.py`

## resetting files 

if some files were unintentionally tracked with `git add *`, reset them with

~~~ bash 
git reset 
git reset <file_name>
~~~

## stashing files before a pull 

if you have uncommitted/untracked files and you want to pull/commit other files

~~~ bash
git stash push
~~~

then after that, run 

~~~ bash
git stash pop
~~~

to get your files back

## removing directories from repo that are .gitignored after they are pushed to a repo

The rules in your `.gitignore` file only apply to untracked files.  Since the files under that directory were already 
committed in your repository, you have to unstage them, create a commit, and push that to GitHub:

```bash
git rm -r --cached directory-to-remove
git commit -m 'Remove the now ignored directory "some-directory"'
git push origin master
```

