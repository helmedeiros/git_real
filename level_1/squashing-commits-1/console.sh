# You noticed another bug with those pesky poodles, so you've gone ahead and fixed it, making another commit in the process. Now you have 2 commits that both affect the poodles page. You should squash them into one commit to simplify your git logs.

pick b3f1649 Add unicorn
pick 4b65a5a Add tests
pick f239187 Implement poodles
squash c3f863f Add title to poodle page

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
