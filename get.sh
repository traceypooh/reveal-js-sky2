#!/bin/bash -ex

##############################################################################
# PREREQUISITES:
#  mac -- which should give you automatically:
#    git
#    ruby
#    curl
##############################################################################


if [ ! -d reveal.js ]; then
    git clone https://github.com/hakimel/reveal.js;
fi

if [ ! -d reveal-js-sky2 ]; then
    # try using SSH first;  else default back to HTTPS
    git clone git@github.com:$REPO.git  ||
    git clone https://github.com/$REPO;
fi

cd reveal-js-sky2;

(  sleep 3;  open http:localhost:8888  ) &
ruby -run -e httpd . -p 8888;
exit



##############################################################################
# if you want to see the minor changes to reveal.js, try:
if which colordiff; then DIFF=colordiff; else DIFF=diff; fi;
set -x;
$DIFF  ../reveal.js/index.html  .;
$DIFF  css/theme/sky.css .;
set +x;
