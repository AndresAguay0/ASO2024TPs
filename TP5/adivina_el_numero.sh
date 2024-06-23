#! /bin/bash

# TP Nº 5 - Parte 1
# Andres Sebastian Aguayo
# Adivinanza de un Numero Aleatorio

# Generacion y guardado de un numero aleatorio entre 1 y 100
num=$(((RANDOM % 100) + 1))

int=0 # Variable de intentos

echo "Un numero aleatorio entre 1 y 100 fue generado. Intente adivinarlo:"
read num_us # Variable usada por el usuario
echo ""

# Bucle de repeticion hasta adivinar el numero
until [ $num -eq $num_us ]
do
    # Comprobacion de intentos
    if [ $int -gt 0 ]
    then
        echo "Intente nuevamente: "
        read num_us #Lectura del intento
        echo ""
    fi

    # Devolucion de pistas
    if [ $num_us -gt $num ]
    then
        # Si num_us es MAYOR que num
        echo "El numero ingresado es mayor que el numero a adivinar."
        echo ""
    elif [ $num_us -lt $num ]
    then
        # Si num_us es menor que num
        echo "El numero ingresado es menor que el numero a adivinar."
        echo ""
    fi
    int=$((int + 1))
done

# Numero encontrado
echo "Encontro el numero aleatorio ($num). Felicidades!"