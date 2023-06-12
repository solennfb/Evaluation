FROM python:latest

# Dossier sur lequel on va travailler
WORKDIR /solennfb/Evaluation_120623

# On copie les dependances sur le dossier courant
COPY requirements.txt .

# On installe les dependences
RUN pip install -r requirements.txt

# Commande à lancer dans le conteneur
CMD [ "python", "./main.py" ]
