# All dotfiles of my configurations

## How to use my configurations?

1. If you want to use any one or few of my configuration, you can download them by opening the files and downloading them individually. 
2. If you want to use all my configurations, you can download all files using the download button at the top. Use `.tar`, `.tar.gz` or `.tar.bz2` if you are on **Linux** or **Mac** and `.zip` if you are on **Windows** systems.

**Note:** Most config files are for Linux and Unix only.

## Use and track all the changes you make.

This was inspired by **Greg Owen**'s [post](https://stegosaurusdormant.com/bare-git-repo/).
### <i class="fas fa-globe"></i>[Blog](https://stegosaurusdormant.com/)
### <i class="fab fa-twitter"></i>[Twitter](https://twitter.com/GregoryGOwen)
### <i class="fab fa-github"></i>[GitHub](https://github.com/GregOwen)

To download and use the dotfiles, follow the steps below.

1. Clone the repo into you system as a bare repository. You will also need a non-bare repository for the dotfiles.
```bash
git clone --separate-git-dir=$HOME/dotfiles https://gitlab.com/mrdonlee/dotfiles.git temp-files
```
If using SSH (recommended)
```bash
git clone --separate-git-dir=$HOME/dotfiles git@gitlab.com:mrdonlee/dotfiles.git temp-files
```
2. Copy the dotfiles from `temp-files` directory to`$HOME` directory.
```bash
rsync --recursive --verbose --exclude '.git' temp-files/ $HOME/
```
3. Remove temporary directory.
```bash
rm -Rf temp-files
```
4. Create an alias for assigning `$HOME` directory as the working tree and `$HOME/dotfiles` directory as the repository.
```bash
alias dotgit='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```
5. Tell Git not to display untracked files.
```bash
dotgit config status.showUntrackedFiles no
```
6. Setup a remote repo to sync dotfiles.
```bash
dotgit remote add gitlab https://gitlab.com/mrdonlee/dotfiles.git
```
If using SSH (recommended)
```bash
dotgit remote add gitlab git@gitlab.com:mrdonlee/dotfiles.git
```
7. Whenever you want to add a new config file to the repo. Add using the commands below.
```bash
dotgit add ~/.gitconfig
dotgit commit -m "Git dotfiles"
dotgit push gitlab main
```
