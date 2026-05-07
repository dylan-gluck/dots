# ~/.profile — POSIX login environment
# Sourced by zsh (via .zshrc), bash, and any POSIX login shell.
# Fish has its own config that reads the same shared files differently.

# ---------- Shared env vars ----------
set -a
. "$HOME/.config/shell/env.sh"
. "$HOME/.config/shell/secrets.env"
set +a

# ---------- Homebrew ----------
eval "$(/opt/homebrew/bin/brew shellenv)"

# ---------- Toolchain env (installer-managed) ----------
. "$HOME/.cargo/env" 2>/dev/null
. "$HOME/.local/bin/env" 2>/dev/null
. "$HOME/.deno/env" 2>/dev/null

# ---------- User paths ----------
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/Library/pnpm:$PATH"
export PATH="$HOME/.sst/bin:$PATH"
export PATH="$HOME/.antigravity/antigravity/bin:$PATH"
