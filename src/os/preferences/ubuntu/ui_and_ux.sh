#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   UI & UX\n\n"

execute "gsettings set com.canonical.indicator.datetime custom-time-format '%l:%M %p' && \
         gsettings set com.canonical.indicator.datetime time-format 'custom'" \
    "Use custom date format in the menu bar"

execute "gsettings set org.gnome.libgnomekbd.keyboard layouts \"[ 'us', 'ru' ]\"" \
    "Set keyboard languages US and RU"
