# 📄 Basic CI Workflow – Documentation

## 1. Objectif

Ce workflow GitHub Actions permet de :

* Exécuter automatiquement un script de test (`check_app.sh`) à chaque push sur la branche `main`.
* Afficher le contenu de `app/index.html` dans les logs du workflow.
* Illustrer l’utilisation des **secrets GitHub** et des **variables d’environnement** dans un workflow CI.

---

## 2. Déclencheur

* Le workflow se lance automatiquement à chaque **push sur la branche `main`**.

---

## 3. Structure du workflow

### Jobs

**`build-and-test`** : s’exécute sur un runner `ubuntu-latest`.

### Étapes (Steps)

1. **Checkout du dépôt**

   * Action officielle `actions/checkout@v4` pour cloner le dépôt sur le runner.

2. **Exécution du script de test**

   * Rend le script `check_app.sh` exécutable et le lance.
   * Affiche des messages de début et fin, avec la date actuelle.
   * Échoue si le script retourne un code différent de 0.

3. **Affichage du contenu de index.html**

   * Affiche dans les logs le contenu de `app/index.html` pour vérification rapide.

4. **Affichage des secrets et variables d’environnement**

   * Exemples :

     * Secrets GitHub : `FAKE_API_TOKEN`, `ENV_TYPE`
     * Variable personnalisée : `MY_CUSTOM_VAR`
     * Variable prédéfinie GitHub : `RUNNER_OS`
   * Les secrets sont **masqués dans les logs** pour éviter toute fuite.

---

## 4. Structure des fichiers

```
.
├── .github/
│   └── workflows/
│       └── ci_basic.yml       # Workflow GitHub Actions
└── app/
    ├── index.html             # Fichier HTML affiché dans les logs
    └── check_app.sh           # Script de test
```

---

## 5. Commandes utiles

### Tester localement le script

```bash
cd app
chmod +x check_app.sh
./check_app.sh
```

### Afficher le contenu de index.html

```bash
cat app/index.html
```

---

## 6. Bonnes pratiques

* **Ne jamais exposer de secrets** dans le dépôt.
* Toujours vérifier le script de test localement avant push.
* Utiliser l’onglet **Actions** de GitHub pour suivre l’exécution et les logs.
* Documenter les variables d’environnement utilisées dans le workflow pour faciliter la maintenance.

---
