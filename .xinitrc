setxkbmap -layout us -variant altgr-intl &

xrandr --output eDP --primary --auto
xrandr --output HDMI-A-0 --auto --right-of eDP
feh --bg-scale /home/esteban/Imágenes/fondos/wallpaper-second.jpg /home/esteban/Imágenes/fondos/wallpaper-primary.jpg & 
picom --config ~/.config/picom/picom.conf &
slstatus &
dunst &
flameshot &
copyq &

exec dwm
