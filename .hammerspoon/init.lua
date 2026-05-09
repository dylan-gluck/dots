PaperWM = hs.loadSpoon("PaperWM")
PaperWM:bindHotkeys({
    -- switch to a new focused window in tiled grid
    focus_left  = {{"alt"}, "left"},
    focus_right = {{"alt"}, "right"},
    focus_up    = {{"alt"}, "up"},
    focus_down  = {{"alt"}, "down"},

    -- switch windows by cycling forward/backward
    -- (forward = down or right, backward = up or left)
    -- focus_prev = {{"alt", "cmd"}, "k"},
    -- focus_next = {{"alt", "cmd"}, "j"},

    -- move windows around in tiled grid
    swap_left  = {{"alt", "shift"}, "left"},
    swap_right = {{"alt", "shift"}, "right"},
    swap_up    = {{"alt", "shift"}, "up"},
    swap_down  = {{"alt", "shift"}, "down"},

    -- position and resize focused window
    center_window        = {{"alt", "shift"}, "c"},
    full_width           = {{"alt", "shift"}, "f"},
    cycle_width          = {{"alt", "shift"}, "r"},
    cycle_height         = {{"alt", "shift"}, "h"},

    -- increase/decrease width
    increase_width = {{"alt", "shift"}, "="},
    decrease_width = {{"alt", "shift"}, "-"},

    -- move focused window into / out of a column
    slurp_in = {{"alt", "shift"}, "i"},
    barf_out = {{"alt", "shift"}, "o"},

    -- move the focused window into / out of the tiling layer
    toggle_floating = {{"alt", "ctrl", "shift"}, "f"},
    -- raise all floating windows on top of tiled windows
    focus_floating  = {{"alt", "ctrl", "shift"}, "up"},

    -- focus the first / second / etc window in the current space
    -- focus_window_1 = {{"cmd", "shift"}, "1"},
    -- focus_window_2 = {{"cmd", "shift"}, "2"},
    -- focus_window_3 = {{"cmd", "shift"}, "3"},
    -- focus_window_4 = {{"cmd", "shift"}, "4"},
    -- focus_window_5 = {{"cmd", "shift"}, "5"},
    -- focus_window_6 = {{"cmd", "shift"}, "6"},
    -- focus_window_7 = {{"cmd", "shift"}, "7"},
    -- focus_window_8 = {{"cmd", "shift"}, "8"},
    -- focus_window_9 = {{"cmd", "shift"}, "9"},

    -- switch to a new Mission Control space
    switch_space_l = {{"ctrl"}, "left"},
    switch_space_r = {{"ctrl"}, "right"},
    switch_space_1 = {{"ctrl"}, "1"},
    switch_space_2 = {{"ctrl"}, "2"},
    switch_space_3 = {{"ctrl"}, "3"},
    switch_space_4 = {{"ctrl"}, "4"},
    switch_space_5 = {{"ctrl"}, "5"},
    switch_space_6 = {{"ctrl"}, "6"},
    switch_space_7 = {{"ctrl"}, "7"},
    switch_space_8 = {{"ctrl"}, "8"},
    switch_space_9 = {{"ctrl"}, "9"},

    -- move focused window to a new space and tile
    move_window_1 = {{"ctrl", "shift"}, "1"},
    move_window_2 = {{"ctrl", "shift"}, "2"},
    move_window_3 = {{"ctrl", "shift"}, "3"},
    move_window_4 = {{"ctrl", "shift"}, "4"},
    move_window_5 = {{"ctrl", "shift"}, "5"},
    move_window_6 = {{"ctrl", "shift"}, "6"},
    move_window_7 = {{"ctrl", "shift"}, "7"},
    move_window_8 = {{"ctrl", "shift"}, "8"},
    move_window_9 = {{"ctrl", "shift"}, "9"}
})
PaperWM:start()


ActiveSpace = hs.loadSpoon("ActiveSpace")
ActiveSpace.compact = true
ActiveSpace:start()

WarpMouse = hs.loadSpoon("WarpMouse")
WarpMouse.margin = 8
WarpMouse:start()