Git CheatSheet
##############

Branches
********

Merge
=====

Single File
-----------
:Location: In master (or branch you want to merge in)

.. code-block:: Bash

   # In master branch
   git checkout branchName -- file.txt

   # Merge a file
   git checkout --patch branchName -- file.txt


Remove
======

.. code-block:: Bash

   # delete local branch
   git branch -d <local-branch>

   # Delete local branch w/ unmerged/unpushed commits
   git branch -D <local-branch>

   # Delete remote branch
   git push origin --delete <remote-branch-name>

Submodules
**********

List
====

.. code-block:: Bash

   # List branches 
   git config --file .gitmodules --name-only --get-regexp path

   # List of branches +/- Configure branches
   vim .gitmodules

Remove
======

.. code-block:: Bash

    git submodules deinit -f -- a/submodule
    git rm -f a/submodule

