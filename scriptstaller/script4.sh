#!/bin/bash
echo
echo "...DIGITE LA URL A ANALIZAR"$pagina
read pagina
#echo "digite la url a analizar"$pagina
#pagina="https://es.stackoverflow.com/questions/390589/c%C3%B3mo-verificar-si-existe-una-url-ruta-web-usando-bas"
resultado=$(curl -sIL $pagina | grep '^HTTP' | tail -1 | awk  '{print $2}')
if [ "$resultado" == "200" ]; then
  echo "...LA PAGINA EXISTE"
  echo "...RESPUESTA DE LA PAGINA: $resultado"
elif [ "$resultado" != "200" ]; then
  echo "...LA PAGINA TIENE UN PROBLEMA"
  echo "...RESPUESTA DE LA PAGINA: $resultado"
else
  echo "No lo sé"
fi
