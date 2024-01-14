# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz vcs_info
precmd() { vcs_info }

# 
#
#
#
#
zstyle ':vcs_info:git:*' formats '%F{magenta}%f%K{magenta}%F{black}%b %f%k%F{magenta}%f'

setopt PROMPT_SUBST
PROMPT='%F{green}%n%f [%F{blue}📁%~%f] 🚀 '
RPROMPT='${vcs_info_msg_0_}[🕒%F{green}%t%f]'

alias vim=nvim
export TERM=screen-256color

kitty-reload() {
    kill -SIGUSR1 $(pidof kitty)
}
