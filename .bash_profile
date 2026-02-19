#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

# Created by `pipx` on 2025-11-11 12:50:19
export PATH="$PATH:/home/esteban/.local/bin"
