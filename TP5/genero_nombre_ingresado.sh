#! /bin/bash

# TP Nº 5 - Parte 2
# Andres Sebastian Aguayo
# Muestra de Genero de un Nombre Ingresado

echo "Ingrese un nombre del que quiere verificar su genero: "
read nombre_ing # Lectura del nombre

# Verificacion del nombre ingresado utilizando la API
verificacion=$(curl -s "https://api.genderize.io/?name=${nombre_ing}")

# Guardado del dato "gender" del archivo de verificacion
genero=$(echo $verificacion | jq -r '.gender')

# Guardado del dato ".probability" del archivo de verificacion
prob=$(echo $verificacion | jq -r '.probability')

# Devolucion de verificaciones
if [ "$genero" == "null" ];
then
    # Si la verificacion es nula
    echo "No se pudo verificar el genero del nombre ingresado"
else
    # Verificacion Masculina
    if [ "$genero" == "male" ];
    then
        genero="Masculino"
    
    # Verificacion Femenina
    elif [ "$genero" == "female" ];
    then
        genero="Femenino"
    fi

    # Salida final
    echo "El genero verificado para el nombre $nombre_ing es: $genero (Con un $prob de certeza de 0 a 1)"
fi