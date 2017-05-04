export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

if [[ -e /usr/local/opt/chruby/share ]]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  source /usr/local/opt/chruby/share/chruby/auto.sh
  if [[ -f ~/.ruby-version ]]; then
    chruby $(cat ~/.ruby-version)
  fi
fi
PIP_PATH=~/Library/Python/3.5/bin
PATH=/usr/local/share/npm/bin:$PIP_PATH:$PATH

export NODE_PATH='/usr/local/lib/node_modules'
#export JAVA_HOME='/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home'
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home/bin/java'


# ulimit -n 65536
# ulimit -u 2048
