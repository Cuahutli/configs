#Creación Servidor Ubuntu 16.04

**Instalar con lenguaje Spanish México y teclado latino.**

Una vez instalado, realizar los siguientes pasos.

*	 Instalar git (puede que esté instalado por default)

	```
	 	sudo apt-get install git
	```
    
*	Crear enlace simbólico de python2.7 ya que por default sólo viene el de python3

	```
		cd /usr/bin \n
        sudo ln -s python2.7 python
	```

*	Instalar pip para python2.7

	```
		sudo apt-get install python-pip
	```
	
*	Instalar virtualenv y virtualenvwrapper(Configurarlo)

	```
        sudo pip install virtualenv
        sudo pip install virtualenvwrapper
        export WORKON_HOME=$HOME/.venvs 
        source /usr/local/bin/virtualenvwrapper.sh
	```

*	Copiar los archivos de configuración de usuario para mejorar la terminal.( **de paso validamos que funciona ssh** )

	```
		scp .bashrc .bash_prompt2 username@ip_host:/home/username/
	```

*	Instalar htop

	```
		sudo apt-get install htop
	```