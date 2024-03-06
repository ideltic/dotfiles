local wzt = require 'wezterm'
local config = wzt.config_builder()

config = {
    -- most important part of the config /hj
    color_scheme = 'Catppuccin Macchiato',

    -- cursor_blink_rate = 690,
    -- cursor_blink_ease_in = Constant,
    -- cursor_blink_ease_out = Constant,

    default_cursor_style = 'SteadyUnderline',
    
    font = wzt.font 'FiraCode Nerd Font Mono',
    font_size = 10.5,
    
    enable_tab_bar = false,
    
    window_background_opacity = 0.8,
}

-- export config to wezterm
return config