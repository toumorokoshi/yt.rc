xsetroot -cursor_name left_ptr
setxkbmap -option caps:escape
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.xprofile ]] && . ~/.xprofile
xmonad
