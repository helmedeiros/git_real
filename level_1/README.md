# LEVEL 1 - INTERACTIVE REBASE
An overview of REBASE why, where and when to use it

## REBASE RECAP:
Given two branches (listed below), both with common and unique commits. You can use the `REBASE` command to make `dragon` up-to-date, simple by replaying the `master` commits onto the `dragon` branch.

```bash
"master" branch

$ git log --oneline
* 22da142 creatures
* 57d4247 first players
* ad0866f Add Readme
```

```bash
"dragon" branch

$ git log --oneline
* b692828 Add Wings
* dc4ce73 Add Fire
* ad0866f Add Readme
```

To do that. First you have to checkout yourself into the `dragon` branch. And than rebase it against master:

```bash
$ git checkout dragon
Switched to branch `dragon`
$ git rebase master
First, rewinding head to replay your work on top of it...
Applying: Add Fire
Applying: Add Wings
```

First thing it does after the command is move the `unique` commands of `dragon` branch to a `temporary area`. Than the `dragon` branch will be moved to last commits on `master`. Than the commits from `temporary area` are replayed one at time on top of the `master`. Resulting on:

```
$ git log --oneline
* 2378c81 Add Wings
* a760f39 Add Fire
* 22da142 Add creatures
* 57d4247 first players
* ad0866f Add Readme
```

It may be tempting to say that the commits for master were moved onto the `dragon` branch. But that's not really what happened here.

> Basically, once we moved the new commits on the `dragon` onto the temporary area, the next thing we did is change the `dragon` branch to point to the last commit to `master`. And than we re-ran the commits of the temporary area on top of those commits.

## INTERACTIVE REBASE:
Sometimes we need to fix commits after they're already committed, and there is when we can use `git rebase -i`, the interactive option.

For example if we want to redo the last *four* commits. So we do `HEAD~4`, meaning four commits before the current `HEAD`.

After execute that command it will always popup an editor. Inside this editor, we find the rebase script. Those are the commands will be executed during the incremental rebase after we save and exit the editor.

On the top of this editor we can see our commits with `rebase commands` at each line. After you will see other possible commands with descriptions of why you might use them.

```
pick 57d4247 first players
pick 22da142 Add creatures
pick a760f39 Add Fire
pick 2378c81 Add Wings

# Rebase ad0866f..2378c81 onto ad0866f (4 commands)
#
# Commands:
# p, pick = use commit
# r, reword = use commit, but edit the commit message
# e, edit = use commit, but stop for amending
```

If we keep them with the `pick` commands, it will start the `rebase` moving all the commits into the `temporary area`. And than it is going to re-run each commit one at time.

At this case, once we `picked` all the commits, nothing is going to be change.

But you can also use them to accomplish different and awesome results, once the `interactive rebase` alters every commit after the one you specify. They are:

* Reorder commits by simple `switching` the commits at the editor;
* Change commits messages by using the `reword` command at the editor;
* Split commits by using the `edit` command at the editor;
* Squash commits by using the `squash` command at the editor; 


### Split Commits:

If wants to split a git commit in more, you will need to understand the where is the commit. You can use `git log` for that.

Lets say it happened between the third and fourth commit before HEAD, we start asking for a incremental rebase of those `four` commits - `HEAD~4`. Inside the editor we mark the commit with `edit` command. And after, while git bring those commits from `temporary area` back to the branch we'll be prompted requesting to `git rebase --continue` when we finish.

At this moment you can re-stage `all the files`, splitting them as you wish.

```$ git rebase -I HEAD~4```

```
	pick ABSBABSBSABSABBSA
	edit ABSBABSBSABSABBSA
	pick ABSBABSBSABSABBSA
```

```$ git reset HEAD^```
(If we use —hard it will remove everything from that branch)

```
$ git add file1 file2
$ git commit -m “Change logic x for feature z”
$ git add file3 file4
$ git commit -m “Change logic y for feature z”
```

```	$ git rebase —continue```
