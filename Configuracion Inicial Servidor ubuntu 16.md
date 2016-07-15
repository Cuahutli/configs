#Creación Servidor Ubuntu 16.04

**Instalar con lenguaje Spanish México y teclado latino.**

Una vez instalado, realizar los siguientes pasos.

*	 Instalar `git` (puede que esté instalado por default)

	```bash
	 	sudo apt-get install git
	```

*	Intalar y Crear enlace simbólico de `python2.7` ya que por default sólo viene el de `python3`

	```bash
    	sudo apt-get install python2.7
		cd /usr/bin
        sudo ln -s python2.7 python
	```

*	Instalar `pip` para `python2.7`

	```bash
		sudo apt-get install python-pip
        sudo pip install --upgrade pip
	```

*	Instalar `virtualenv` y `virtualenvwrapper`

	```bash
        sudo pip install virtualenv
        sudo pip install virtualenvwrapper
	```

*	Copiar los archivos de configuración de usuario para mejorar la terminal.( **de paso validamos que funciona ssh** )

	```bash
		scp .bashrc .bash_prompt2 username@ip_host:/home/username/
	```
*	Agregar la configuración a `.bashrc` para `virtualenvwrapper`

	```bash
		export WORKON_HOME=$HOME/.venvs
        source /usr/local/bin/virtualenvwrapper.sh
	```


*	Instalar `htop`

	```bash
		sudo apt-get install htop
	```

*	Instalar `tree`

	```bash
		sudo apt-get install tree
	```

*	Ponerle password al root

    ```bash
    	sudo passwd root
    ```

*	Actualizar el sistema

    ```bash
    	sudo apt-get update
        sudo apt-get upgrade
    ```


### NOTA.- Si utilizas esto como VM y deseas clonarlo, no olvides después de clonarla cambiar el nombre de host.

*	Cambia el nombre de host en  `/etc/hostname`

    ```bash
    	sudo nano /etc/hostname
    ```

*	Cambia el nombre de host en  `/etc/hosts`

	```bash
    	sudo nano /etc/hosts
    ```
