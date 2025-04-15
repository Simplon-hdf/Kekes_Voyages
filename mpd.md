# Modèle Physique de Données (MPD) 
![Modèle Physique de Données (MPD)](notes/mpd.jpg)

#  MPD Script

| Table | Colonnes |
|-------|----------|
| **Personnes** | Id_Personne (COUNTER), nom (VARCHAR(50)), prenom (VARCHAR(50)), dateNaiss (DATE), genre (VARCHAR(50)), nationalite (VARCHAR(50)) |
| **Aeroports** | id_aeroport (VARCHAR(50)), ville (VARCHAR(50)), pays (VARCHAR(50)), nom (VARCHAR(50)) |
| **Compagnies** | id_compagnie (VARCHAR(50)), nom (VARCHAR(50)), num_siret (VARCHAR(50)) |
| **Avions** | Id_Avion (COUNTER), modele (VARCHAR(50)), classes (VARCHAR(50)), capacite (VARCHAR(50)), #id_compagnie |
| **Clients** | Id_Client (COUNTER), email (VARCHAR(50)), mdp (VARCHAR(50)), adresse_facturation (VARCHAR(50)), #Id_Personne |
| **Passagers** | num_passeport (VARCHAR(50)), #Id_Client, #Id_Personne |
| **Vols** | Id_Vol (COUNTER), date_dep (DATETIME), date_arriver (DATETIME), details (VARCHAR(50)), #id_aeroport, #id_aeroport_1 |
| **Escales** | Id_Escale (COUNTER), date_dep_esc (DATETIME), date_arrivee_esc (DATETIME), #id_aeroport, #Id_Vol |
| **Reserver** | #Id_Client, #Id_Vol |
| **Organiser** | #Id_Vol, #id_compagnie |

# MPD Schéma 

[MPD Schéma](https://github.com/M-ZABIULLAH/Kekes_Voyages/blob/feature/MPD/MPD.jpg)
