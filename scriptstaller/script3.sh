#!/bin/bash
COMPROBAR=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')
#VALOR="40"
if [ "$COMPROBAR" -le 40 ] ;
then
        echo "TODO BIEN "
        echo "ESPACIO USADO:$COMPROBAR"%

elif [ "$COMPROBAR" -ge 41  ] && [ "$COMPROBAR" -le 80 ]; then
	echo "DISCO REGULAR"
	echo "ESPACIO USADO:$COMPROBAR"% 

elif [ "$COMPROBAR" -ge 81  ];
then
	echo "NECESITA DISCO NUEVO"
	echo "ESPACIO USADO:$COMPROBAR"%
fi
