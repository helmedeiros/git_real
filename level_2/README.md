# LEVEL 2 - STASHING
An overview of STASHING why, where and when to use it.

## STASHING RECAP:
So there you are halfway done on a feature branch, and one of your co-workers ask you to validate a `Pull Request` or signoff a bug fix on `master`.

You need to go back to `master` branch but you're in the middle of something. You just need a safe place to do so.

> Stashing allows you to take some files that may not make up a full commit and store them away in a temporary area. So you can restore them at a later time.

```
$ git diff       
diff --git a/creatures.md b/creatures.md
index e69de29..d5b6a43 100644
--- a/creatures.md
+++ b/creatures.md
@@ -0,0 +1,2 @@
+dragon
+troll
```


## Git Stash Commands:
### Git Stash - SAVE
Will take those files haven't been completed yet, and it's going to save them away on a temporary area.

It's also going to restore the state from the last commit

```
$ git stash save
Saved working directory and index state WIP on dragons: 2378c81 Add Wings
```

Nothing to commit. changes are 'stashed' away.
```
$ git diff      
$ git status    
On branch dragons
nothing to commit, working tree clean
```

### Git Stash - LIST
When we're ready to resume working on our changes, we can go ahead and checkout that particular branch, and run the command to list all existent 'stashed code'.

```
$ git stash list
stash@{0}: WIP on dragons: 2378c81 Add Wings
stash@{1}: WIP on dragons: 2378c81 Add Wings
```

### Git Stash - APPLY
When we're ready to resume working on our changes, we can go ahead and checkout that particular branch, and run the command to list all existent 'stashed code'. Using the UUIDs you can bring the code back.

```
$ git stash list
stash@{0}: WIP on dragons: 2378c81 Add Wings
stash@{1}: WIP on dragons: 2378c81 Add Wings

$ git stash apply --index stash@{0}
On branch dragons
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   troll.md
```


### Git Stash - DROP
Sometimes we're not in need of the stashed code when back to changes, so after you list them, you can use the identifier to remove it from the `stash stack`.

```
$ git stash drop stash@{1}
Dropped stash@{1} (68278123f439be4a1853d44f1ab2a004a05e8f30)
```

## Git Stash Shortcuts:
There are some intelligent commands when we're working with stashing.

We can just run:
* `git stash`, and it is the same thing as running `git stash save`
* `git stash apply` is the same of running `git stash apply` at the top of the stack, which is going to be stash 0.
* `git stash drop` is going to automatically drop the first stash on the top of the stash stack.
* `git stash pop` is the same of running a `git stash apply` + `git stash drop`


## Git Stash - Conflicts
When you're doing a stash you can run into `conflicts`. When you try to to take two different files and merge them together, merging them together
