#!/bin/bash

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0
a=藤原
[ "$a" = 藤原 ] || ng "$LINENO"
[ "$a" = 藤村 ] || ng "$LINENO"

exit "$res"
