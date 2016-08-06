### Instalar y configurar ssh y rsync con cygwin en windows (y python)
- instalar cygwin
	- **(incluir openssh, rsync y wget)**
	
- generar y agregar la llave **id_rsa.pub**  para subirla al servidor
	
    ```bash
    ssh-keygen
    ssh-copy-id -i .ssh/id_rsa.pub username@remotehost
	```
    
- hacer prueba rsync:
	**(hacer prueba de rsync con el .bat creado)**

- configurar el servicio **sshd** de cygwin
	```bash
    ssh-host-config -y
	tty ntsec
	cygrunsrv -S sshd
    ```
- probar conexión ssh

	```bash
    ssh username@localhost
    ```

- abrir el puerto 22 del firewall

	**Crear Regla nueva de entrada para puerto 22 en TPC y UDP**
- instalar apt-cyg

	```bash
	(lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg install apt-cyg /bin)
    ```

- instalar python

	** incluir la opción al instalar para que se agregue al path de windows **
