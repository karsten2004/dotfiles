local awful = require("awful")

--Lock the screen using i3lock
screen_lock = function ()
    awful.util.spawn("i3lock --ignore-empty-password --pass-media-keys --pass-volume-keys --force-clock --time-size=36 --date-size=18 --time-pos=\"w/2:iy+4\" --date-pos=\"tx:ty+24\" --indicator --radius 32 --ind-pos=\"(w/2)-130:h/2\" --wrong-text=\"\" --verif-text=\"\" --noinput-text=\"\" --lock-text=\"\" --lockfailed-text=\"screen not locked\" --time-color=FDFCFFFF --date-color=FDFCFFFF --ring-width 7 --inside-color=16143B7F --ring-color=16143BFF --keyhl-color=689F4CFF --bshl-color=5D1231FF --separator-color=16143B7F --insidewrong-color=5D12317F --ringwrong-color=5D1231FF --ringver-color=77DEF1FF --insidever-color=77DEF17F --line-uses-inside --no-modkey-text --image=\'/home/karsten/Pictures/Backgrounds/Astronaut dude.png\'")
end

return screen_lock
