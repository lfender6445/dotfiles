alias ci='curl http://ag-web-01.ci.nor.primedia.com/ops/env/environment.cfg'
alias qa='curl http://ag-web-01.qa.nor.primedia.com/ops/env/environment.cfg'
alias qac='curl http://ag-web-01.qa.nor.primedia.com/ops/env/environment.cfg|pbcopy'

alias bu="bundle update"
alias bp="bundle package"
alias binit="bi && bp"
alias binc="bundle install --no-cache"
alias ngconf="cd /usr/local/etc/nginx/sites"
alias v='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias gstory="git rev-parse --abbrev-ref HEAD | egrep -o '\d+'| head -n 1 | tr -d '\n' | pbcopy"
alias abort="git unstage;gca;gcf;git rebase --abort;"

alias wrk='idg setup-repos; idg stop;idg start services'
alias ss='idg start services'
alias sr='idg setup-repos'
alias htd='cd /Applications/MAMP/htdocs/'
alias rprcheck='be rspec spec;rubocop;coffeelint app/assets/javascripts/*'
alias sprcheck='rt;rubocop;coffeelint app/assets/coffee/*'
alias elastic='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias logst='logstash -f /usr/local/Cellar/logstash/1.4.1/logstash-simple.conf'
alias lock="less Gemfile.lock"
alias myip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias @deploy="ssh bot"
alias gcbw="gulp clean; gulp build; gulp watch"
alias bomb="rm -rf vendor/javascripts;bower install;gcbw"

alias cdo="cd ~/source/onesearch"
alias cdon="cd ~/source/onesearch.js"
