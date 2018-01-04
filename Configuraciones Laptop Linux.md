# Configuraciones hechas en mi laptop Linux


### Instalaciones en Linux

- Instalamos Parallels Client

``` sh
http://download.parallels.com/ras/v16/16.2.0.19039/RASClient-16.2.19039_x86_64.deb
```

- Instalamos git

```sh
sudo apt-get install git
```

- Instalamos htop

```sh
sudo apt-get install htop
```

- Instalamos teamviewer

```sh
https://www.teamviewer.com/
```

- Instalamos vscode

```sh
https://code.visualstudio.com/
```

- Instalamos Sublime Text

```sh
https://www.sublimetext.com/docs/3/linux_repositories.html
```

- Instalamos Pycharm

```sh
https://www.jetbrains.com/pycharm/download/#section=linux
```

- Instalamos pip y virtualenv

```sh
sudo apt-get install python-pip
sudo pip install virtualenv
```

- Instalamos Simple Screen Recorder

```sh
https://blog.desdelinux.net/simple-screen-recorder-grabar-tu-escritorio-en-linux-nunca-fue-tan-facil/
```

- Instalamos Chrome

```sh
https://www.google.es/chrome/browser/desktop/index.html
```

- Instalamos node y npm

```sh
https://nodejs.org/en/download/package-manager/
```


- Instalamos configuraciones propias del usuario para la terminal

```sh
cd ~
git clone https://github.com/cuahutli/configs
cp .bashrc .bashrc.backup
cp configs/.bashcr .
cp configs/.bash_prompt2 .
source .bashrc
```

- Instalamos Apache2

```sh
sudo apt-get install apache2
```


- Instalamos postman para peticiones API

```sh
https://app.getpostman.com/app/download/linux64?_ga=2.12070644.1764987583.1515097283-875354375.1515097283
```


- Instalamos angular-cli

```sh
sudo npm install -g @angular/cli
```