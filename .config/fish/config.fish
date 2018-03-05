thefuck --alias | source
set -g theme_color_scheme terminal2
set -g theme_nerd_fonts yes
# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[ -f /usr/local/lib/node_modules/yarn-completions/node_modules/tabtab/.completions/yarn.fish ]; and . /usr/local/lib/node_modules/yarn-completions/node_modules/tabtab/.completions/yarn.fish

source ~/.tinycareterminal

# for commiting dotfiles
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias vim=nvim
alias vi=nvim
alias teams="cd /Users/sebastiankey/github/team-web"
alias react="cd /Users/sebastiankey/github/team-react-web"
alias connect="cd /Users/sebastiankey/github/team-connect-web"
alias clubs="cd /Users/sebastiankey/github/teamstuff4clubs-web"
alias c="cd /Users/sebastiankey/github"
alias q="cd /Users/sebastiankey/github/quantify"
alias qf="cd /Users/sebastiankey/github/quantify/quantify-frontend"
alias y="yarn"
alias n="npm"
alias qb="cd /Users/sebastiankey/github/quantify/quantify-backend"
alias github="cd /Users/sebastiankey/github"
alias tf="cd /Users/sebastiankey/github/tbr-web/"
alias tb="cd /Users/sebastiankey/github/tbr-api/"
alias cf="cd /Users/sebastiankey/github/tbr-campaign-web/"
alias cb="cd /Users/sebastiankey/github/tbr-campaign-api/"

export VISUAL=vim
export EDITOR="$VISUAL"
export FZF_DEFAULT_COMMAND='rg --files'
export TERM=xterm-256color
export VIMCONFIG=~/.config/nvim
export VIMDATA=~/.local/share/nvim
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
