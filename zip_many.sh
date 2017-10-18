#!/bin/bash
if [ $# -lt 2 ]; then
    me="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
    echo "Wrong number of arguments. Expected at least 3."
    echo "Example:"
    echo "sh $me dirname num_dir (\"files\")"
    exit 0
fi
core_path=$1
num_dir=$2
zip_files=$([ "$#" -ge 3 ] && echo "$3" || echo "*")

home_dir=$(pwd)
dirname=${core_path##*/} 
for num in $(seq 1 $num_dir);
do
    echo "zipping in $dirname-$num"
    cd $core_path-$num

    zip ../$dirname-$num.zip $zip_files
done

cd $home_dir
echo "Back at $(pwd)"
