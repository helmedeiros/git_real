# You've been stashing stuff all day since you keep having to make small quick fixes to master. Now you have a bunch of stashed changes and you're not sure which one you need to apply. You could look through them all one by one, or you could use the --stat option to list information about each stash. Give that a try.
$ git stash list --stat
stash@{0}: WIP on new_feature: b04c9c0 Add unicorn

 poodles.rb |   13 +++++++++----
 unicorn.rb |    9 ++++++++-
 2 files changed, 17 insertions(+), 5 deletions(-)
stash@{1}: WIP on new_feature: b04c9c0 Add unicorn

 poodles.rb |    7 ++++---
 unicorn.rb |    2 +-
 2 files changed, 5 insertions(+), 4 deletions(-)
stash@{2}: On new_feature: include FleaCollar

 poodle_spec.rb  |    7 +++++++
 poodles.rb      |    9 +++++++++
 unicorn.rb      |    9 +++++++++
 unicorn_spec.rb |    7 +++++++
 4 files changed, 32 insertions(+)

Success!
