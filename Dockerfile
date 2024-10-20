FROM jess/obs-studio:latest

# Instalar dependencias adicionales si es necesario
RUN apt-get update && apt-get install -y \
    pulseaudio \
    && rm -rf /var/lib/apt/lists/*

# Configurar el contenedor
ENV DISPLAY=:0
VOLUME ["/tmp/.X11-unix"]

# Comando para iniciar OBS
CMD ["obs"]
