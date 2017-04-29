# SMPP-Sim dockerized   

# Introducción

Esta imágen es para poder usar el software desarrollado por Selenium Software SMPPSim (http://seleniumsoftware.com/user-guide.htm). 

Muchos desarrolladores usan este software para simular un SMSC que hable SMPP, y así poder testear el envio y recepción de mensajes.

# Usos y opciones

### Puertos
Se exponen los puertos *2775* para SMPP y  *8989* para la interfaz de management.

    docker run -d -p 8989:8989 -p 2775:2775 --name smpp-sim smpp-sim

### Opciones
Se puede pasar un archivo y montarlo como configuración

    docker run -d - v $YOURFILE:/smppsim/conf/smppsim.props -p 8989:8989 -p 2775:2775 --name smpp-sim smpp-sim
