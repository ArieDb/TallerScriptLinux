#!/bin/bash
#ejemplo1 
# Declaracion de Variables
NUM=$(cat /etc/passwd | cut -d: -f3) # > tmp/user
MIN="999"

 
echo "..::Los usuarios en el sistema son::.."
echo
for ID in do $NUM; do
    if [ $ID -gt $MIN > /dev/null 2>&1 ] ; then
                USER=$(cat /etc/passwd | cut -d: -f1,3 | grep $ID | cut -d: -f1,2)
                echo "> $USER"
        fi
done
