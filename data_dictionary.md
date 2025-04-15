# Dictionnaire de Données pour Kekes_Voyages

## Légende des Types de Données

- **A** : Alphanumérique texte
- **AN** : Alphanumérique numérique (identifiant)
- **D** : Date
- **T** : Timestamp (date et heure)
- **N** : Numérique
- **B** : Booléen (vrai/faux)
- **E** : Enum (liste de valeurs prédéfinies)

| Nom du champ     | Type de données | Taille | Clé    | Obligation  | Description                              |
| ---------------- | --------------- | ------ | ------ | ----------- | ---------------------------------------- |
| num_Passeport    | AN              | 36     | PK, FK | Obligatoire | Identifiant unique du passager           |
| id_Personne      | AN              | 36     | PK, FK | Obligatoire | Identifiant unique à la personne         |
| nom              | A               | 50     |        | Obligatoire | Nom du passager                          |
| prenom           | A               | 50     |        | Obligatoire | Prénom du passager                       |
| dateNaiss        | D               |        |        | Obligatoire | Date de naissance du passager            |
| nationalite      | N               |        |        | Obligatoire | Nationalité de la personne               |
| genre            | E               |        |        | Obligatoire | Genre de la personne                     |
| email            | A               | 50     |        | Obligatoire | Adresse e-mail du client                 |
| id_Client        | AN              | 36     | PK, FK | Obligatoire | Identifiant unique du client             |
| mdp              | AN              | 50     |        | Obligatoire | Mot de passe                             |
| id_Vol           | N               |        | PK, FK | Obligatoire | Identifiant unique du vol                |
| date_depart      | T               |        |        | Obligatoire | Date et heure de départ du vol           |
| date_arriver     | T               |        |        | Obligatoire | Date et heure d'arrivée du vol           |
| aeroport_depart  | AN              | 36     | FK     | Obligatoire | Nom de l'aéroport de départ              |
| aeroport_arrivee | AN              | 36     | FK     | Obligatoire | Nom de l'aéroport d'arrivée              |
| details          | A               |        |        | Obligatoire | Détails du vol
| id_Escale        | N               |        | PK, FK | Obligatoire | Identifiant unique de l'escale           |
| date_dep_esc     | N               |        |        | Obligatoire | date de depart de l'escale               |
| date_arrivee_esc | N               |        |        | Obligatoire | date de d'arriver de l'escale            |
| id_Aeroport      | AN              | 36     | PK, FK | Obligatoire | Identifiant unique de l'aeroport         |
| ville            | A               | 58     |        | Obligatoire | Ville de l'aeroport                      |
| pays             | A               | 42     |        | Obligatoire | Pays de l'aeroport                       |
| nom              | A               | 200    |        | Obligatoire | Nom de l'aeroport                        |
| id_compagnie     | AN              | 36     | PK, FK | Obligatoire | Identifiant de la compagnie aérienne     |
| nom_compagnie    | A               | 39     |        | Obligatoire | Nom de la compagnie aérienne             |
| num_siret        | AN              | 14     |        | Obligatoire | Numéro de Siret de la comapgnie aérienne |
| id_Avion         | AN              | 36     | PK     | Obligatoire | Identifiant unique de l'avion            |
| capacite         | N               |        |        | Obligatoire | Nombre de places disponibles             |
| num_Reservation  | AN              | 36     | PK     | Obligatoire | Identifiant unique de la réservation     |
| classes          | E               |        |        | Obligatoire | Classe (économique, affaires, première)  |

## Abréviations

- **PK** : Primary Key (Clé primaire)
- **FK** : Foreign Key (Clé étrangère)
