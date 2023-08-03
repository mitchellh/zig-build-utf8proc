#!/usr/bin/env bash
#
# Update the upstream to a specific commit. If this fails then it may leave
# your working tree in a bad state. You can recover by using Git to reset:
# git reset --hard HEAD.
set -e

ref=${1:-HEAD}
out=${2:-upstream}

rm -rf $out
git clone https://github.com/JuliaStrings/utf8proc.git $out
git -C $out checkout $ref
rm -rf $out/.git
echo $ref > ${out}.txt
