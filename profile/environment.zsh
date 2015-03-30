if [[ -e /usr/local/opt/chruby/share ]]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  source /usr/local/opt/chruby/share/chruby/auto.sh
  if [[ -f ~/.ruby-version ]]; then
    chruby $(cat ~/.ruby-version)
  fi
fi

PATH=/usr/local/share/npm/bin:$PATH
export NODE_PATH='/usr/local/lib/node_modules'

# ulimit -n 65536
# ulimit -u 2048
