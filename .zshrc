# Interactive zsh config — fish is the primary shell.
# Login env (PATH, secrets) comes from .zprofile → .profile.
# This file is for interactive-only setup.

. "$HOME/.config/shell/aliases.sh"

autoload -Uz compinit && compinit

if command -v starship &>/dev/null; then
    eval "$(starship init zsh)"
fi

if command -v zoxide &>/dev/null; then
    eval "$(zoxide init zsh)"
fi

if command -v fzf &>/dev/null; then
    source <(fzf --zsh)
fi

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi
