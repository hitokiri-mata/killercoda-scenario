#! /bin/bash

EXISTS="1"
while [ "$EXISTS" == "1" ]; do
    command -v python3 > /dev/null
    EXISTS=$?
    echo "Preparing environment - this can take a while"
    sleep 1
done

echo "Environment ready!"