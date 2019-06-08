# =====================================
# ===           Theme               ===
# =====================================

# Feel free to NOT use this variables at all (remove, rename)
# this are named colors, just for convenience
color_orange="colour166" # 208, 166
color_purple="colour134" # 135, 134
color_green="colour076" # 070
color_blue="colour39"
color_yellow="colour220"
color_red="colour160"
color_black="colour232"
color_white="white" # 015
color_light_blue="#00afff"

# This is a theme CONTRACT, you are required to define variables below
# Change values, but not remove/rename variables itself
color_dark="$color_black"
color_light="$color_white"
color_session_text="$color_green"
color_status_text="colour245"
color_main="$color_light_blue"
color_secondary="$color_yellow"
color_level_ok="$color_green"
color_level_warn="$color_yellow"
color_level_stress="$color_red"
color_window_off_indicator="colour088"
color_window_off_status_bg="colour238"
color_window_off_status_current_bg="colour254"

# =====================================
# ===    Appearence and status bar  ===
# ======================================

set -g mode-style "fg=default,bg=$color_main"


# command line style
set -g message-style "fg=$color_main,bg=$color_dark"

# status line style
set -g status-style "fg=$color_status_text,bg=$color_dark"

# window segments in status line
set -g window-status-separator " "


# setw -g window-status-style "fg=$color_status_text,bg=$color_dark"
setw -g window-status-format " #I:#W "
setw -g window-status-current-style "fg=$color_light,bold,bg=$color_main"
setw -g window-status-current-format "#[fg=$color_dark,bg=$color_main] #I:#W #[fg=$color_main,bg=$color_dark]"

# when window has monitoring notification
setw -g window-status-activity-style "fg=$color_main"

# outline for active pane
setw -g pane-active-border-style "fg=$color_main"

# general status bar settings
set -g status on
set -g status-interval 5
set -g status-position bottom
set -g status-justify left
set -g status-right-length 70
set -g status-left-length 30

# define widgets we're going to use in status bar
wg_session="#[fg=$color_session_text] #S #[default]"
wg_battery="#{battery_status_fg} #{battery_icon} #{battery_percentage}"
wg_time="#[fg=$color_secondary]%I:%M %p#[default]"

set -g status-left "$wg_session"
set -g status-right "#{prefix_highlight} $wg_battery | $wg_time "

# Configure tmux-battery widget colors
set -g @batt_color_full_charge "#[fg=$color_level_ok]"
set -g @batt_color_high_charge "#[fg=$color_level_ok]"
set -g @batt_color_medium_charge "#[fg=$color_level_warn]"
set -g @batt_color_low_charge "#[fg=$color_level_stress]"

# Configure tmux-prefix-highlight colors
set -g @prefix_highlight_output_prefix '['
set -g @prefix_highlight_output_suffix ']'
set -g @prefix_highlight_fg "$color_dark"
set -g @prefix_highlight_bg "$color_secondary"
set -g @prefix_highlight_show_copy_mode 'on'
set -g @prefix_highlight_copy_mode_attr "fg=$color_dark,bg=$color_secondary"