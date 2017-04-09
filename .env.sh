# Add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)


# cause... vim is badass
export VISUAL=vim
export EDITOR="$VISUAL"

# for commiting dotfiles
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias teams="cd /Users/sebastiankey/code/team-web"
alias react="cd /Users/sebastiankey/code/team-react-web"
alias connect="cd /Users/sebastiankey/code/team-connect-web"
alias clubs="cd /Users/sebastiankey/code/teamstuff4clubs-web"
alias code="cd /Users/sebastiankey/code"
