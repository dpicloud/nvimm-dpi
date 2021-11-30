# 1 NEOVIM INSTALL
```bash
sudo apt update

sudo apt install neovim -y
```

--------

## 2 Pre-Instalar VIM-PLUG
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

--- 

## 3 Configurando nvim para los plugins y personalización

- Iniciamos **nvim**
- Cree un directorio para contener el archivo init.vim 
```bash
:call mkdir(stdpath('config'), 'p')
```

-  Luego cree un archivo init.vim
```bash
:exe 'edit '.stdpath('config').'/init.vim'
```
- Estas instrucciones se obtienen usando el comando :h nvim y luego se pega dentro de nvim, aunque no crea nada pero asumimos que clonando esto ayudará.

---

## 4 Importando configuraciones 
- Clonaremos la configuracion basica desde github en la carpeta
- 
```bash
git clone https://github.com/LFrakie/nvim-rpi-dpi.git $HOME/.config/nvim
```
- Luego ingresamos a nvim y ejecutamos `:PlugInstall` dentro de nvim para instalar los plugins.
Y listo con esto debería quedar, aunque es probable que si variamos de rutas estas se rompan y debamos actualizarlas


## ISSUES
Error cuando abre nvim
`[coc.nvim] build/index.js not found, please install dependencies and compile coc.nvim by: yarn install&lt;br/&gt;Press ENTER or type command to continue`

Solution:

```bash
cd $HOME/.config/nvim/plugged/coc.nvim
```

```bash
yarn install
```

```bash
cd $HOME/.config/nvim/plugged/coc.nvim
```

```bash
sudo yarn build
```

Font: [https://www.programmerall.com/article/92702244754/](https://www.programmerall.com/article/92702244754/)
------------
- Por si da este error del (**coc aplicar build**) usamos este comando para actualizarlo
```bash
:PlugUpdate
```

--- 
# INSTALAR Últimas Versiones 
-- versión beta v 0.6.0 PPA (Hasta la fecha actual - agosto 2021) --

```bash
sudo apt-get install software-properties-common -y
```

```bash
sudo add-apt-repository ppa:neovim-ppa/unstable -y
```

```bash
sudo apt-get update
```

```bash
sudo apt-get install neovim -y
```
