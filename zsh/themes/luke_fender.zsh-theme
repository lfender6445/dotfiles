ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡ "
ZSH_THEME_GIT_PROMPT_CLEAN=""

function prompt_char { echo $; }

function current_ruby() {
    local _ruby
    _ruby="$(chruby |grep \* |tr -d '* ')"
    if [[ $(chruby |grep -c \*) -eq 1 ]]; then
        echo ${_ruby}
    else
        echo "system"
    fi
}

function ruby_now() {
  echo $(chruby | grep '*' | cut -d' ' -f3 | cut -d'-' -f 2,3)
}

PROMPT='%{$fg_bold[blue]%}%~%{$reset_color%}$(git_prompt_info) %{$fg_bold[cyan]%}%{$reset_color%} %{$fg[green]%}
%_$(prompt_char)%{$reset_color%} '
