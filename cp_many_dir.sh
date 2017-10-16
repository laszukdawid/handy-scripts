#!/bin/bash
if [ $# -ne 3 ]; then
    me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
    echo "Wrong number of arguments"
    echo "Example:"
    echo "sh $me dirname target_path cp_num"
    exit 0
fi

dirname=$1
target_path=$2
cp_num=$3

for num in $(seq 1 $cp_num)
do
    cp -r $dirname $target_path/$dirname-$num
done
