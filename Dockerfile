FROM debian:12

# Evita preguntas interactivas al instalar paquetes
ENV DEBIAN_FRONTEND=noninteractive

# Actualiza repositorios e instala utilidades básicas
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copia un script de ejemplo al contenedor
COPY script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]