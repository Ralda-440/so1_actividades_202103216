#Se define la variable GITHUB_USER con el valor "Ralda-440"
GITHUB_USER="Ralda-440"

#Obtener los datos del usuario de GitHub
RESPONSE=$(curl -s "https://api.github.com/users/$GITHUB_USER")

#Extraer ID del usuario
ID=$(echo $RESPONSE | jq '.id')
#Extraer fecha de creación del usuario
CREATED_AT=$(echo $RESPONSE | jq '.created_at')

#Guardar Mensaje
MESSAGE="Hola $GITHUB_USER. User ID: $ID. Cuenta fue creada el: $CREATED_AT"

#Imprimir mensaje
echo $MESSAGE

#FECHA ACTUAL
FECHA=$(date +'%Y%m%d')

#Crear directorio con la fecha en /tmp/<fecha>/
mkdir -p /tmp/$FECHA

#Crear archivo con el mensaje en /tmp/<fecha>/saludos.log
echo $MESSAGE >> /tmp/$FECHA/saludos.log

#Ejecutar el Siguiente comando para agregar el script a crontab y que se ejecute cada 5 minutos
#(crontab -l 2>/dev/null; echo "*/5 * * * * /home/script.sh") | crontab -