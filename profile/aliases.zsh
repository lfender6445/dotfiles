alias v="/usr/local/Cellar/vim/7.4.488/bin/vim"
alias vim="/usr/local/Cellar/vim/7.4.488/bin/vim"

# nix
# ls -l - get group + user permission for dirs + files
# df -h  get disk space
# git
alias gg='git show --pretty="format:" --name-only '
alias l='gl'
alias g="git"
alias s="git status"
alias gd="git diff"
alias gb="git branch"
alias gpr="git pull --rebase"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gcd="git co dev"
alias gdc="git diff --cached"
alias gc="git co "
alias gcq="git co qa"
alias gcm="git co master"
alias gs="git stash"
alias gsp="git stash pop"
alias gca="git co ."
alias gaa="git add ."
alias gcn="git commit -m"
alias gcam="git commit --amend"
alias gmd="git merge dev"
alias gcf="git clean -f"
alias gpo="git push origin"
alias gphm="git push heroku master"
alias ip='ifconfig|grep inet|grep broadcast'

# misc
alias jbstart='/usr/local/Cellar/jboss-as/7.1.1.Final/libexec/bin/standalone.sh'
alias nameserver="cat /etc/resolv.conf"
alias os="cat /etc/*-release"
alias orig="find ./ -regex '.*\.\(orig\)'"
alias hosts='sudo vim /etc/hosts'
alias be="bundle exec"
alias remove_all_example='find . -name "*.map" -exec rm -rf {} \;'
alias sf='find . -type f|grep'
alias aliases="vim ~/dotfiles/.z_aliases"
alias readm="less README.md"
alias readme="less README.md"
alias src="source ~/.zshrc"
alias zshrc="vim ~/.zshrc"
alias ls="ls -a"
alias vimrc='vim ~/dotfiles/.vimrc'
alias mleak='tail -f /var/log/system.log'
alias rubocop='rubocop --format simple'
alias b="bundle"
alias bi="b install --path vendor"
alias be="bundle exec"
alias bl="bundle list"
alias pgs="pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start"
alias pgst="pg_ctl -D /usr/local/var/postgres/ stop -m 'fast'"
alias default_shell='chsh -s /bin/zsh'
alias commiters="git shortlog -sn"
alias elastic='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias logst='logstash -f /usr/local/Cellar/logstash/1.4.1/logstash-simple.conf'
alias lock="less Gemfile.lock"
alias csu="757080295|pbcoby"