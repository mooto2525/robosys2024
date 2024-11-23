#!/bin/bash 

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 3 | ./beki)
[ "${out}" = 64 ] || ng "$LINENO"

out=$(echo あ | ./beki)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
