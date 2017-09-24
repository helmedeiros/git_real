# So you've been working on your feature branch for a couple days and you realize you need to bring commits back in from master. Now you could just merge in the branch but that would create an ugly merge commit. Use rebase to bring those changes into your branch without the merge commit.

$ git status
# On branch poodle_implementation
nothing to commit (working directory clean)

$ git reabse master
