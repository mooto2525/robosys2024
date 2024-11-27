#!/bin/bash 

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 3 | ./beki)
[ "${out}" = 64 ] || ng "$LINENO"

out=$(echo あ | ./beki)
[ "${out}" = 整数を入力してください ] || ng "$LINENO"

out=$(echo "" | ./beki)
[ "${out}" = 整数を入力してください ] || ng "$LINENO"

out=$(echo A | ./beki)
[ "${out}" = 整数を入力してください ] || ng "$LINENO"

out=$(echo a | ./beki)
[ "${out}" = 整数を入力してください ] || ng "$LINENO"

out=$(echo 0 | ./beki)
[ "${out}" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
