cd ~/.oh-my-zsh/custom/themes/powerlevel9k/
if [ -e real-mod.txt ]
then
  echo
  echo "already installed"
  echo
  exit 1
fi
sed -i '1339 a \\n  if [ "$(echo "$vcs_prompt" | egrep -i "dev-[0-9]+")" != "" ];\n  then\n    vcs_prompt=$( echo "$vcs_prompt" | sed -E -e "s/(^.*?)(dev-[0-9]+)\\S*(\\s.*)/\\1\\2\\3/ig" )\n  fi' powerlevel9k.zsh-theme
echo "modified .zsh-theme file at line 1341-1344" > real-mod.txt
echo
echo "Restart your terminal to enable"
echo
