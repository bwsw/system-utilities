#!/bin/bash

cat /sys/kernel/debug/zswap/stored_pages /sys/kernel/debug/zswap/pool_total_size | xargs -n2 | awk '{print $1 * 4096 / 1024 / 1024 - $2 / 1024/1024 }' > /tmp/zswap.stats
