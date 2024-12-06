#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Ryusei Fujimura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

out=$(seq 3 | ./beki)
[ "${out}" = 64 ] || ng "$LINENO"

out=$(echo 0 | ./beki)
[ "${out}" = 1 ] || ng "$LINENO"

out=$(echo -1 | ./beki)
[ "${out}" = 0.5 ] || ng "$LINENO"

out=$(echo あ | ./beki)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo "" | ./beki)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo A | ./beki)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo a | ./beki)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
