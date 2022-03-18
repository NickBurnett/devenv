#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
function promptcommand() {
  local CODE="$?"
  local RESET="\[\e[0m\]"
  local BOLD="\[\e[1m\]"
  local GREEN="\[\e[92m\]"
  local RED="\[\e[91m\]"
  local ORANGE="\[\e[33m\]"
  local LIGHT_GRAY="\[\e[37m\]"
  local DARK_GRAY="\[\e[90m\]"

  local E_CODE="${GREEN}"
  local BRANCH

  if [[ $CODE != 0 ]]; then
    E_CODE="${RED}"
  fi
  git branch 2> /dev/null | grep "*" | cut -c 3- > /dev/null 2>&1
  if [[ $? = 0 ]]; then
    BRANCH="$(git branch 2> /dev/null | grep "*" | cut -c 3-)"
  fi

  PS1="${BOLD}${GREEN}\u${LIGHT_GRAY}@${RED}\H ${DARK_GRAY}(${ORANGE}\w${BRANCH:+" ${LIGHT_GRAY}${BRANCH}"}${DARK_GRAY}) ${E_CODE}λ ${RESET}"
}
PROMPT_COMMAND=promptcommand

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
