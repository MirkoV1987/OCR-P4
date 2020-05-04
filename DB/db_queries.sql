/*******SQL QUERIES******
Author: Mirko Venturi****
Date: 18/06/2019*********
Project : P4************/

/*Note: enlever 'public.' pour MySQL queries*/

INSERT INTO public.client ( /*Insertion des données dans la table client*/

id, civilite, nom, prenom, identifiant, mdp

) VALUES
(1,'Mme','Martin','Claude','claude75','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(2,'M','Pillon','Marc','MarcPi','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(3,'Mme','Blot','Sophie','SophieB','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(4,'Mme','Marlène','Sasoeur','Mar1982','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(5,'M','Rossi','Mario','Mario','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(6,'Mme','Maoumoud','Viviane','Viv87','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(7,'M','Le Blanc','Juste','JLeblanc','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(8,'M','Le Moine','Nicolas','Nicolas81','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(9,'Mme','Le Moine','Josephine','Jos84','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(10,'M','La Fuente','Andreas','Andreas','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(11,'Mme','La Fleur','Julie','Julie85','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(12,'M','Petit','Jean','Jean','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(13,'M','Tarantini','Didier','DidierT','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(14,'Mme','Poisson','Laure-Hélène','LH79','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(15,'Mme','Tarantini','Jeanne','Jeanne83','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(16,'M','Rocher','Jean-Yves','JY','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(17,'Mme','Germain','Justine','Justine','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC'),
(18,'M','Sommier','Charles','CharlesSom','$2y$13$aTe2tc4lM1j4AzyTUnh5U.FemqwTk5ILve1ot1H9.FVVyLSFb/2SC');


/*******Insère des coordonnes dans la table coordonnes********/

INSERT INTO public.coordonnees (

client_id ,email, telephone, adresse, codepostal, ville, latitude, longitude

) VALUES
(1,'c.martin@gmail.com',0665478952, '31 avenue des fleurs', 42000, 'Saint-Etienne',45.4333, 4.4000),
(2,'pillon23@orange.com',0624781401, '98 rue de la Paix', 86000, 'Poitiers',46.5833, 0.3333),
(3,'s.blot@.com',0665418952, '25 rue des palmiers', 12100, 'Creissels',44.1, 3.0833),
(4,'m.sasoeur@outlook.com',0624124352, '53 rue du marché', 17000, 'La Rochelle',46.1667, -1.15),
(5,'rossi1522@orange.fr',0612492178, '2 rue Malakoff', 75019, 'Paris',48.8817, 2.3822),
(6,'maoumoud@yahoo.fr',0251237810, '19 rue de la victoire', 85500, 'Les Herbiers',46.8667, -1.0167),
(7,'leblanc1214@gmail.com', 065511452, '10 rue des Lilas', 75020, 'Paris', 48.8534, 2.3488),
(8,'lemoine_nico@yahoo.fr',0118478412, '14 rue Saint-Michel', 35000, 'Rennes',48.0833, -1.6833),
(9,'joseph_lem@msn.com',0722477852, '4 rue Blanche', 37100, 'Tours Nord',47.3833, 0.6833),
(10,'lafuente789@lapomme.com',061244252, '158 Avenue du Mans', 78140, 'Vélizy-Villacoublay',48.8,  2.1833),
(11,'lafleur@outlook.com',0217478944, '10 rue de la mer', 22000, 'Saint-Brieuc',48.5167, -2.7833),
(12,'j.petit@gmail.com',0765478988, '12 Place de Bretagne', 56000, 'Vannes',47.6667, -2.75),
(13,'didier_12@orange.com',0624741401, '98 rue de la forteresse', 75012, 'Paris',48.8817, 2.3822),
(14,'poissonlh@free.fr',0678418952, '9 rue Blanche', 37100, 'Tours Nord',47.3833, 0.6833),
(15,'j.tarantini123@outlook.com',0624122252, '145 rue du marché', 35000, 'Rennes',48.0833, -1.6833),
(16,'jyrocher@msn.com',0712478178, '2 rue Proudhon', 17000, 'La Rochelle',46.1667, -1.15),
(17,'justine.germain@yahoo.fr',0651237810, '45 rue de la victoire', 69000, 'Lyon',45.764043, 4.835659),
(18,'charles.sommier@gmail.com',0651237810, '12 rue de la Mairie', 69000, 'Lyon',45.764043, 4.835659);


/*****Met à jour les données des colonnes 'adressecomplement' et 'infos' pour client_id n. 12*******/

UPDATE public.coordonnees SET
   adressecomplement = 'Bâtiment A, 2e étage',
   infos = 'Au fond de l''escalier'
WHERE client_id = 12;

/*****Met à jour les données des colonnes 'adressecomplement' et 'infos' pour client_id n. 15*******/

UPDATE public.coordonnees SET
   adressecomplement = 'Bât C, 4e étage',
   infos = 'A droite de l''ascenseur'
WHERE client_id = 15;

/*****Met à jour les données des colonnes 'telephone' pour le client portant l'email leblanc1214@gmail.com*******/

UPDATE public.coordonnees SET
   telephone = 0624178954
WHERE EMAIL = 'leblanc1214@gmail.com';

/*****Sélectionne toutes les données de la table 'coordonnees' et les classe par client_id*******/

SELECT * FROM public.coordonnees
ORDER BY client_id;

/*****Sélectionne les données de la table 'client', contenues dans les colonnes nom, prenom, identifiant, dont l'id vaut 11*******/

SELECT nom, prenom, identifiant FROM public.client
WHERE id = 11;

/*****Efface le tuple de la table 'client' où nom et prenom valent 'Martin' et 'Julie'*******/

DELETE FROM public.client
WHERE nom = 'Martin' AND prenom = 'Julie';

UPDATE public.client SET
id = 2
WHERE id = 5;

/******Efface toutes les données de la table client et tables liées, remet valeur AUTO_INCREMENT à 0*****/

TRUNCATE TABLE public.client CASCADE;

/******TO DO : insérer TIMESTAMP pour injection data dans la colonne datecommande*****/

INSERT INTO commande (

client_id, datecommande, etat, prixTotal_HT, prixTotal_TTC, livreur_id

) VALUES
(1, '2019-05-19', 1, 23.50, 25.00, 4),
(4, '2019-05-18', 2, 39.00, 41.00, 5),
(5, '2019-06-14', 3, 13.50, 15.00, 3),
(6, '2019-07-12', 1, 43.80, 45.00, 2),
(12, '2019-06-3', 4, 13.00, 14.00, 3),
(15, '2019-07-6', 1, 19.50, 21.00,2);


/******Insertion des données concernant les livreurs*****/

INSERT INTO public.livreur (

livreur_id, nom, prenom, statut, latitude, longitude

) VALUES

(1, 'LePetit', 'Julian', true, 48.8,  2.1833),
(2, 'Vergner','Matthieu', false, 48.8,  2.1833),
(3, 'Loiset','Élodie', false, 45.4333, 4.4000),
(4, 'Usayn','Caleb', true, 47.6667, -2.75),
(5, 'Ponchet','Sylvie', true, 48.8,  2.1833),
(6, 'Turrettini','Silvio', false, 48.8,  2.1833),
(7, 'Marcault','Michelle', false, 48.8817, 2.3822),
(8, 'Magnot','Julie', true, 47.3833, 0.6833),
(9, 'Choum','Alpha', true, 48.8,  2.1833),
(10, 'Briand','Frédéric', false, 44.1, 3.0833);

/******Insertion des données concernant les commandes en PostgresSQL*****/

INSERT INTO public.commande /***MySQL commande only****/ (

  id, client_id, datecommande, etat, total, livreur_id

) VALUES
(1, 4, '2019-02-12  21:00:05', '2', 18.00, 4),
(2, 10, '2019-04-05  19:45:10', '1', 28.00, 1),
(3, 14, '2018-03-15  20:45:10', '2', 27.50, 6),
(4, 6, '2019-10-21  20:10:24', '2', 82.50, 10),
(5, 9, '2019-03-14  21:10:11', '3', 105.50, 8),
(6, 17, '2019-07-17  18:25:16', '2', 78.00, 9),
(7, 8, '2019-05-11  20:10:14', '3', 70.50, 4),
(8, 13, '2019-09-02  20:09:11', '2', 21.50, 3),
(9, 18, '2018-04-03  19:22:14', '1', 15.00, 9);

/******Insertion des données dans la table 'lignecommande'*****/

  INSERT INTO public.lignecommande (

	id, commande_id, plat_id, qte,  prix_HT, prix_TTC

) VALUES

	(1, 3, 2, 12, 78.00, 84.00),
	(2, 10, 3, 13, 50.50, 54.50),
	(3, 5, 9, 18, 105.00, 110.20),
	(4, 4, 4, 14, 64.00, 68.00),
	(5, 9, 10, 9, 152.00, 158.00),
	(6, 4, 2, 12, 32.00, 34.85),
	(7, 7, 6, 20, 78.00, 82.00),
	(8, 6, 5, 22, 92.50, 96.00),
	(9, 1, 3, 17, 55.00, 57.26);

/******Insertion des données dans la table 'plat'*****/


INSERT INTO public.plat (

	plat_id, datepublication, prixplat, typeplat, nomplat

) VALUES

(1, '2018-01-12  14:00:05', 12.50, 'plat', 'tagliata de boeuf 500gr');

/******Ajout de la colonne 'prixplat_id' dans la table 'lignecommande'*****/

ALTER TABLE public.lignecommande
ADD prixplat_id NUMERIC;

/******Renomme la colonne 'prixplat_id' en 'prixplat'*****/

ALTER TABLE public.lignecommande
RENAME COLUMN prixplat_id TO prixplat;

/******Met à jour la valeur de 'prixplat' quand commande_id vaut 1*****/

UPDATE public.lignecommande SET

	prixplat = 11.50

WHERE
commande_id = 1;

/********Efface la PRIMARY KEY plat_pk de la table plat*********/

ALTER TABLE plat
DROP CONSTRAINT plat_pk CASCADE


ALTER TABLE plat
ADD id INT NOT NULL PRIMARY KEY

/********Insère les données dans la table plat*********/
/************PostgresSQL*******************************/

INSERT INTO public.plat (

plat_id, datepublication, prixplat, typeplat, nomplat, id

) VALUES
(1, '2018-01-14  21:00:05', 11.50, 'plat', 'ravioli bolognese', 1),
(2, '2019-03-18  14:30:10', 13.00, 'dessert', 'mousse au chocolat', 2),
(3, '2018-05-10  19:00:05', 18.00, 'plat', 'lasagnes', 3),
(4, '2019-12-04  10:12:05', 14.10, 'plat', 'entrecôte de bouef', 4),
(5, '2019-10-21  09:30:05', 9.00, 'dessert', 'profitoroles royal', 5),
(6, '2019-07-24  17:15:05', 12.00, 'dessert', 'tiramisu', 6),
(7, '2019-03-25  14:14:05', 20.00, 'plat', 'pommes dauphines', 7),
(8, '2018-02-28  12:59:15', 22.00, 'plat', 'spaghetti aux fruits de mer', 8),
(9, '2018-11-29  17:14:05', 17.00, 'dessert', 'sorbet au citron', 9),
(10, '2018-09-03  12:00:05', 15.50, 'dessert', 'crème brûlée', 10);

/*****MysSQL******/
INSERT INTO plat (

id, dateCreation, dateDebutVente, typePlat, nomPlat, prixplat_HT, prixplat_TTC

) VALUES
(1, '2018-01-14', '2018-01-16 21:00:05', 'plat', 'ravioli bolognese', 11.50, 12.80),
(2, '2019-03-18', '2019-03-19 19:00:05', 'dessert', 'mousse au chocolat', 13.00, 14.00),
(3, '2018-05-10', '2018-05-16 18:25:05', 'plat', 'lasagnes', 18.00, 19.85),
(4, '2019-12-04', '2019-12-05 14:02:05', 'plat', 'entrecôte de bouef', 14.00, 15.00),
(5, '2019-10-21', '2019-10-26 19:26:05', 'dessert', 'profitoroles royal', 9.00, 9.85),
(6, '2019-07-24', '2019-07-30 22:00:05', 'dessert', 'tiramisu', 12.00, 13.25),
(7, '2019-03-25', '2019-03-25 17:00:50', 'plat', 'pommes dauphines', 20.00, 22.00),
(8, '2018-02-28', '2018-02-29 23:00:05', 'plat', 'spaghetti aux fruits de mer', 22.00, 24.00),
(9, '2018-11-29', '2018-11-30 8:00:05', 'dessert', 'sorbet au citron', 17.00, 17.25),
(10, '2018-09-03', '2018-09-04 9:00:05', 'dessert', 'crème brûlée', 15.50, 16.80);

/********Insère les données dans la table stock*********/

INSERT INTO stock (

id, livreur_stock_id, plat_id, qte

) VALUES
(1, 1, 3, 2),
(2, 2, 5, 2),
(3, 3, 9, 4),
(4, 4, 6, 2),
(5, 5, 6, 4),
(6, 6, 4, 2),
(7, 7, 1, 3),
(8, 8, 2, 1),
(9, 9, 5, 2),
(10, 10, 3, 1);

/********Insère la FOREIGN KEY lignecommande_plat_fk*********/
ALTER TABLE public.plat
ADD CONSTRAINT lignecommande_plat_fk FOREIGN KEY (id) REFERENCES public.plat(id);

/****************MySQL engine change MyIsam to InnoDB***/
SELECT CONCAT('ALTER TABLE ',table_schema,'.',table_name,' ENGINE=InnoDB;')
FROM information_schema.tables
WHERE 1=1
    AND engine = 'MyISAM'
    AND table_schema NOT IN ('information_schema', 'mysql', 'performance_schema');

ALTER TABLE client ENGINE=InnoDB;
ALTER TABLE commande ENGINE=InnoDB;
ALTER TABLE coordonnees ENGINE=InnoDB;
ALTER TABLE lignecommande ENGINE=InnoDB;
ALTER TABLE livreur ENGINE=InnoDB;
ALTER TABLE plat ENGINE=InnoDB;
ALTER TABLE stock ENGINE=InnoDB;
