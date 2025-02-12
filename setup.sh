#!/bin/bash
echo "Instalando dependências..."
sudo apt update && sudo apt install -y python3-venv python3-pip build-essential cmake gcc g++ python3-dev
echo "Criando ambiente virtual..."
python3 -m venv pyradiomics_env_bash_04
source pyradiomics_env_bash_04/bin/activate
echo "Instalando pacotes..."
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt
echo "Instalação concluída!"
