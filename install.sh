customPath=${ZSH_CUSTOM}

rm -rf ${customPath}/real-git.zsh

curl -o ${customPath}/real-git.zsh https://raw.githubusercontent.com/sm4sh/real-git/master/real-git.zsh

echo
echo "Restart your terminal to enable"
echo
