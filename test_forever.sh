#!/usr/bin/env bash
count=0
while true; do
    if ! ./test.sh; then
        echo "Failure at run $count"
        exit 1
    fi
    let "count++"
    echo "Run $count finished successfully"
done
