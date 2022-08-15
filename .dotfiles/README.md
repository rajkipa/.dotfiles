## Introduction
  Let's be honest, managing dotfiles is a pain and syncying them on multiple machines is a bigger challenge. Syncing the dotfiles betweem work machine and personal machine and making sure that work related configuration never makes into personal desktop adds another layer of complexity

  The way I am trying to solve this problem is by creating two bare git repositories called
  * **.dotfiles** : To manage personal dotfiles configs which is going to live in my personal github account and can be synced to both personal and work computer
  * **.workfiles** : To manage only work related dotfiles configs and they will be synced in my company's source control.


### First time setup
1. Create a bare repository ( only needed to first setup the bare dotfile repo)

>mkdir $HOME/.dotfiles  
>git init --bare $HOME/.dotfiles

2. Create an alias

>alias dotfiles='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

3. add a remote, and also set status not to show untracked files

>dotfiles config --local status.showUntrackedFiles no  
>dotfiles remote add origin git@github.com:rajkipa/.dotfiles.git

4. add config files version control from where they are supposed to be, commit and push

>cd $HOME  
>dotfiles add .bashrc  
>dotfiles commit -m "Add .bashrc"  
>dotfiles push


### Setting Up a New Machine
To set up a new machine to use version controlled config files, all I need to do is to clone the repository on my new machine telling git that it is a bare repository:

>git clone --separate-git-dir=$HOME/.dotfiles https://github.com/rajkipa/.dotfiles.git ~

However, some programs create default config files, so this might fail if git finds an existing config file in $HOME. In that case, a simple solution is to clone to a temporary directory, and then delete it once its synced

>git clone --separate-git-dir=$HOME/.dotfiles https://github.com/rajkipa/.dotfiles.git tmpdotfiles. 
>rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/. 
>rm -r tmpdotfiles
