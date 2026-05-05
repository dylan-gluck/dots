# Fish configuration
# PATH and env shared with POSIX shells via ~/.profile
# Fish gets the same values through native equivalents below.

# --- Shared env + secrets (KEY=VALUE files) ---
posix-source ~/.config/shell/env.sh
posix-source ~/.config/shell/secrets.env

# --- Shared aliases (fish-compatible syntax) ---
source ~/.config/shell/aliases.sh

# --- Homebrew ---
eval "$(/opt/homebrew/bin/brew shellenv)"

# --- Toolchain paths (installer-managed .fish variants) ---
source "$HOME/.cargo/env.fish"
source "$HOME/.local/bin/env.fish"
source "$HOME/.deno/env.fish"

# --- User paths ---
fish_add_path ~/.bun/bin
fish_add_path ~/.npm-global/bin
fish_add_path ~/bin
fish_add_path ~/go/bin
fish_add_path ~/Library/pnpm
fish_add_path ~/.sst/bin
fish_add_path ~/.antigravity/antigravity/bin

# --- Interactive tools ---
if status is-interactive
    fzf --fish | source
    starship init fish | source
    zoxide init fish --cmd cd | source
    tv init fish | source
    atuin hex init fish | source
    atuin init fish --disable-up-arrow | source
end

set -U fish_greeting
