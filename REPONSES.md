# TP 04 – Réponses

1. **Pourquoi les clés de `animesTest` sont-elles `'canonicalTitle'` et `'episodeCount'` ?**
   Ce sont exactement les clés utilisées par l'API Kitsu dans `attributes`. Ainsi, le même code
   d'affichage fonctionne avec les données de test puis avec les vraies données téléchargées.

2. **Les trois cas gérés par le `FutureBuilder` :**
   - `snapshot.hasError` : une erreur est survenue → le message « Erreur de chargement ».
   - `!snapshot.hasData` : téléchargement en cours → un `CircularProgressIndicator` (cercle qui tourne).
   - sinon (`hasData`) : téléchargement terminé → la `ListView.builder` avec les animés.

3. **Contenu de la mémoire :**
   - Connecté : la clé `'connecte'` vaut `true` (`prefs.setBool('connecte', true)`).
   - Après « Déconnexion » : la clé n'existe plus (`prefs.remove('connecte')`), donc
     `prefs.getBool('connecte') ?? false` renvoie `false` et l'application s'ouvre sur la connexion.
