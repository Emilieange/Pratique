FROM node:14

# Créer un répertoire pour l'application
WORKDIR /usr/src/app

# Copier le package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste de l'application
COPY . .

# Exposer le port 3000 pour l'application
EXPOSE 3000

# Lancer l'application
CMD ["node", "app.js"]
