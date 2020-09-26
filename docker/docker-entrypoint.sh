#!/bin/bash
chmod 777 /root/.taskbutler
echo "Timeout was set to" ${SYNC_TIMEOUT:-"1m"}
while true; do
    taskbutler
    sleep ${SYNC_TIMEOUT:-"1m"}
done