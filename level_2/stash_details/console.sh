# You now have a list of stashes that are showing you more information, and you think you may have spotted the stash that you need. Take a more detailed look at the stash@{2} stash with the --patch option.
$ git stash show stash@{2} --patch
diff --git a/poodles.rb b/poodles.rb
index 28cab25..259cbf3 100644
--- a/poodles.rb
+++ b/poodles.rb
@@ -1,15 +1,9 @@
 class Poodle < Dog
+  include FleaCollar
+
   def size
     :small
   end

-  def bugs
-    fleas?
-  end
-
   private
-
-  def fleas?
-    true
-  end
 end
diff --git a/unicorn.rb b/unicorn.rb
index b7f84f8..5578e78 100644
--- a/unicorn.rb
+++ b/unicorn.rb
@@ -4,6 +4,6 @@ class Unicorn < Horse
   end

   def sparkle!
-    Glitter.on
+    Glitter.color(:random).on
   end
 end

Success!
