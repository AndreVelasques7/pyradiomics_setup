# PyRadiomics Setup

Este repositório contém um ambiente automatizado para configurar rapidamente o **PyRadiomics** utilizando **Python** em um ambiente **Linux (Ubuntu/WSL)** ou via **Docker**.

## 📌 Instalação

### 🔹 1. Clone o repositório

Abra o terminal e execute:

```bash
git clone https://github.com/AndreVelasques7/pyradiomics_setup.git
cd pyradiomics_setup
```

---

## 🐍 Configuração via Ambiente Virtual

### 🔹 2. Execute o script de instalação

Este comando criará o ambiente virtual, instalará as dependências e o ativará automaticamente:

```bash
source setup.sh
```

### 🔹 3. Teste se o PyRadiomics está funcionando

Agora, para verificar se a instalação foi bem-sucedida, execute:

```bash
python3 test_pyradiomics.py
```

Se tudo estiver certo, ele imprimirá a versão do **PyRadiomics, NumPy** e outras bibliotecas.

### 🔹 4. O que este setup faz?

O script `setup.sh` executa as seguintes etapas:
✅ Instala pacotes essenciais (`python3-venv, pip, gcc, cmake, etc.`).
✅ Cria um ambiente virtual chamado `pyradiomics_env`.
✅ Instala todas as dependências listadas em `requirements.txt`.
✅ Ativa automaticamente o ambiente virtual ao final.

### 🔹 5. Gerenciando o ambiente virtual

Para ativar o ambiente após reiniciar o terminal:

```bash
source pyradiomics_env/bin/activate
```

Para sair do ambiente virtual:

```bash
deactivate
```

---

## 🐳 Configuração via Docker

Caso prefira rodar o **PyRadiomics** em um container Docker sem instalar dependências diretamente no sistema, siga os passos abaixo.

### 🔹 1. Construa a imagem Docker

Com o Docker instalado, rode o seguinte comando dentro do diretório do projeto:

```bash
docker build -t pyradiomics_container .
```

### 🔹 2. Execute o container

```bash
docker run -it pyradiomics_container
```

Isso iniciará um terminal dentro do container. Agora, você pode testar o PyRadiomics rodando:

```bash
python3 test_pyradiomics.py
```

### 🔹 3. Saindo do container

Para sair do container interativo, digite:

```bash
exit
```

---

## 📌 Requisitos

- **Ubuntu / WSL 2** (Windows Subsystem for Linux)
- **Python 3.10+**
- **Acesso à internet** para baixar pacotes
- **Docker (opcional, se for utilizar via container)**

Caso tenha qualquer dúvida ou problema, sinta-se à vontade para abrir uma **issue** no repositório! 🚀
