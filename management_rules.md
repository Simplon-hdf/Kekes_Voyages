# Règles de gestion

Les règles de gestion définissent les principes et contraintes liés à la gestion des vols, des réservations, des clients, des passagers et des compagnies,
elles assurent la cohérence des interactions entre ces entités. 

## Vol ✈️

- **RG1 :** Un vol doit avoir un lieu de départ et d'arrivée.
- **RG2 :** Un vol doit avoir une heure de départ et d'arrivée.
- **RG3 :** Un vol peut contenir des options de classes.
- **RG4 :** Un vol doit avoir un numéro de vol.
- **RG5 :** Un vol peut avoir une ou plusieurs réservations.
- **RG6 :** Un vol doit contenir une heure d'embarquement.
- **RG7 :** Un vol doit contenir une porte d'embarquement.
- **RG8 :** Un vol doit avoir une durée de vol.
- **RG9 :** Un vol peut être modifé et supprimé.

## Réservation 📅

- **RG10 :** Une réservation doit avoir un vol.
- **RG11 :** Une réservation peut avoir plusieurs vols.
- **RG12 :** Une réservation doit avoir une destination.
- **RG13 :** Une réservation doit avoir un départ.
- **RG14 :** Une réservation doit avoir une classe.
- **RG15 :** Une réservation doit avoir un numéro de réservation.
- **RG16 :** Une réservation doit avoir un passager.
- **RG17 :** Une réservation peut avoir des options.
- **RG18 :** Une réservation peut être créée.
- **RG19 :** Une réservation peut-être modifiée.
- **RG20 :** Une réservation peut-être supprimée.
- **RG21 :** Une réservation doit avoir un prix.
- **RG22 :** Une réservation doit avoir un client.
- **RG23 :** Une réservation crée un billet et envoie un mail de confirmation.

## Client 🧑‍💼

- **RG24 :** Un client doit avoir un prénom et nom
- **RG25 :** Un client doit avoir un mail
- **RG26 :** Un client peut avoir un mot de passe
- **RG27 :** Un client doit avoir une date de naissance
- **RG28 :** Un client doit avoir des informations bancaires
- **RG29 :** Un client doit avoir une adresse de facturation
- **RG30 :** Un client peut faire ou annuler une réservation
- **RG31 :** Un client peut consulter des vols
- **RG32 :** Un client peut réserver pour un ou plusieurs passagers
- **RG33 :** Un client peut être un passager
- **RG34 :** Un client peut créer un compte
- **RG35 :** Un client peut modifier ou supprimer son compte

## Passager 🚶‍♂️

- **RG36 :** Un passager a un nom.
- **RG37 :** Un massager a un prénom.
- **RG38 :** Un passager a une date de naissance.
- **RG39 :** Un passager a un numéro de siège par vol.
- **RG40 :** Un passager doit avoir une pièce d'identité.
- **RG41 :** Un passager peut avoir un passeport.

## Compagnie 🏢

- **RG42 :** Une compagnie a un nom.
- **RG43 :** Une compagnie peut ajouter un vol.
- **RG44 :** Une compagnie peut modifier un vol.
- **RG45 :** Une compagnie peut supprimer un vol.

## Aéroport 🛬

- **RG46 :** Un aéroport doit avoir un nom.
- **RG47 :** Un aéroport doit avoir une localisation (pays, ville et adresse).
- **RG48 :** Un aéroport peut avoir des avions stationnés.
- **RG49 :** Un aéroport doit avoir au moins un terminal.
- **RG50 :** Un aéroport doit avoir un code OACI.
- **RG51 :** Un aéroport doit avoir un code IATA.
- **RG52 :** Un aéroport peut proposer des services sur place.
- **RG53 :** Un aéroport a un certain nombre de pistes.
- **RG54 :** Un aéroport doit avoir un statut (ouvert ou fermé).

## Avion  🛫

- **RG55 :** Un avion doit avoir un modèle.
- **RG56 :** Un avion doit avoir un statut (stationné, en vol, HS).
- **RG57 :** Un avion doit avoir une localisation exacte.
- **RG58 :** Un avion doit avoir des places numérotées.
- **RG59 :** Un avion peut avoir des classes et options.
- **RG60 :** Un avion doit avoir une compagnie.
- **RG61 :** Un avion doit avoir un nombre de places.