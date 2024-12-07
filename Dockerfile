# Utiliser une image Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY requirements.txt requirements.txt
COPY Pricer.py Pricer.py

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port par défaut de Streamlit
EXPOSE 8501

# Commande pour lancer l'application
CMD ["streamlit", "run", "Pricer.py", "--server.port=8501", "--server.enableCORS=false"]
