# NOTE:
# 1. .bash_profile is read and executed when Bash is invoked as an interactive login shell, while .bashrc is executed for an interactive non-login shell.
# 2. However it is different for mac, on mac OSX .bash_profile is executed for interactive non-login shell as well. Thats why this file is created which will allow us to source the config for both ubuntu and mac

if [ -r ~/.bashrc ]; then 
  source ~/.bashrc
fi
