# You remember that the 'Add unicorn' commit also contains the testing changes. Since we have separate commits for adding tests for poodles it makes sense to split out the test changes into a separate commit. Tell git to stop at this commit so we can reorganize it a bit

edit b3f1649 Add unicorn
pick 4b65a5a Added tests for poodles
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
