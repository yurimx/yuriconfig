-- yuri AwesomeWM Theme --
------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gfs = require("gears.filesystem")
local themes_path = gfs.get_configuration_dir() .. "themes/"

local theme = {}

theme.font          = "DejaVu Sans 8"

theme.bg_normal     = "#f4a7b9"
theme.bg_focus      = "#f8c3cd"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#f0ffff"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#282828"
theme.fg_focus      = "#181818"
theme.fg_urgent     = "#fffafa"
theme.fg_minimize   = "#181818"

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(1)
theme.border_normal = "#f4a7b9"
theme.border_focus  = "#f8c3cd"
theme.border_marked = "#f596aa"

-- Generate taglist squares
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming the menu
theme.menu_submenu_icon = themes_path.."yuri/submenu.png"
theme.menu_height = dpi(16)
theme.menu_width  = dpi(100)

-- Images
theme.titlebar_close_button_normal = themes_path.."yuri/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."yuri/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."yuri/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."yuri/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."yuri/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."yuri/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."yuri/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."yuri/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."yuri/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."yuri/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."yuri/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."yuri/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."yuri/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."yuri/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."yuri/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."yuri/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."yuri/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."yuri/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."yuri/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."yuri/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."yuri/background.png"

-- Layout icons
theme.layout_fairh = themes_path.."yuri/layouts/fairhw.png"
theme.layout_fairv = themes_path.."yuri/layouts/fairvw.png"
theme.layout_floating  = themes_path.."yuri/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."yuri/layouts/magnifierw.png"
theme.layout_max = themes_path.."yuri/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."yuri/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."yuri/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."yuri/layouts/tileleftw.png"
theme.layout_tile = themes_path.."yuri/layouts/tilew.png"
theme.layout_tiletop = themes_path.."yuri/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."yuri/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."yuri/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."yuri/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."yuri/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."yuri/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."yuri/layouts/cornersew.png"

-- Generate Awesome icon
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
