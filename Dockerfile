
#1st exercice
FROM ubuntu
MAINTAINER dirane (diranetafen@yahoo.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

RUN exit 1

#2nd exercice
FROM ubuntu
#prends la derniere version de Ubuntu

MAINTAINER joris.commin@hotmail.com 
#on précise le mail

RUN  apt update
RUN  apt install -y nginx
#on update et on installe nginx, le "y" n'est utile que pour confirmer automatiquement. Le y représente le "yes"

ADD static-website-example /var/www/html
#on copie le code du serveur vers notre dossier local /var/www/html

EXPOSE 80
#on renseigne le port interne, ici 80

CMD ["nginx", "-g", "daemon off;"]
#on lance la commande 



