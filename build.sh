#!/bin/sh

# crontab:
# */1  *  *  *  *  /home/gray/git/homepage/build.sh

# webhook:
# <?php echo touch('/home/gray/git/homepage/_build') ? 'OK' : 'Error';

FLAG_START=_build
FLAG_LOCK=_build_lock

cd `dirname $0`

if [ -f $FLAG_START ]
then
  if [ ! -f $FLAG_LOCK ]
  then
    touch $FLAG_LOCK
    rm $FLAG_START
    git pull && \
        make upload && \
        rm $FLAG_LOCK
  fi
fi
