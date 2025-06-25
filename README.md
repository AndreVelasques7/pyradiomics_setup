# PyRadiomics Setup

This repository provides an automated environment to quickly set up **PyRadiomics** using **Python** in a **Linux (Ubuntu/WSL)** environment or via **Docker**.

## 📌 Installation

### 🔹 1. Clone the repository

Open the terminal and run:

```bash
git clone https://github.com/AndreVelasques7/pyradiomics_setup.git
cd pyradiomics_setup
```

---

## 🐍 Setup via Virtual Environment

### 🔹 2. Run the installation script

This command will create the virtual environment, install all dependencies, and activate the environment automatically:

```bash
source setup.sh
```

### 🔹 3. Test if PyRadiomics is working

To verify that everything is installed correctly, run:

```bash
python3 test_pyradiomics.py
```

If successful, it will print the version of **PyRadiomics, NumPy**, and other libraries.

### 🔹 4. What does this setup do?

The `setup.sh` script performs the following steps:
✅ Installs essential packages (`python3-venv, pip, gcc, cmake, etc.`)  
✅ Creates a virtual environment named `pyradiomics_env`  
✅ Installs all dependencies listed in `requirements.txt`  
✅ Automatically activates the virtual environment at the end

### 🔹 5. Managing the virtual environment

To activate the environment after restarting the terminal:

```bash
source pyradiomics_env/bin/activate
```

To deactivate the virtual environment:

```bash
deactivate
```

---

## 🐳 Setup via Docker

If you prefer to run **PyRadiomics** in a Docker container without installing dependencies directly on your system, follow the steps below.

### 🔹 1. Build the Docker image

With Docker installed, run the following command inside the project directory:

```bash
docker build -t pyradiomics_container .
```

### 🔹 2. Run the container

```bash
docker run -it pyradiomics_container
```

This will start a terminal inside the container. Now you can test PyRadiomics by running:

```bash
python3 test_pyradiomics.py
```

### 🔹 3. Exiting the container

To exit the interactive container, type:

```bash
exit
```

---

## 📌 Requirements

- **Ubuntu / WSL 2** (Windows Subsystem for Linux)  
- **Python 3.10+**  
- **Internet access** to download packages  
- **Docker** (optional, if using the containerized version)

If you have any questions or run into issues, feel free to open an **issue** in the repository! 🚀
