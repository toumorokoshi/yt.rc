xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
xmodmap -e "pointer = 3 2 1"
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.xprofile ]] && . ~/.xprofile
export LD_LIBRARY_PATH=/usr/local/lib/rustlib/x86_64-unknown-linux-gnu/lib
xmonad
