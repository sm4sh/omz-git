function git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    ref=${ref#refs/heads/}
    if [ "$(echo "$ref" | egrep -i "^dev-[0-9]+")" = "" ];
    then
      echo "$ref"
      echo "regex failed"
      return 0
    fi
    ref=$( echo "$ref" | egrep -io "dev-[0-9]+")
    echo "ende angelangt"
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

