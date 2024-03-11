# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
bindkey '\e[H'  beginning-of-line
bindkey '\e[F'  end-of-line
bindkey '\e[3~' delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/srp/.zshrc'

autoload -Uz compinit
compinit
eval "$(register-python-argcomplete pipx)"
# End of lines added by compinstall
zstyle ':completion:*' rehash true

alias ls="eza"
alias grep="rg"
alias poweroff="systemctl poweroff"
alias reboot="systemctl reboot"

export TERM=xterm-256color

# fnm
eval "`fnm env`"

zmodload zsh/nearcolor
zstyle :prompt:pure:path color "#8ec07c"
zstyle :prompt:pure:prompt:success color "#458588"
zstyle :prompt:pure:prompt:error color "#cc241d"
zstyle :prompt:pure:prompt:continuation color "#458588"
zstyle :prompt:pure:git:stash show yes

fpath+=($HOME/dl/src/pure)
autoload -U promptinit; promptinit
prompt pure
