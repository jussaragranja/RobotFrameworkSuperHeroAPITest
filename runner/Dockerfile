FROM python:3.12-slim

LABEL maintainer="Jussara Granja <jussaragranja@gmail.com>"
LABEL description="Container Robot Framework atualizado baseado em Python 3.12-slim"

WORKDIR /robot

ENV DEBIAN_FRONTEND=noninteractive

# Atualiza pacotes essenciais e instala dependências mínimas
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        git \
        ca-certificates \
        && apt-get clean && rm -rf /var/lib/apt/lists/*

# Instala o Robot Framework e bibliotecas essenciais
RUN pip install --no-cache-dir \
    robotframework==7.0 \
    robotframework-requests \
    robotframework-jsonlibrary \
    robotframework-assertion-engine \
    robotframework-robocop \
    robotframework-faker \
    requests

# Copia o projeto para o container (opcional)
COPY . .

# Define o comando padrão
CMD ["robot", "--version"]
