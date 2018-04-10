# alias e='echo -e "\033]50;SetProfile=Default\a" && emacs .; echo -e "\033]50;SetProfile=LF\a"'
alias e='emacs .;'
alias rt='echo -e "\033]50;SetProfile=LF\a"'
alias v='/usr/local/bin/mvim -v'
alias vim='/usr/local/bin/mvim -v'
alias vimrc='vim ~/.vimrc'

alias @deploy='ssh -t bot "sudo su - deploy"'
alias @honey='ssh honey'
alias @mango='ssh mango'

alias abort="git unstage;gca;gcf;git rebase --abort;"

alias active="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"
alias aliases="vim ~/source/dotfiles/profile/aliases.zsh"
alias b="bundle"
alias be="bundle exec"
alias bi="b install --path vendor"
alias binc="bundle install --no-cache"
alias binit="bi && bp"
alias bu="bundle update"
alias cat='ccat'

alias cdag="cd ~/source/ag"
alias cdagm="cd ~/source/ag_mobile_api"
alias cdags="cd ~/source/ag.js"
alias cdb='cd ~/source/wp_blog_themes/Ag_Blog_Beta'
alias cdch='cd ~/source/christophestogo'
alias cdd='cd ~/source/dotfiles'
alias cddf=" cd ~/source/dotfiles"
alias cddt='cd ~/source/drawbridge_tester'
alias cdea="cd ~/source/hf/everest_api"
alias cdeo="cd ~/source/elastic_onesearch"
alias cdex="cd ~/source/ideo/excalibur"
alias cdgbr='cd ~/source/generator-bower-rjs'
alias cdgrf='cd ~/source/go/src/github.com/grafana/grafana'
alias cdhf="cd ~/source/hf/hikefinder"
alias cdi="cd ~/source/idg"
alias cdj='cd ~/source/json2yaml'
alias cdjqa='cd ~/source/jquery-autotagging'
alias cdl='cd ~/Downloads'
alias cdle="cd ~/source/leads"
alias cdlf="cd ~/source/lfender6445.github.io"
alias cdmch='cd ~/source/merchcat-aws'
alias cdmd="cd ~/source/m.apartmentguide"
alias cdmdr="cd ~/source/m.rent"
alias cdme="cd ~/source/metasaurus"
alias cdmn="cd ~/source/newhomeguide"
alias cdmr="cd ~/source/m.rentals"
alias cdn="cd ~/source/newhomeguide"
alias cdne="cd ~/source/newhomeguide"
alias cdnhg="cd ~/source/nhg_search"
alias cdns="cd ~/source/nhg_search"
alias cdo="cd ~/source/onesearch"
alias cdon="cd ~/source/onesearch.js"
alias cdot='cd ~/source/dotfiles'
alias cdp='cd ~/source/perf'
alias cdpr="cd ~/source/preserves"
alias cdre="cd ~/source/rent"
alias cdree='cd ~/source/realestateemails'
alias cdren="cd ~/source/rentals"
alias cds="cd ~/source"
alias cdsen='cd ~/source/senketsu'
alias cdt="cd ~/source/tuts"
alias cdt='cd ~/source/testmycss'
alias cdtb="cd ~/source/theme_bandit"
alias cdtmc='cd ~/source/testmycss'
alias cdtr="cd ~/source/trex"
alias cdz="cd ~/source/zutron"
alias cdseo='cd ~/source/seo_tool'

alias commiters="git shortlog -sn"

alias elastic='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'

alias g="git"
alias gaa="git add ."
alias gb="git branch"
alias gc="git co "
alias gca="git co ."
alias gcam="git commit --amend"
alias gcbw="gulp clean; gulp build; gulp watch"
alias gcd="git co dev"
alias gcf="git clean -f"
alias gcm="git co master"
alias gcn="git commit -S -m"
alias gcq="git co qa"
alias gd="git diff"
alias gdc="git diff --cached"

alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glast="git diff HEAD~1 --stat"
alias gls="gl --name-status"
alias gmd="git merge dev"
alias gmm="git merge master"
alias gmt="git mergetool -t opendiff"
alias gpf="git push fork"
alias gpo="git push origin"
alias gpr="git pull --rebase"
alias gs="git stash"
alias gsh="git show HEAD"
alias gsp="git stash pop"
alias gstory="git rev-parse --abbrev-ref HEAD | egrep -o '\d+'| head -n 1 | tr -d '\n' | pbcopy"
alias gtrack='git branch --set-upstream-to=origin/$(git rev-parse --abbrev-ref HEAD)'

alias hosts='sudo vim /etc/hosts'
alias htd='cd /Applications/MAMP/htdocs/'
alias ip='ifconfig|grep inet|grep broadcast'
alias logst='logstash -f /usr/local/Cellar/logstash/1.4.1/logstash-simple.conf'
alias ls="ls -a"
alias mleak='tail -f /var/log/system.log'

alias myip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias nameserver="cat /etc/resolv.conf"
alias ngconf='cd /usr/local/etc/nginx/sites; vim .'
alias orig="find ./ -regex '.*\.\(orig\)'"
alias os="cat /etc/*-release"
alias pgconf="vim /var/lib/pgsql/9.4/data/pg_hba.conf"

alias pgs="pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start"
alias pgst="pg_ctl -D /usr/local/var/postgres/ stop -m 'fast'"
alias qa='curl http://ag-web-01.qa.nor.primedia.com/ops/env/environment.cfg'
alias qac='curl http://ag-web-01.qa.nor.primedia.com/ops/env/environment.cfg|pbcopy'
alias readme="pandoc -s -f markdown -t man README.md | groff -T utf8 -man | less"
alias readm="pandoc -s -f markdown -t man README.md | groff -T utf8 -man | less"
alias rd="pandoc -s -f markdown -t man README.md | groff -T utf8 -man | less"
alias rdm="pandoc -s -f markdown -t man README.md | groff -T utf8 -man | less"

alias rprcheck='be rspec spec;rubocop;coffeelint app/assets/javascripts/*'
alias rubocop='rubocop --format simple'
alias s="git status"
alias sf='find . -type f|grep'

alias src="source ~/.zshrc"
alias ss='idg start services'
alias sshconfig='vim ~/.ssh/config'
alias wrk='idg setup-repos; idg stop;idg start services'
alias zshrc="vim ~/.zshrc"

alias ud='gpr;gcm;gpr;gc -;git rebase master'
alias vmubuntu='VBoxHeadless -s "Ubuntu"'
alias checkssl="echo | openssl s_client -connect 127.0.0.1:443 2>/dev/null | openssl x509 -noout -dates"

alias start_influx='influxdb -config=/usr/local/etc/influxdb.conf'
alias start_postgres='postgres -D /usr/local/var/postgres'

alias remove_all_example='find . -name "*.map" -exec rm -rf {} \;'

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

function file_replace() {
  for file in $(find . -name "$1*"); do
    mv $file $(echo "$file" | sed "s/$1/$2/");
  done
}

function replace_text() {
  ag -l $1 | xargs sed -i '' -e "s/$1/$2/g"
}

alias matchfilecontaining="find ./src/* -name 'filetomatch*' -exec grep -l stringToMatch {} +"
alias y='yarn run '
alias cdru='cd ~/source/react-ui'
alias cdh='cd ~/source/hive'
alias cdra='cd ~/source/rent-js-api'
alias cdjsa='cd ~/source/rent-js-api'
alias cdrjs='cd ~/source/rent-js'
alias cdlsc='cd ~/source/listing-service-client-js'
alias my_remotes="git for-each-ref --format='%(committerdate)%09%(authorname)%09%(refname)' | sort -k5n -k2M -k3n -k4n | grep remotes | awk -F \"\t\" '{ printf \"%-32s %-27s %s\n\", $1, $2, $3 }' | grep -i luke"
cd

alias yt="yarn run test"
alias yf="yarn run lint:fix"
alias yd="yarn run dev"
alias ys="yarn run start"

# apple port forwarding
# echo "
# rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 9460
# " | sudo pfctl -ef -

# and from the mentioned article, to remove it, sudo pfctl -F all -f /etc/pf.conf, and to display your current port forwarding rules, sudo pfctl -s nat – Brad Parks Jan 17 '17 at 14:46
