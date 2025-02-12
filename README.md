# PyRadiomics Setup

Este repositório contém um **script automatizado** para configurar rapidamente um ambiente virtual com **PyRadiomics** no Linux (Ubuntu/WSL).

##  Instalação

### 1 Clone o repositório
Abra o terminal e execute:
```
git clone https://github.com/AndreVelasques7/pyradiomics_setup.git
cd pyradiomics_setup
```

### 2 Execute o script de instalação
Isso criará o ambiente virtual, instalará as dependências e ativará automaticamente o ambiente:
```
source setup.sh
```

### 3 Teste se o PyRadiomics está funcionando
Agora, para verificar se a instalação foi bem-sucedida, rode:
```
python3 test_pyradiomics.py
```

Se estiver tudo certo, ele imprimirá a versão do **PyRadiomics**, **NumPy** e outras bibliotecas.

---

## 4 O que este setup faz?
O script `setup.sh`:
- **Instala pacotes necessários** (`python3-venv`, `pip`, `gcc`, `cmake`, etc.).
- **Cria um ambiente virtual** chamado `pyradiomics_env`.
- **Instala todas as dependências** do `requirements.txt`.
- **Ativa automaticamente o ambiente** ao final.

---

## 5 Dependências
O script já cuida de tudo, mas ele depende de:
- **Ubuntu / WSL 2** (Windows Subsystem for Linux)
- **Python 3.10+**
- **Acesso à internet** para baixar os pacotes

Caso queira ativar o ambiente manualmente após reiniciar o terminal:
```
source pyradiomics_env/bin/activate
```

Para sair do ambiente virtual:
```
deactivate
```
