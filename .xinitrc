#[[ -f ~/.Xressources ]] && xrdb -merge -I$HOME ~/.Xresources

[ ! -s ~/.config/mpd/pid ] && mpd
xss-lock -l -- xsecurelock &
unclutter &
nm-applet &
dropbox &
solaar --window=hide &

xsetroot -cursor_name left_ptr
export AWT_TOOLKIT=MToolkit
exec bspwm
