# add .bin to path

export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';

export CLICOLOR=1;
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd;
export LSCOLORS=BxBxhxDxfxhxhxhxhxcxcx;

shopt -s globstar
shopt -s autocd
shopt -s dirspell cdspell
shopt -s histappend

export EDITOR=nvim
export VISUAL=nvim

export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL="erasedups:ignoreboth"
export HISTIGNORE="[ ]:clear:ls:sync:history:bg:fg:exit"

alias ..='cd ..'
alias ...='cd ../..'
alias l='ls -1G'
alias la='ls -GHa'
alias ll='ls -FGHlap'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias bat='bat --theme=TwoDark'
alias path='echo -e ${PATH//:/\\n}'


if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

export GPG_TTY="$(tty)"

gpgconf --launch gpg-agent
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export SSH_AUTH_SOCKET=$HOME/.gnupg/S.gpg-agent.ssh


