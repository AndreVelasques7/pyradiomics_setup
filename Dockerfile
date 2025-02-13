# Usar a imagem base do Python
FROM python:3.10-slim

# Definir o diretório de trabalho dentro do container
WORKDIR /app

# Copiar os arquivos para o container
COPY requirements.txt setup.sh test_pyradiomics.py ./

# Instalar dependências do sistema necessárias
RUN apt update && apt install -y build-essential cmake gcc g++ python3-dev

# Criar ambiente virtual e instalar pacotes
RUN python3 -m venv pyradiomics_env \
    && /bin/bash -c "source pyradiomics_env/bin/activate && pip install --upgrade pip setuptools wheel && pip install -r requirements.txt"

# Definir o comando padrão para o container
CMD ["/bin/bash"]

