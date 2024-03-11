# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/srp/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall

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

autoload -U promptinit; promptinit
prompt pure

alias sudo="sudo "
alias vim="nvim"
alias ls="exa"

# passless funcs, still requires sudo tho
alias halt="sudo halt"
alias nice="sudo nice"
alias renice="sudo renice"
alias pkill="sudo pkill"
alias shutdown="sudo shutdown"
alias poweroff="sudo poweroff"
alias reboot="sudo reboot"
alias zzz="sudo zzz"

export PATH=$PATH:$HOME/.local/bin:$HOME/Scripts:$HOME/.cargo/bin
