#!/bin/sh -
# compressed by gzexe
lines=19
prog=`/usr/bin/basename "$0"`
tmp=`/usr/bin/mktemp -d /tmp/gzexeXXXXXXXXXX` || {
/bin/echo "$prog: cannot create tmp dir"; exit 1
}
trap '/bin/rm -rf "$tmp"' 0
if /usr/bin/tail +$lines "$0" |
    /usr/bin/gzip -dc > "$tmp/$prog" 2> /dev/null; then
/bin/chmod u+x "$tmp/$prog"
"$tmp/$prog" ${1+"$@"}
ret=$?
else
/bin/echo "$prog: cannot decompress $0"
ret=1
fi
exit $ret
�o��W format-check.sh e��n�0Ew}��Af�]�E�H2)��h��_+2�#yy�{��TmHHik�W�/!}�/A�i��p%к�|ג�H3�g����F���xJ@K񡆠�D�k1�\�Ѥ���r��Zn����n�J5g7�D�EJ�D\:~�݂��T��D$��^�2G#�yr���[���բ�����w\��$��f*��~���M3U�[  