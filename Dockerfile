# Dockerfile realisé par Solenn FAROUX--BRASSART dans le but de lancer l'application "Blur-Detection-Web-App" dans un conteneur

#On prend la version de Python 3.8
FROM python:3.8

# On se place dans le dossier sur lequel on va travailler dans le conteneur
WORKDIR ./src

# On copie le code source sur le conteneur
COPY . ./src

# On installe les dépendances
RUN pip install -r ./src/requirements.txt

# On expose le port 8080
EXPOSE 8080

# Commande à lancer dans le conteneur pour l'application
CMD [ "python", "main.py" ]

