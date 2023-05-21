import os
import urllib.request
import subprocess
import win32api
import win32con
import ssl
import tkinter as tk
from tkinter import messagebox

ssl._create_default_https_context = ssl._create_unverified_context

# URL do arquivo .cmd
url = "https://github.com/OneDefauter/Menu_/releases/download/Run/Run.cmd"

# Diretório onde o arquivo será salvo
dir_path = os.path.join(os.environ["HOMEDRIVE"], os.environ["HOMEPATH"])

# Cria o diretório se não existir
if not os.path.exists(dir_path):
    os.makedirs(dir_path)

# Caminho completo do arquivo
file_path = os.path.join(dir_path, "TEMP---Run.cmd")

def run_script():
    try:
        # Verifica a conexão com a URL
        urllib.request.urlopen(url)
    except:
        # Se a conexão falhar, verifica se o arquivo já foi baixado
        if os.path.exists(file_path):
            subprocess.run(file_path, shell=True)
        else:
            root = tk.Tk()
            root.withdraw()
            messagebox.showerror(title="Erro", message="Servidor indisponível e arquivo não encontrado.", parent=root)
            root.after(3000, root.destroy)
    else:
        # Se a conexão for bem-sucedida, baixa e executa o arquivo
        try:
            os.remove(os.path.join(dir_path, "TEMP---Run.cmd"))
        except OSError:
            pass
        urllib.request.urlretrieve(url, file_path)
        win32api.SetFileAttributes(file_path, win32con.FILE_ATTRIBUTE_HIDDEN)
        subprocess.run(file_path, shell=True)

# Executa a função para baixar e executar o script
run_script()
