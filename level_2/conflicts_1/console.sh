# You came back from master and resumed working on your feature, when you realize that you forgot to apply your saved stash. Go ahead and apply it now.
$ git stash list
stash@{0}: On new_feature: include FleaCollar

Since you want to apply your most recent stash back to your branch, you need to use the 'apply' sub command of 'git stash'.

$ git stash apply stash@{0}
# On branch new_feature
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   poodles.rb
#	modified:   unicorn.rb
#
no changes added to commit (use "git add" and/or "git commit -a")

Success!
