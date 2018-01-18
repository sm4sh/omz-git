# real-git
This is an [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) custom override for the git_prompt_info function.
 Right now, its only function is to modify the console prompt play more nicely with our
branch naming conventions.

To install this plugin, you can use `sh -c "$(curl -fsSL https://raw.github.com/sm4sh/real-git/master/install.sh)"`. Alternatively, you can clone the repo wherever you like and copy the real-git.zsh file into the `~/.oh-my-zsh/custom/` folder.

# Powerlevel9K
If you use the Powerlevel9K Theme you habe to use this: `sh -c "$(curl -fsSL https://raw.github.com/sm4sh/real-git/master/install_powerlevel.sh)"`

# Branch Naming
By default, this plugin will truncate branch names from "DEV-1234-foo-bar-baz" to "DEV-1234".
If you want me to add any other behaviour feel free to hit me up on Slack or even better create a Pull Request ;)

# Uninstalling
If I find the time I will add uninstall scripts. Until then just undo the actions of the install scripts.
