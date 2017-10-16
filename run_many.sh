#!/bin/bash
if [ $# -ne 3 ]; then
    me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
    echo "Wrong number of arguments"
    echo "Example:"
    echo "sh $me core_path run_num run_cmd"
    exit 0
fi

core_path=$1
run_num=$2
run_cmd=$3

home_dir=$(pwd)
for num in $(seq 1 $run_num)
do
    cd $core_path-$num
    echo "At $core_path-$num"
    echo "run: $run_cmd"
    eval "$run_cmd &"
    echo "PID: $!"
    cd $home_dir
done

