# 1) Image Nginx légère
FROM nginx:alpine

# 2) Dossier où Nginx sert les fichiers statiques
WORKDIR /usr/share/nginx/html

# 3) Copier tes fichiers HTML/CSS directement (pas de dist)
COPY index.html .
COPY style.css .

# 4) Ouvrir le port 80 (nginx)
EXPOSE 80

# 5) Lancer nginx (obligatoire en mode Docker)
CMD ["nginx", "-g", "daemon off;"]
