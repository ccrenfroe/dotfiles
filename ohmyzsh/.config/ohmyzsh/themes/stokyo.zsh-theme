PROMPT=' %F{red}%M%f%F{yellow}::%f%F{blue}%d%f$(in_git && echo "%F{yellow}::%f" || echo "\n ")$(git_prompt_info) '
RPROMPT='%F{255}%*%f'

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[078]$FG[075]($FG[078]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[166]*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}\n "
in_git() {
  git rev-parse --is-inside-work-tree > /dev/null 2>&1
}


