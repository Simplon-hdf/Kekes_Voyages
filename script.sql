CREATE TABLE Personnes(
   Id_Personne VARCHAR(36),
   nom VARCHAR(50),
   prenom VARCHAR(50),
   dateNaiss DATE,
   genre INT,
   nationalite INT,
   PRIMARY KEY(Id_Personne)
);

CREATE TABLE Aeroports(
   id_aeroport VARCHAR(36),
   ville VARCHAR(58),
   pays VARCHAR(42),
   nom VARCHAR(200),
   PRIMARY KEY(id_aeroport)
);

CREATE TABLE Compagnies(
   id_compagnie VARCHAR(36),
   nom VARCHAR(39),
   num_siret VARCHAR(14),
   PRIMARY KEY(id_compagnie)
);

CREATE TABLE Avions(
   Id_Avion VARCHAR(36),
   modele VARCHAR(60),
   classes INT,
   capacite INT,
   id_compagnie VARCHAR(36) NOT NULL,
   PRIMARY KEY(Id_Avion),
   FOREIGN KEY(id_compagnie) REFERENCES Compagnies(id_compagnie)
);

CREATE TABLE Clients(
   Id_Client VARCHAR(36),
   email VARCHAR(50),
   mdp VARCHAR(50),
   Id_Personne VARCHAR(36) NOT NULL,
   PRIMARY KEY(Id_Client),
   UNIQUE(Id_Personne),
   FOREIGN KEY(Id_Personne) REFERENCES Personnes(Id_Personne)
);

CREATE TABLE Passagers(
   num_passeport VARCHAR(9),
   Id_Client VARCHAR(36) NOT NULL,
   Id_Personne VARCHAR(36) NOT NULL,
   PRIMARY KEY(num_passeport),
   UNIQUE(Id_Personne),
   FOREIGN KEY(Id_Client) REFERENCES Clients(Id_Client),
   FOREIGN KEY(Id_Personne) REFERENCES Personnes(Id_Personne)
);

CREATE TABLE Vols(
   Id_Vol COUNTER,
   date_dep DATETIME,
   date_arriver DATETIME,
   details TEXT,
   id_aeroport VARCHAR(36) NOT NULL,
   id_aeroport_1 VARCHAR(36) NOT NULL,
   PRIMARY KEY(Id_Vol),
   FOREIGN KEY(id_aeroport) REFERENCES Aeroports(id_aeroport),
   FOREIGN KEY(id_aeroport_1) REFERENCES Aeroports(id_aeroport)
);

CREATE TABLE Escales(
   Id_Escale COUNTER,
   date_dep_esc DATETIME,
   date_arrivee_esc DATETIME,
   id_aeroport VARCHAR(36) NOT NULL,
   Id_Vol INT NOT NULL,
   PRIMARY KEY(Id_Escale),
   FOREIGN KEY(id_aeroport) REFERENCES Aeroports(id_aeroport),
   FOREIGN KEY(Id_Vol) REFERENCES Vols(Id_Vol)
);

CREATE TABLE reserver(
   Id_Client VARCHAR(36),
   Id_Vol INT,
   PRIMARY KEY(Id_Client, Id_Vol),
   FOREIGN KEY(Id_Client) REFERENCES Clients(Id_Client),
   FOREIGN KEY(Id_Vol) REFERENCES Vols(Id_Vol)
);

CREATE TABLE Organiser(
   Id_Vol INT,
   id_compagnie VARCHAR(36),
   PRIMARY KEY(Id_Vol, id_compagnie),
   FOREIGN KEY(Id_Vol) REFERENCES Vols(Id_Vol),
   FOREIGN KEY(id_compagnie) REFERENCES Compagnies(id_compagnie)
);
