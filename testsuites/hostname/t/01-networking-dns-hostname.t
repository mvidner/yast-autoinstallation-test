#! /bin/sh
echo "1..2"

newhn=atestinghostname

# TODO steal the API from sharness (like git.git/t)

if ! grep $newhn /etc/HOSTNAME > /dev/null; then
  echo -n "not "
fi
echo "ok 1 persistent hostname"

if ! hostname | grep $newhn > /dev/null; then
  echo -n "not "
fi
echo "ok 2 actual hostname"
