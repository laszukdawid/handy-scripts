#!/bin/bash
if [ $# -lt 2 ]; then
    me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
    echo "Wrong number of arguments. Expected at least 3."
    echo "Example:"
    echo "sh $me core_path num_dir (log_file)"
    exit 0
fi
core_path=$1
num_dir=$2
log_file=$([ "$#" -ge 3 ] && echo "$3" || echo "log")
SESSION=$USER

home_dir=$(pwd)
cmd="less +F $log_file"

for num in $(seq 1 $num_dir);
do
    cd $core_path-$num
    echo $(pwd)

    if [ $num -eq 1 ]
    then
        tmux -2 new-session -d -s $SESSION $cmd
    else
        tmux split-window $cmd
    fi
    tmux rename-window $num
    tmux select-layout tiled
    cd $home_dir
done

tmux -2 attach-session
