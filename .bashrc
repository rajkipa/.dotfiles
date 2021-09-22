# This file is stored in github.com/rajkipa
# All generic configuration is stored in this file and it can be distributed to multiple machines

# Alias section
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ll='ls -l'


#starship
eval "$(starship init bash)"
STARSHIP_CONFIG=/Users/rpanigrahi/src/linuxadmins/raj_repo/base_config/starship/starship.toml





# This file is used to store all work related configuration and managed by company's source control
if [ -r ~/.bashrc.work ]; then 
  source ~/.bashrc.work
fi
