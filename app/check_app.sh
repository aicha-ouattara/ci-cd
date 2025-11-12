#!/bin/bash

echo "Début des vérifications de l'application..."

# Vérifier si le fichier index.html existe
if [ -f "index.html" ]; then
    echo "✅ index.html trouvé."
    echo "Toutes les vérifications sont passées avec succès."
    exit 0
else
    echo "❌ index.html introuvable."
    echo "Échec des vérifications."
    exit 1
fi

echo "Fin des vérifications."  # Cette ligne ne sera jamais atteinte à cause du exit
