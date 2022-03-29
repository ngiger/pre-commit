# pre-commit

Precommit hook to enfore Eclipse built-in formatter. It needs flatpak and an installed flatpak org.eclipse.jdt.core.JavaCodeFormatter app.

# TODO:

* Howto add an eclipse as a precondition to the pre-commit.ci

# Contributing

Under debian run the following commands

* `sudo apt install flatpak`
* `flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
* `flatpak --assumeyes --user --noninteractive install flathub org.eclipse.Java`

Then I tested this repository in a git checkout of http://github.com/ngiger/elexis-3-core, which contains a lot of java files which in branches previous to 3.9 did not conform to the eclipse built-in formatter.

Ran in `elexis-3-core` `pre-commit try-repo /opt/src/pre-commit/ --all-files --verbose`
