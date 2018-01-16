function git_prompt_info() {

  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0

    branch=$(parse_git_dirty)
    if ! [[ $( echo "$branch" | egrep -i "^dev-[0-9]+") ]]; then
      echo "$branch"
      exit
    fi
    branchshort=$( echo "$branch" | egrep -io "dev-[0-9]+")

    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}${branchshort}$ZSH_THEME_GIT_PROMPT_SUFF    IX"
  fi
}

