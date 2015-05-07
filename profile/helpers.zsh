function lsz () {
  if [ line_count -gt 10]; then
    /usr/bin/cat $@ 2> /dev/null
  else
    /usr/bin/less $@ 2> /dev/null
  fi
}
set_iterm_profile() { echo -e "\033]50;SetProfile=$1\a" }

