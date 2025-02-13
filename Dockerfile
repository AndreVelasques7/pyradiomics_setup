# Usa a imagem do Ubuntu 20.04
FROM ubuntu:20.04

# Evita prompts interativos
ARG DEBIAN_FRONTEND=noninteractive

# Atualiza os pacotes e instala dependências
RUN apt update && apt install -y \
    python3 python3-pip python3-venv build-essential cmake gcc g++ python3-dev

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos para dentro do container
COPY . .

# Cria um ambiente virtual e instala os pacotes
RUN python3 -m venv pyradiomics_env && \
    source pyradiomics_env/bin/activate && \
    pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

# Comando padrão ao rodar o container
CMD ["bash"]

