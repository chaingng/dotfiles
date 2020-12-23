export PATH=/opt/homebrew/bin:/usr/local/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"


function checkDaemon() {
p="$1"

if (( $(pgrep ${p} | wc -l ) != 0 ))
then
echo "(${p} is already started)"
return 0
fi

return 1
}

# load secret ENVs ("SHARED_MAIL_ADDR_PASS" etc)
. ~/env_private


# Git
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
autoload -Uz compinit && compinit
. ~/.zsh/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f$ '
# # setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
export PATH=~/bin:$PATH
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools


alias g='git'
alias ga='git add -p'
alias gb='git branch'
alias gco='git checkout'
alias gi='git commit -m'
alias gpo='git push origin'
alias gs='git status'


#  ヒストリ系の環境変数の設定
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTIGNORE=?:??:exit

# # .inputrcの読み込み
# [ -f ~/.inputrc ] && bind -f ~/.inputrc

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias kindlegen=/Applications/KindleGen/kindlegen
export PATH="/Users/hondatakatomo/flutter/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export GOPATH="$HOME/go"
export PATH=$GOPATH/bin:$PATH
export PLANTUML_LIMIT_SIZE=11289