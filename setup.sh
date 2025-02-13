#!/bin/bash

ENV_NAME="pyradiomics_env_bash"

echo "Instalando dependências..."
sudo apt update && sudo apt install -y python3-venv python3-pip build-essential cmake gcc g++ python3-dev

# Se o ambiente já existe, remove ele antes de criar um novo
if [ -d "$ENV_NAME" ]; then
    echo "Removendo ambiente virtual existente..."
    rm -rf $ENV_NAME
fi

echo "Criando novo ambiente virtual..."
python3 -m venv $ENV_NAME

# Ativar o ambiente virtual
source $ENV_NAME/bin/activate

echo "Instalando pacotes..."
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

echo "Instalação concluída!"

