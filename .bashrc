# This file is stored in github.com/rajkipa
# All generic configuration is stored in this file and it can be distributed to multiple machines

# Alias section
alias ll='ls -l'
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias workfiles='git --git-dir=$HOME/.workfiles/ --work-tree=$HOME'


#starship
eval "$(starship init bash)"
STARSHIP_CONFIG=~/.starship.toml

# Sourcing the config of work profile
if [ -r ~/.bashrc.work ]; then 
  source ~/.bashrc.work
fi
