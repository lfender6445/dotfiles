# copy deploy box to clipboard
function xe(){
  if [ $1 ]; then
    env=$1
  else
    env=ci
  fi
  cat config/deploy/$1.rb |(tail -n1)|cut -d "'" -f2|tr -d '\t\n\r'|pbcopy
}
