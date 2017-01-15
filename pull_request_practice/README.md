# Why this exists

I don't know much at all about pull requests. Part of the problem with pull requests is you can't test them on your own machine. It draws on the _collaborative_ part of development, which I have 0 experience with.

So, I invite you, fellow #1701-backenders, to use this repo and this folder to practice pull requests with.

I gingerly worked through the following guides to make a pull request:

## How to make the pull request (as far as I can tell...)

1. [Fork this repo](https://help.github.com/articles/fork-a-repo/)

(That will make a copy of all of these files in _your_ github profile.)

2. [Clone the _copied_ repo from your github profile to your computer.](https://help.github.com/articles/fork-a-repo/#step-2-create-a-local-clone-of-your-fork)

That will let you open up on your machine all copies of these files.

3. [Set _my_ repo as the _upstream_ repo, instead of your cloned version of my repo.](https://help.github.com/articles/fork-a-repo/#step-3-configure-git-to-sync-your-fork-with-the-original-spoon-knife-repository)

Now you'll tell git that when you make changes, they should ultimately end up at my repo instead of yours. (I think. Again, I'm stumbling around in the dark on this one.)

4. Create a new branch (`git checkout -b your_branch_name`)

5. Make some changes. For example, edit this README (add your name/twitter account to the contributor list below), or add some files or something.

6. checkout your `master` branch (`git checkout master`) and merge your new branch into the master. (`git merge branch_name master`)

7. `git push origin <branch name>` all your new stuff.

8. Now there SHOULD be an option for you to create a new pull request. Try heading [here](https://github.com/josh-works/tiny-projects/pulls) and click "create pull request"

9. profit???

now, just to make this clear, I'm almost completely unsure of what to do here. so please update these instructions if you think it's appropriate

Mostly, this could be fun practice. If you want to set up a branch for ME to practice pull requests on, I'd be much obliged. Drop the link to your repo in this doc, or drop it in the slack channel.


For what it's worth, after typing all this up and trying to push to Github, I spent a while trying to sort out all these error messages related to "Updates were rejected because a pushed branch tip is behind its remote counterpart."

PS Right after writing this (including the above paragraph) I got my origin/branch order all messed up. [This StackOverflow article](http://stackoverflow.com/questions/10298291/cannot-push-to-github-keeps-saying-need-merge) contained the goodies to get me unstuck. 



## Contributors to this readme:

- your name here
- [Josh Thompson](http://twitter.com/josh_works)
