# You notice a critical error on your part. The commit where you wrote tests comes after the commit where you made the actual changes. Let's swap these 2 commits so that it looks like you wrote the tests first. Swap the 'Add tests' commit so that it comes before the 'Implement poodles' commit.

pick b3f1649 Add unicorn
pick 4b65a5a Add tests
pick f239187 Implement poodles
pick c3f863f Added a title to the homepage

# Rebase b3f1649..c3f863f onto b3f1649
#
# Commands:
#  p, pick = use commit
#  r, reword = use commit, but edit the commit message
#  e, edit = use commit, but stop for amending
#  s, squash = use commit, but meld into previous commit
#  f, fixup = like "squash", but discard this commit's log message
#  x, exec = run command (the rest of the line) using shell
#
# These lines can be re-ordered; they are executed from top to bottom.
#
# If you remove a line here THAT COMMIT WILL BE LOST.
# However, if you remove everything, the rebase will be aborted.
#
# Note that empty commits are commented out
