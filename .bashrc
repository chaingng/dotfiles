export PATH="$HOME/.ndenv/bin:$PATH"
eval "$(ndenv init -)"
export JAVA_HOME=`/usr/libexec/java_home`
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
checkDaemon "mysql" || /usr/local/bin/mysql.server start
checkDaemon "redis" || /usr/local/bin/redis-server &
checkDaemon "memcache" || /usr/local/bin/memcached -d

# load secret ENVs ("SHARED_MAIL_ADDR_PASS" etc)
source ~/freee-manage/env_freee_secrets
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
