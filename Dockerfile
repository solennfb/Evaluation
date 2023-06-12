#Dockerfile realisé par Solenn FAROUX--BRASSART dans le but de lancer l'application "Blur-Detection-Web-App" dans un conteneur

#On prend la dernière version de Python
FROM python:latest

# On se place dans le dossier sur lequel on va travailler
WORKDIR ./src

# On copie les dependances sur le dossier courant
COPY requirements.txt ./src

# On installe les dependences
RUN pip install -r requirements.txt

# On copie le code source sur le conteneur
COPY . /src

# On expose le port 8080
EXPOSE 8080

# Commande à lancer dans le conteneur
CMD [ "python", "./main.py" ]

