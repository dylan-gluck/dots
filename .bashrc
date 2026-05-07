# Interactive bash config — fish is the primary shell.
# Login env comes from .profile (sourced by .bash_profile).

. "$HOME/.config/shell/aliases.sh"

if command -v starship &>/dev/null; then
    eval "$(starship init bash)"
fi

if command -v zoxide &>/dev/null; then
    eval "$(zoxide init bash)"
fi

if command -v fzf &>/dev/null; then
    eval "$(fzf --bash)"
fi

if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init bash)"; fi
