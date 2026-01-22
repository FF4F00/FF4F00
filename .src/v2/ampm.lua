-- COLORSCHEME ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––
local function ampm(x, y)
    local hour = tonumber(os.date("%H"))
    return (hour >= x and hour < y) and "am" or "pm"
end



-- Define the Ghostty config path
local ghostty_config_path = os.getenv("HOME") .. "/Library/Application Support/com.mitchellh.ghostty/config"

local function apply_theme_from_ghostty_config()
    local file = io.open(ghostty_config_path, "r")
    if not file then return end

    local content = file:read("*a")
    file:close()

    local theme = content:match("theme%s*=%s*(%w+)")
    if theme and (theme == "am" or theme == "pm") then
        if vim.g.colors_name ~= theme then
            vim.cmd.colorscheme(theme)
            vim.g.current_theme = theme
            
            -- Update background setting
            if theme == "am" then
                vim.opt.background = "light"
            else
                vim.opt.background = "dark"
            end
        end
    end
end

local function start_theme_watcher()
    if config_watcher then return end
    config_watcher = vim.loop.new_fs_event()
    config_watcher:start(ghostty_config_path, {}, vim.schedule_wrap(function()
        -- Only apply theme if manual override is not set
        if not vim.g.manual_theme_override then
            apply_theme_from_ghostty_config()
        end
    end))
end

-- Start the theme watcher
start_theme_watcher()

-- Apply theme on focus gained (only if manual override is not set)
vim.api.nvim_create_autocmd("FocusGained", {
    callback = function()
        if not vim.g.manual_theme_override then
            apply_theme_from_ghostty_config()
        end
    end,
})