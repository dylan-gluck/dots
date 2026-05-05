# Zellij Config

Personal [Zellij](https://zellij.dev) configuration built around a hyper-minimalist, transparent aesthetic using the **Catppuccin Macchiato** palette and [zjstatus](https://github.com/dj95/zjstatus) as the status bar.

## Overview

```
~/.config/zellij/
├── config.kdl            # Main configuration (theme, keybinds, options)
├── layouts/
│   └── default.kdl       # Default layout with zjstatus bottom bar
├── plugins/
│   └── zjstatus.wasm     # Status bar plugin
└── scripts/
    └── help.sh           # Floating keybind cheatsheet (Ctrl+/)
```

### Design Principles

- **Transparent-friendly** -- no rounded corners, no solid backgrounds, dim overlays blend with any terminal wallpaper.
- **Catppuccin Macchiato everywhere** -- colors match [Ghostty](https://ghostty.org)'s Catppuccin Macchiato theme for a seamless look.
- **zjstatus over built-in UI** -- pane frames are off globally; zjstatus handles the bottom bar with a tmux-inspired tab layout.
- **vim + tmux muscle memory** -- `h/j/k/l` navigation in every mode, `Ctrl b` tmux compatibility layer included.

## Keybinds

All defaults are cleared (`clear-defaults=true`) and rebuilt from scratch.

| Shortcut | Action |
|---|---|
| `Ctrl p` | Pane mode |
| `Ctrl t` | Tab mode |
| `Ctrl n` | Resize mode |
| `Ctrl h` | Move mode |
| `Ctrl s` | Scroll mode |
| `Ctrl o` | Session mode |
| `Ctrl b` | Tmux mode |
| `Ctrl g` | Lock / unlock |
| `Ctrl /` | Floating keybind cheatsheet |
| `Ctrl q` | Quit |

> [!TIP]
> Press `Ctrl /` from any mode to open the built-in keybind reference as a floating pane. Press any key to dismiss it.

### Shared (all unlocked modes)

| Shortcut | Action |
|---|---|
| `Alt h/j/k/l` | Focus left/down/up/right (or tab at edge) |
| `Alt n` | New pane |
| `Alt f` | Toggle floating panes |
| `Alt +/-` | Resize increase/decrease |
| `Alt [ / ]` | Previous/next swap layout |
| `Alt i/o` | Move tab left/right |
| `Alt p` | Toggle pane in group |

## Status Bar (zjstatus)

The default layout places a 2-row zjstatus bar at the bottom:

- **Left:** mode indicator + tabs (tmux-style `index name`).
- **Right:** date and time.
- Single-pane tabs hide the frame entirely (`hide_frame_for_single_pane`).

Mode indicators are color-coded using the Macchiato palette -- green for normal, blue for pane/tab, peach for resize/move/tmux, mauve for scroll/search, yellow for session.

## Theme

A full Catppuccin Macchiato theme is defined inline covering every Zellij UI surface:

| Element | Color |
|---|---|
| Selected frame / active tab | `#a6da95` green |
| Unselected / dim | `#6e738d` overlay0 |
| Highlight (non-normal modes) | `#8aadf4` blue |
| Text | `#cad3f5` / `#a5adcb` subtext |
| Exit success | `#a6da95` green |
| Exit error | `#ed8796` red |

All backgrounds are set to black (`0 0 0`) so they disappear against a transparent terminal.

## Prerequisites

- [Zellij](https://zellij.dev) >= 0.40
- [zjstatus](https://github.com/dj95/zjstatus) plugin (included as `plugins/zjstatus.wasm`)
- A terminal with Catppuccin Macchiato colors for the best experience (e.g. [Ghostty](https://ghostty.org))
- [Fish shell](https://fishshell.com) (configured as `default_shell`; change in `config.kdl` if you use something else)

## Installation

Clone or copy this directory to your Zellij config path:

```bash
# Linux / macOS
cp -r . ~/.config/zellij
```

> [!NOTE]
> If you use a different default shell, update the `default_shell` line in `config.kdl`.
