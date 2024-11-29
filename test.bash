#!/bin/bash -xv

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 3 | ./beki)
[ "${out}" = 64 ] || ng "$LINENO"

out=$(echo あ | ./beki)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = 整数を入力してください ] || ng "$LINENO"

out=$(echo "" | ./beki)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = 整数を入力してください ] || ng "$LINENO"

out=$(echo A | ./beki)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = 整数を入力してください ] || ng "$LINENO"

out=$(echo a | ./beki)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = 整数を入力してください ] || ng "$LINENO"

out=$(echo 0 | ./beki)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
