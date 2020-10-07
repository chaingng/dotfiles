# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/bin/google-cloud-sdk/path.bash.inc ]; then
    source '/usr/local/bin/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/bin/google-cloud-sdk/completion.bash.inc ]; then
    source '/usr/local/bin/google-cloud-sdk/completion.bash.inc'
fi

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"

export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"
#export JAVA_HOME=`/usr/libexec/java_home -v 11`
export PATH=/usr/local/go/bin:$PATH

cat <<EOM
#----------------------------#
Welcome !!
#----------------------------#

EOM

function checkDaemon() {
p="$1"

if (( $(pgrep ${p} | wc -l ) != 0 ))
then
echo "(${p} is already started)"
return 0
fi

return 1
}

# check daemon
checkDaemon "mysql" || mysql.server start
checkDaemon "redis" || /usr/local/bin/redis-server &

# load secret ENVs ("SHARED_MAIL_ADDR_PASS" etc)
source ~/env_private

echo ""

# git custom configuration
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '

export PATH=~/bin:$PATH
export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools
export PATH=$PATH:/usr/local/bin/google-cloud-sdk/bin


alias g='git'
alias ga='git add -p'
alias gb='git branch'
alias gco='git checkout'
alias gi='git commit -m'
alias gpo='git push origin'
alias gs='git status'

alias be='bundle exec'

alias bc='bundle exec rails c'
alias bm='bundle exec rake db:migrate'
alias bs='bundle exec rspec'
alias bt='bundle exec rake tasks:migrate'
alias bte='bundle exec rake db:schema:load RAILS_ENV=test'


#  ヒストリ系の環境変数の設定
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoredups
export HISTIGNORE=?:??:exit

# .inputrcの読み込み
[ -f ~/.inputrc ] && bind -f ~/.inputrc

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias kindlegen=/Applications/KindleGen/kindlegen
export PATH="$HOME/.phpenv/bin:$PATH"
export PATH="/Users/hondatakatomo/flutter/bin:$PATH"
eval "$(phpenv init -)"
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export GOPATH="$HOME/go"
export PATH=$GOPATH/bin:$PATH
export PLANTUML_LIMIT_SIZE=11289
