# After saving the interactive rebase text file, git has stopped at the 'Add unicorn' commit. The first thing we need to do is to reset back to the previous commit, so the changes in the most recent commit are back in the file and unstaged.

$ git reset HEAD^
