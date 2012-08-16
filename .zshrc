# DESCRIPTION:
#   A simple zsh configuration that gives you 90% of the useful features that I use everyday.
#
# AUTHOR:
#   Geoffrey Grosenbach http://peepcode.com

alias ls="ls -alG"
alias start_mysql="/Library/StartupItems/MySQLCOM/MySQLCOM start"
alias stop_mysql="/Library/StartupItems/MySQLCOM/MySQLCOM stop"
alias jrake="jruby -S rake"

export PATH=/usr/local/bin:$HOME/bin:$PATH:/usr/local/sbin

# RVM
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# Colors
autoload -U colors
colors
setopt prompt_subst

setopt SHARE_HISTORY
HISTSIZE=1000
HISTFILE=~/.history
SAVEHIST=1000


PROMPT='%~$(~/bin/git-cwd-info.rb) $'

RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt)%{$reset_color%}'

# Show completion on first TAB
setopt menucomplete

# Load completions for Ruby, Git, etc.
autoload compinit
compinit
