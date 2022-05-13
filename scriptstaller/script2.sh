#!/bin/bash
#ejemplo2 
# Declaracion de Variables
consola=$(cat /etc/passwd | cut -d : -f7) # > tmp/user
#cut -d: -f1,7 /etc/passwd | egrep ':[/bin/bash]' | cut -d: -f1 
echo "...::Los usuarios en el sistema de bin/bash son::..."
echo
USER=$(cat /etc/passwd | grep /bin/bash | cut -d: -f1,7)
 echo "$USER"
 echo
        

