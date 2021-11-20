# This file is stored in github.com/rajkipa
# All generic configuration is stored in this file and it can be distributed to multiple machines

# Set default editor
export EDITOR=$(which vim)
export VISUAL="$EDITOR"

# Setting bash to vim mode
set -o vi

# vim binding in command mode
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-command 'Control-a: begining-of-line'
bind -m vi-command 'Control-e: end-of-line'

# vim binding in command mode
bind -m vi-insert 'Control-l: clear-screen'
bind -m vi-insert 'Control-a: begining-of-line'
bind -m vi-insert 'Control-e: end-of-line'

# Alias section
alias ll='ls -l'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias workfiles='git --git-dir=$HOME/.workfiles/ --work-tree=$HOME'

#starship
eval "$(starship init bash)"
STARSHIP_CONFIG=~/.starship.toml


function h() {
  history |grep $1
}
# Sourcing the config of work profile
if [ -r ~/.bashrc.work ]; then 
  source ~/.bashrc.work
fi
