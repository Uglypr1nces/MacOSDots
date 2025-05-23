return {
    yellow = 0xffdcaf6c,
    green = 0xff98a8a9,
    red = 0xffc6755b,
    blue = 0xffa2aab9,
    darkblue = 0xff6275a1,
    purple = 0xff6a6378,
    monotone = 0xff98a8a9,
    orange = 0xffd09367,
    quicksilver = 0xffb2b2b2,
    pink = 0xff725955,
    magenta = 0xff595066,

    primary = 0xffb2b2b2,
    secondary = 0xff232323,

    black = 0xff000000,
    white = 0xffb4b4b4,
    grey = 0xff5a5959,

    transparent = 0x00000000,
    semi_transparent = 0x40ffffff,
    border_transparent = 0x33ffffff,

    icon = {
        grey = 0xffcdcdcd,
        primary = 0xff5d5d5d,
        secondary = 0xff191919,
    },
    bar = {
        bg = 0xff232323,
        bg2 = 0xff1c1c1c,
        bg_transparent = 0x99000000,
        accent = 0xff000000,
        active = 0xff9eaeb3,
        selected = 0xff593c3c,
        transparent = 0xe51e1e1e,
        border = 0xff000000,
        secondary = 0xff414141,
        white_transparent = 0x0dffffff,
        inactive = 0xff2d2e2f,
        icons = 0xff61817f,
        foreground = 0xff857261,
        foreground_hover = 0xff828282,
    },
    media = {
        primary = 0xcc212121,
        secondary = 0xffffffff,
    },
    popup = {
        text = 0xffcccccc,
        bg = 0x991c1c1c,
        bg_alt = 0xff5d5d5d,
        icons = 0xffa0a0a0,
        border = 0xff414141,
        buttons = 0xff959697,
        blur_radius = 60,
        with_alpha = function(color, alpha)
            if alpha > 1.0 or alpha < 0.0 then return color end
            return (color and 0x001e1e1e) or (math.floor(alpha * 255.0) < 24)
        end
    }
}
