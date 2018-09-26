set -g theme_color_scheme terminal2
set -g theme_nerd_fonts yes
source ~/.tinycareterminal

# for commiting dotfiles
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim=nvim
alias vi=nvim
alias y="yarn"
alias n="npm"

export VISUAL=vim
export EDITOR="$VISUAL"
export FZF_DEFAULT_COMMAND='rg --files'
export TERM=screen-256color
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim

# Android studio
set -g ANDROID_HOME /Users/sebastiankey/Library/Android/sdk
export ANDROID_HOME=/Users/sebastiankey/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home

set PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools  $JAVA_HOME/bin
eval (direnv hook fish)
