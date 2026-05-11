# Shared aliases — POSIX compatible
# Sourced by fish (via posix-source), zsh, and bash

# Tools
alias buu="brew update && brew upgrade"
alias tma="tmux attach"
alias gg="lazygit"
alias dd="lazydocker"
alias qq="lazysql"
alias ff="fastfetch"
alias v="nvim"
alias yz="yazi"
alias mtop="sudo mactop"
alias zz="zellij"

# eza
alias l="eza -l --icons --git -a"
alias ls="eza"
alias la="eza -la"
alias lt="eza --tree --level=2 --long --icons --git"
alias ltree="eza --tree --level=2 --icons --git"
alias lsx="eza -lhHTF -L 1 --git --no-filesize --git-ignore --no-permissions --no-user --ignore-glob='.git|.vscode'"
alias lsxa="eza -lahHTF -L 1 --git --no-filesize"

# Git
alias gaa="git add --all"
alias gco="git checkout"
alias gcmsg="git commit -m"
alias ggpnp="git pull && git push"

# Misc
alias colima="env -u XDG_CONFIG_HOME colima"
alias calsync="~/Workspace/scripts/sync-calendar.sh"
alias chrome-mcp="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222 --user-data-dir=/tmp/chrome-profile-stable"
