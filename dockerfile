# Utilisation de l'image de base Node Alpine (Point 4 du TP)
FROM node:22-alpine

# Créer le dossier de l'app
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code (index.js, etc.)
COPY . .

# Exposer le port (celui de ton code index.js)
EXPOSE 3000

# Lancer l'application
CMD ["node", "index.js"]