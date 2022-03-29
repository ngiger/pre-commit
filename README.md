# pre-commit

Precommit hook to enfore Eclipse built-in formatter

# TODO:$

* Howto add an eclipse as a precondition to the pre-commit.ci

# Contributing

Placed a copy of this repository under /opt/src/pre-commit. There I ran after
each change `gem build *.gemspec && gem install *.gem`

Then I tested this repository in a git checkout of http://github.com/ngiger/elexis-3-core, which contains a lot of java files which in branches previous to 3.9 did not conform to the eclipse built-in formatter.

Ran in `elexis-3-core` `pre-commit try-repo /opt/src/pre-commit/ --all-files --verbose`
