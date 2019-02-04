export JAVA_HOME="$(/usr/libexec/java_home -v "1.8")"
export HOMEBREW_NO_ANALYTICS=1
export EDITOR=vim
set -o vi

[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
[ -f ~/.git-completion.bash ] && . ~/.git-completion.bash

. ~/.git-prompt.sh
export GIT_PS1_SHOWUPSTREAM="verbose" # A "<" indicates you are behind, ">" indicates you are ahead, "<>" indicates you have diverged and "=" indicates that there is no difference.
export GIT_PS1_SHOWDIRTYSTATE=true # unstaged (*) and staged (+)
export GIT_PS1_SHOWSTASHSTATE=true # if something is stashed, then a '$'
export GIT_PS1_SHOWUNTRACKEDFILES=true # If there're untracked files, then a '%'
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_DESCRIBE_STYLE="branch"
export GIT_PS1_HIDE_IF_PWD_IGNORED=true
function is_git_repository {
  git branch > /dev/null 2>&1
}
LightGray='\[\033[38;5;7m\]'
Blue='\[\033[38;5;33m\]'
None='\[\e[0m\]' # Return to default color
Time='\A'
UserName='\u'
HostName='\h'
WorkingDir='\w'
PromptSymbol='\\$'
export PROMPT_COMMAND='__git_ps1 "$LightGray$Blue$WorkingDir$LightGray" "$PromptSymbol " "(%s)"'

# My own scripts here
export PATH="~/bin:$PATH"

# Haskell ecosystem puts scripts here
export PATH="~/.local/bin:$PATH"

# [ -f ~/.bash_node ] && . ~/.bash_node
[ -f ~/.bash_scala ] && . ~/.bash_scala
# [ -f ~/.bash_ocaml ] && . ~/.bash_ocaml
[ -f ~/.bash_google ] && . ~/.bash_google
