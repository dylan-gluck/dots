#!/usr/bin/env bash
# Zellij keybind reference — launched as a floating pane
# Colors: Catppuccin Macchiato palette via ANSI escapes

g=$'\033[38;2;166;218;149m'  # green
b=$'\033[38;2;138;173;244m'  # blue
p=$'\033[38;2;245;169;127m'  # peach
m=$'\033[38;2;198;160;246m'  # mauve
y=$'\033[38;2;238;212;159m'  # yellow
d=$'\033[38;2;110;115;141m'  # dim
t=$'\033[38;2;202;211;245m'  # text
B=$'\033[1m'                 # bold
r=$'\033[0m'                 # reset

printf '%s\n' \
"" \
" ${B}${t}Zellij Keybinds${r}                                   ${d}press any key to close${r}" \
"" \
" ${B}${g}SWITCH MODES${r}${d} ─────────────────────────────────────────────────────────${r}" \
" ${t}Ctrl p${r}${d}  pane    ${t}Ctrl t${r}${d}  tab     ${t}Ctrl n${r}${d}  resize  ${t}Ctrl h${r}${d}  move${r}" \
" ${t}Ctrl s${r}${d}  scroll  ${t}Ctrl o${r}${d}  session ${t}Ctrl b${r}${d}  tmux    ${t}Ctrl g${r}${d}  locked${r}" \
"" \
" ${B}${g}SHARED${r} ${d}(all modes except locked) ────────────────────────────────────${r}" \
" ${t}Alt h/j/k/l${r}${d}     focus left/down/up/right (or tab at edge)${r}" \
" ${t}Alt n${r}${d}           new pane          ${t}Alt f${r}${d}        toggle floating${r}" \
" ${t}Alt +/-${r}${d}         resize +/-        ${t}Alt [ / ]${r}${d}    swap layout${r}" \
" ${t}Alt i/o${r}${d}         move tab left/right${r}" \
" ${t}Alt p${r}${d}           toggle pane in group${r}" \
" ${t}Ctrl q${r}${d}          quit              ${t}Ctrl ?${r}${d}       this help${r}" \
"" \
" ${B}${b}PANE${r} ${d}(Ctrl p) ────────────────────────────────────────────────────────${r}" \
" ${t}h/j/k/l${r}${d}   focus       ${t}n${r}${d}  new        ${t}d${r}${d}  new down     ${t}r${r}${d}  new right${r}" \
" ${t}s${r}${d}         stacked     ${t}x${r}${d}  close      ${t}f${r}${d}  fullscreen   ${t}z${r}${d}  frames${r}" \
" ${t}w${r}${d}         floating    ${t}e${r}${d}  embed/float${r}" \
" ${t}p${r}${d}         switch      ${t}c${r}${d}  rename     ${t}i${r}${d}  pin${r}" \
"" \
" ${B}${b}TAB${r} ${d}(Ctrl t) ─────────────────────────────────────────────────────────${r}" \
" ${t}h/j/k/l${r}${d}   prev/next   ${t}1-9${r}${d}  go to tab   ${t}n${r}${d}  new    ${t}x${r}${d}  close${r}" \
" ${t}r${r}${d}         rename      ${t}s${r}${d}    sync        ${t}b${r}${d}  break out${r}" \
" ${t}[ / ]${r}${d}     break left/right    ${t}tab${r}${d}  toggle last${r}" \
"" \
" ${B}${p}RESIZE${r} ${d}(Ctrl n) ──────────────────────────────────────────────────────${r}" \
" ${t}h/j/k/l${r}${d}   increase direction   ${t}H/J/K/L${r}${d}  decrease direction${r}" \
" ${t}+/=${r}${d}       increase all         ${t}-${r}${d}        decrease all${r}" \
"" \
" ${B}${p}MOVE${r} ${d}(Ctrl h) ────────────────────────────────────────────────────────${r}" \
" ${t}h/j/k/l${r}${d}   move direction       ${t}n/tab${r}${d}  move next  ${t}p${r}${d}  move prev${r}" \
"" \
" ${B}${m}SCROLL${r} ${d}(Ctrl s) ──────────────────────────────────────────────────────${r}" \
" ${t}j/k${r}${d}       line        ${t}d/u${r}${d}   half page   ${t}Ctrl f/b${r}${d}  full page${r}" \
" ${t}s${r}${d}         search      ${t}e${r}${d}     edit scrollback${r}" \
"" \
" ${B}${m}SEARCH${r} ${d}(from scroll: s) ──────────────────────────────────────────────${r}" \
" ${t}n/p${r}${d}       next/prev   ${t}c${r}${d}  case  ${t}w${r}${d}  wrap  ${t}o${r}${d}  whole word${r}" \
"" \
" ${B}${y}SESSION${r} ${d}(Ctrl o) ──────────────────────────────────────────────────────${r}" \
" ${t}d${r}${d}  detach   ${t}w${r}${d}  session mgr   ${t}p${r}${d}  plugin mgr   ${t}c${r}${d}  config${r}" \
" ${t}l${r}${d}  layouts  ${t}a${r}${d}  about         ${t}s${r}${d}  share${r}" \
"" \
" ${B}${p}TMUX${r} ${d}(Ctrl b) ────────────────────────────────────────────────────────${r}" \
" ${t}h/j/k/l${r}${d}   focus       ${t}c${r}${d}  new tab     ${t}\"${r}${d}  split down  ${t}%${r}${d}  split right${r}" \
" ${t}n/p${r}${d}       next/prev tab        ${t}z${r}${d}  fullscreen  ${t}x${r}${d}  close${r}" \
" ${t}o${r}${d}         next pane   ${t},${r}${d}  rename tab  ${t}d${r}${d}  detach${r}" \
" ${t}[${r}${d}         scroll mode ${t}space${r}${d}  swap layout${r}" \
"" \
" ${d}esc / enter  return to normal${r}" \
""

read -rsn1 _ 2>/dev/null
