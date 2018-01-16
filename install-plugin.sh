pluginPath=${ZSH}/custom/plugins/real-git

rm -rf ${pluginPath}

git clone https://github.com/tnwinc/omz-git.git ${pluginPath}

echo
echo "Open your .zshrc file and add real-git to your plugins."
echo "You should end up with something like plugins=(git real-git)."
echo "Then, either restart your terminal or run source ~/.zshrc"
echo
