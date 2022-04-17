#!/bin/sh

# 引数1: 出力db名
# 引数2: 出力file名
mysqldump -u root  -p $1 > ./dump/$2
