#!/bin/bash

echo "$@" > /root/linker.out
file=$(echo "$@" | cut -d '@' -f 2)
sed -i '$ d' "$file"
sed -i '/^"-lc"/i "-lpthread"' "$file"
cat "$file" > /root/linker.out1
exec gcc "$@"
