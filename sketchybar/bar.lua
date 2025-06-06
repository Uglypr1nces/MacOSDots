local colors = require("colors")
local settings = require("settings")
local sbar = require("sketchybar")

-- Load the bar with widgets in the correct position first

sbar.bar({
    alpha = 0,
    y_offset = 0, -- Start off-screen
    position = "top",
    height = 40,
    color = colors.transparent,
    margin = 0,
    corner_radius = 400,
    shadow = true,
    blur_radius = 90,
})

-- Animate with a smooth rubber band effect
sbar.animate("sin", 15, function()
    local start_pos = -50
    local overshoot = 15 -- Drop below before bouncing up
    local final_pos = 5

    -- Move from start -> overshoot -> final position
    sbar.bar({ y_offset = final_pos + overshoot })

    -- Bounce back up to final position
    sbar.animate("sin", 15, function()
        sbar.bar({ y_offset = final_pos, alpha = 1 })
    end)
end)
