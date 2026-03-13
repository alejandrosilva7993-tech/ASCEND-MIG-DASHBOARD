#!/bin/bash
# Script para subir el proyecto a GitHub con index.html en la raíz

cd "/Users/alejandrosilva/Downloads/ASCEND MIG DASHBOARD"

# Si .git está incompleto, reiniciar
if [ ! -f .git/config ]; then
  echo "Reinicializando repositorio git..."
  rm -rf .git
  git init
fi

# Añadir todos los archivos
git add .
git status

# Commit
git commit -m "Añadir index.html, .nojekyll para GitHub Pages"

# Preguntar por el remote (solo si no existe)
if ! git remote | grep -q origin; then
  echo ""
  echo "Pega la URL de tu repositorio en GitHub (ej: https://github.com/TU_USUARIO/NOMBRE_REPO.git):"
  read -r REPO_URL
  git remote add origin "$REPO_URL"
fi

# Push
git branch -M main
git push -u origin main

echo ""
echo "¡Listo! Tu sitio debería estar en:"
echo "https://TU_USUARIO.github.io/NOMBRE_REPO/"
