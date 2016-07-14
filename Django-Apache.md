##	Configuración de Django bajo Apache utilizando con virtualenv

*	Validar que se tiene instalado Apache, en caso de no estar instalarlo.

	```bash
		sudo apt-get install apache2
	```
    
*	Instalar libapache2-mod-wsgi

	```bash
		sudo apt-get install libapache2-mod-wsgi
	```

*	Habilitar el módulo para que funcione con apache

	```bash
		a2enmod wsgi
	```

*	Instalar virtualenv y virtualenvwrapper si no se tienen instalados.

	```bash
		sudo apt-get install python-pip
        sudo pip install virtualenv
        sudi pip install virtualenvwrapper
	```

*	Agregar en el .bashr del usuario lo necesario para que funcione virtualenvwrapper

	```bash
		nano .bashrc
        export WORKON_HOME=$HOME/.venvs
        source /usr/local/bin/virtualenvwrapper.sh
	```
*	Cerrar y abrir nuevamente la terminal (si estás vía ssh salir del servidor y entrar de nuevamente)


*	crear el entorno virtual e instalar django

	```bash
		mkvirtualenv django
        workon django
        pip install django
	```

*	crear en el directorio raíz del usuario sistemas la carpeta projects

	```bash
		mkdir projects
        cd projects
	```

*	Crear un proyecto django

	```bash
		django-admin startproject demosite
	```

*	probar que el proyecto funciona

	```bash
		cd demosite
        python manage.py runserver 0.0.0.0:8000
	```

*	Acceder desde el navegador de cualquier máquina de la red y validar que funciona

	```
		http://ip_servidor:8000
	```

*	Terminar la ejecución con **ctrl-C**
   
*	Desactivar el sitio que trae por default apache y eliminar los archivos.

	```bash
    	sudo a2dissite 000-default.conf
        sudo rm /etc/apache2/sistes-available/000-default.conf
	```

*	crear el en /etc/apache2/sites-available demosite.conf
	
    ```bash
		sudo nano /etc/apache2/sites-available/demosite.conf
	```
    
    ```bash
		<VirtualHost *:80>
			#demosite.samao = nombre sitio
			ServerName demosite.samao
			ServerAlias www.demosite.samao

            #WSGIDaemonProcess id_proceso python-path=/path/to/project/django:/path/to/virtualenv/from/site-packages	
            #WSGIProcessGroup id_proceso
            WSGIDaemonProcess demosite.samao python-path=/home/sistemas/projects/demosite:/home/sistemas/.venvs/django/lib/python2.7/site-packages
            WSGIProcessGroup demosite.samao

            #WSGIScriptAlias / /path/to/wsgi/file/generated/for/django
            WSGIScriptAlias / /home/sistemas/projects/demosite/demosite/wsgi.py

            <Directory /home/sistemas/projects/demosite/demosite>
                #if Apache_version >= 2.4
                <Files wsgi.py>
                    Require all granted
                </Files>

                #if Apache_version < 2.4	
                #	Order allow,deny
                #	allow from all
            </Directory>
		</VirtualHost>
	```
    
*	activar el nuevo sitio

    ```bash
		sudo a2ensite demosite.conf
	```
    
*	Reiniciar apache

    ```bash
		sudo service apache2 reload
	```
  
*	agregar al archivo de hosts demosite.samao
	
    ```bash
		sudo nano /etc/hosts
	```
    
    ```bash
		127.0.0.1	demosite.samao
	```

*	Dar los permisos para que apache pueda ejecutar el contenido de /home/sistemas/projects

    ```bash
		sudo chmod +x /home/sistemas/
	```
