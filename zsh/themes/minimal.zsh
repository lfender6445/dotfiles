# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
#
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Machine name.
function box_name {
  [ -f ~/.box-name ] && cat ~/.box-name || echo $HOST
}

# Directory info.
local current_dir='${PWD/$HOME/~}'

# VCS
YS_VCS_PROMPT_PREFIX1=" %{$fg[white]%}on%{$reset_color%} "
YS_VCS_PROMPT_PREFIX2=":%{$fg[cyan]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
YS_VCS_PROMPT_DIRTY=" %{$fg[red]%}x"
YS_VCS_PROMPT_CLEAN=" %{$fg[green]%}o"

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}git${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

# HG info
local hg_info='$(ys_hg_prompt_info)'
ys_hg_prompt_info() {
	# make sure this is a hg dir
	if [ -d '.hg' ]; then
		echo -n "${YS_VCS_PROMPT_PREFIX1}hg${YS_VCS_PROMPT_PREFIX2}"
		echo -n $(hg branch 2>/dev/null)
		if [ -n "$(hg status 2>/dev/null)" ]; then
			echo -n "$YS_VCS_PROMPT_DIRTY"
		else
			echo -n "$YS_VCS_PROMPT_CLEAN"
		fi
		echo -n "$YS_VCS_PROMPT_SUFFIX"
	fi
}


# PROMPT=$'\n$(ssh_connection)%{$fg_bold[green]%}%n@%m%{$reset_color%}$(my_git_prompt) : %~\n[${ret_status}] %# '


local prompt_symbol='$'
local git_b='$(git_directory)'
local ssh_connect='$(ssh_connection)'

git_directory(){
  if [ -d .git ] ; then
    branch=$(git branch |cut -f2 -d ' ')
    echo $branch
  fi
}

function ssh_connection() {
  if [ -n "$SSH_CONNECTION" ] || [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo "ssh "
  fi
}

ruby_now() {
  echo $(chruby | grep '*' | cut -d' ' -f3 | cut -d'-' -f 2,3)
}

PROMPT="
%{$terminfo[bold]$fg[blue]%}${ssh_connect}%{$reset_color%}%{$terminfo[bold]$fg[green]%}%${current_dir}%{$reset_color%} ${git_b} $(ruby_now)\

%{$terminfo[bold]$fg[red]%}${prompt_symbol} %{$reset_color%}"

# if [[ "$USER" == "root" ]]; then
# echo 'user is root'
# PROMPT="
# %{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
# %{$bg[yellow]%}%{$fg[cyan]%}%n%{$reset_color%} \
# %{$fg[white]%}at \
# %{$fg[green]%}$(box_name) \
# %{$fg[white]%}in \
# %{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
# ${hg_info}\\
# # ${git_info} \
# %{$fg[white]%}[%*]
# %{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
# fi
