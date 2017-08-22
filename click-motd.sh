#!/bin/bash

logo="$(tput setaf 2)
       .~~.   .~~.
      '. \ ' ' / .'$(tput setaf 1)
       .~ .~~~..~.    $(tput sgr0)       _ _     _  _       _  $(tput setaf 1)
      : .~.'~'.~. :   $(tput sgr0)   ___| |_|___| |//  ___|_|     $(tput setaf 1)
     ~ (   ) (   ) ~  $(tput sgr0)  |  _| | |  _|   |  | . | |         $(tput setaf 1)
    ( : '~'.~.'~' : ) $(tput sgr0)  |___|_|_|___|_|\_\ |  _|_|      $(tput setaf 1)
     ~ .~ (   ) ~. ~  $(tput sgr0)                     |_|         $(tput setaf 1)
      (  : '~' :  )
       '~ .~~~. ~'
           '~'
$(tput sgr0)"

if [ `whoami` != "root" ]; then
  echo "$logo"
  echo "Run as root to update your motd."
else
  echo "$logo" > /etc/motd
  /etc/init.d/bootlogs
  echo "Updated MOTD. Log in to see the new logo."
fi
