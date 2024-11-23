#!/bin/bash -xv

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 3 | ./plus)
[ "${out}" = 64 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
