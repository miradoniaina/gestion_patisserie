-- insert utilisateurs
INSERT INTO utilisateur VALUES (1,'miradoniaina','itu');
INSERT INTO utilisateur VALUES (2,'eddy','itu');

-- insert categorie
INSERT INTO categorie VALUES (1,'tarte');
INSERT INTO categorie VALUES (2,'fondant');
INSERT INTO categorie VALUES (3,'brioche');
INSERT INTO categorie VALUES (4,'beignet');
INSERT INTO categorie VALUES (5,'moelleux');

-- recette
	-- tarte
INSERT INTO recette VALUES (1,1,'Tartes aux légumes',30000);
INSERT INTO recette VALUES (2,1,'Tarte à la tapenade',25000);
INSERT INTO recette VALUES (3,1,'Tarte aux blettes',20000);
INSERT INTO recette VALUES (4,1,'Tarte aux courgettes',35000);
INSERT INTO recette VALUES (5,1,'Tarte aux oignons',33000);
INSERT INTO recette VALUES (6,1,'Tarte provençale à la ratatouille',40000);

		-- fondant
INSERT INTO recette VALUES (7,2,'Biscuits fondant façon glace',30000);
INSERT INTO recette VALUES (8,2,'Fondant poome et citron',40000);
INSERT INTO recette VALUES (9,2,'foncant à la crème marrons,noisettes et mandarine',45000);
INSERT INTO recette VALUES (10,2,'Losange fondant',20000);
INSERT INTO recette VALUES (11,2,'Fondant au chocolat',25000);
INSERT INTO recette VALUES (12,2,'Fondant au chocolat et à la farine de Chataigne',20000);

	-- beignet
INSERT INTO recette VALUES (13,2,'Biscuits fondant façon glace',10000);
INSERT INTO recette VALUES (14,2,'Fondant poome et citron',15000);
INSERT INTO recette VALUES (15,2,'foncant à la crème marrons,noisettes et mandarine',7500);
INSERT INTO recette VALUES (16,2,'Losange fondant',8000);
INSERT INTO recette VALUES (17,2,'Fondant au chocolat',9000);
INSERT INTO recette VALUES (18,2,'Fondant au chocolat et à la farine de Chataigne',12000);	
	
	--Moelleux au chocolat
INSERT INTO recette VALUES (19,5,'Moelleux au chocolat',60000);
INSERT INTO recette VALUES (20,5,'Moelleux au chocolat à l''orange',70000);
INSERT INTO recette VALUES (21,5,'Gateau à la banane et au chocolat',80000);
INSERT INTO recette VALUES (22,5,'Gateau moelleux aux noix',75000);
INSERT INTO recette VALUES (23,5,'Gateau au yaourt léger et moelleux',90000);
INSERT INTO recette VALUES (24,5,'Moelleux coulants au chocolat',95000);

	-- brioche
INSERT INTO recette VALUES (25,3,'Brioche alsacienne ''manalas''',5000);
INSERT INTO recette VALUES (26,3,'Brioche de Beauvais',6000);
INSERT INTO recette VALUES (27,3,'Brioche lorraine',75000);
INSERT INTO recette VALUES (28,3,'Brioche à la saucisse',7500);
INSERT INTO recette VALUES (29,3,'Brioche à la crème de pruneaux',8000);
INSERT INTO recette VALUES (30,3,'Brioche vendéenne',10000);


-- ingredient
INSERT INTO ingredient VALUES (1,'sucre',100000,1000000,'g');
INSERT INTO ingredient VALUES (2,'farine',100000,1000000,'g');
INSERT INTO ingredient VALUES (3,'lait',10000,900000,'cl');
INSERT INTO ingredient VALUES (4,'beurre',100000,1000000,'g');
INSERT INTO ingredient VALUES (5,'sel',10000,1000000,'g');
INSERT INTO ingredient VALUES (6,'aromatique essentiel d''orange',10000,90000,'cl');
INSERT INTO ingredient VALUES (7,'chocolat noire',10000,1000000,'g');
INSERT INTO ingredient VALUES (8,'oeufs',25,100,'unite');
INSERT INTO ingredient VALUES (9,'fécule de mais',1000,1000000,'g');
INSERT INTO ingredient VALUES (10,'crème fraiche liquide',10000,1000000,'g');
INSERT INTO ingredient VALUES (11,'raisin sec',5,100,'sachets');


-- recette ingredient
INSERT INTO recette_ingredient VALUES (1,1,1000);
INSERT INTO recette_ingredient VALUES (1,2,2000);
INSERT INTO recette_ingredient VALUES (1,4,1500);
INSERT INTO recette_ingredient VALUES (1,8,5);

INSERT INTO recette_ingredient VALUES (2,1,1500);
INSERT INTO recette_ingredient VALUES (2,2,2000);
INSERT INTO recette_ingredient VALUES (2,4,1500);
INSERT INTO recette_ingredient VALUES (2,8,5);

INSERT INTO recette_ingredient VALUES (3,1,2200);
INSERT INTO recette_ingredient VALUES (3,2,2500);
INSERT INTO recette_ingredient VALUES (3,4,3000);
INSERT INTO recette_ingredient VALUES (3,8,5);

INSERT INTO recette_ingredient VALUES (4,1,2200);
INSERT INTO recette_ingredient VALUES (4,2,2500);
INSERT INTO recette_ingredient VALUES (4,4,3000);
INSERT INTO recette_ingredient VALUES (4,8,5);

INSERT INTO recette_ingredient VALUES (5,1,2200);
INSERT INTO recette_ingredient VALUES (5,2,2500);
INSERT INTO recette_ingredient VALUES (5,4,3000);
INSERT INTO recette_ingredient VALUES (5,8,5);

INSERT INTO recette_ingredient VALUES (6,1,2200);
INSERT INTO recette_ingredient VALUES (6,2,2500);
INSERT INTO recette_ingredient VALUES (6,4,3000);
INSERT INTO recette_ingredient VALUES (6,8,5);

INSERT INTO recette_ingredient VALUES (7,1,2200);
INSERT INTO recette_ingredient VALUES (7,2,2500);
INSERT INTO recette_ingredient VALUES (7,4,3000);
INSERT INTO recette_ingredient VALUES (7,8,5);

INSERT INTO recette_ingredient VALUES (8,1,2200);
INSERT INTO recette_ingredient VALUES (8,2,2500);
INSERT INTO recette_ingredient VALUES (8,4,3000);
INSERT INTO recette_ingredient VALUES (8,8,5);

INSERT INTO recette_ingredient VALUES (9,1,2200);
INSERT INTO recette_ingredient VALUES (9,2,2500);
INSERT INTO recette_ingredient VALUES (9,4,3000);
INSERT INTO recette_ingredient VALUES (9,8,5);

INSERT INTO recette_ingredient VALUES (10,1,2200);
INSERT INTO recette_ingredient VALUES (10,2,2500);
INSERT INTO recette_ingredient VALUES (10,4,3000);
INSERT INTO recette_ingredient VALUES (10,8,5);

INSERT INTO recette_ingredient VALUES (11,1,2200);
INSERT INTO recette_ingredient VALUES (11,2,2500);
INSERT INTO recette_ingredient VALUES (11,4,3000);
INSERT INTO recette_ingredient VALUES (11,8,5);

INSERT INTO recette_ingredient VALUES (12,1,2200);
INSERT INTO recette_ingredient VALUES (12,2,2500);
INSERT INTO recette_ingredient VALUES (12,4,3000);
INSERT INTO recette_ingredient VALUES (12,8,5);

INSERT INTO recette_ingredient VALUES (13,1,2200);
INSERT INTO recette_ingredient VALUES (13,2,2500);
INSERT INTO recette_ingredient VALUES (13,4,3000);
INSERT INTO recette_ingredient VALUES (13,8,5);

INSERT INTO recette_ingredient VALUES (14,1,2200);
INSERT INTO recette_ingredient VALUES (14,2,2500);
INSERT INTO recette_ingredient VALUES (14,4,3000);
INSERT INTO recette_ingredient VALUES (14,8,5);

INSERT INTO recette_ingredient VALUES (15,1,2200);
INSERT INTO recette_ingredient VALUES (15,2,2500);
INSERT INTO recette_ingredient VALUES (15,4,3000);
INSERT INTO recette_ingredient VALUES (15,8,5);

INSERT INTO recette_ingredient VALUES (16,1,2200);
INSERT INTO recette_ingredient VALUES (16,2,2500);
INSERT INTO recette_ingredient VALUES (16,4,3000);
INSERT INTO recette_ingredient VALUES (16,8,5);

INSERT INTO recette_ingredient VALUES (17,1,2200);
INSERT INTO recette_ingredient VALUES (17,2,2500);
INSERT INTO recette_ingredient VALUES (17,4,3000);
INSERT INTO recette_ingredient VALUES (17,8,5);

INSERT INTO recette_ingredient VALUES (18,1,2200);
INSERT INTO recette_ingredient VALUES (18,2,2500);
INSERT INTO recette_ingredient VALUES (18,4,3000);
INSERT INTO recette_ingredient VALUES (18,8,5);

INSERT INTO recette_ingredient VALUES (19,1,2200);
INSERT INTO recette_ingredient VALUES (19,2,2500);
INSERT INTO recette_ingredient VALUES (19,4,3000);
INSERT INTO recette_ingredient VALUES (19,8,5);

INSERT INTO recette_ingredient VALUES (20,1,2200);
INSERT INTO recette_ingredient VALUES (20,2,2500);
INSERT INTO recette_ingredient VALUES (20,4,3000);
INSERT INTO recette_ingredient VALUES (20,8,5);

INSERT INTO recette_ingredient VALUES (21,1,2200);
INSERT INTO recette_ingredient VALUES (21,2,2500);
INSERT INTO recette_ingredient VALUES (21,4,3000);
INSERT INTO recette_ingredient VALUES (21,8,5);

INSERT INTO recette_ingredient VALUES (22,1,2200);
INSERT INTO recette_ingredient VALUES (22,2,2500);
INSERT INTO recette_ingredient VALUES (22,4,3000);
INSERT INTO recette_ingredient VALUES (22,8,5);

INSERT INTO recette_ingredient VALUES (23,1,2200);
INSERT INTO recette_ingredient VALUES (23,2,2500);
INSERT INTO recette_ingredient VALUES (23,4,3000);
INSERT INTO recette_ingredient VALUES (23,8,5);

INSERT INTO recette_ingredient VALUES (24,1,2200);
INSERT INTO recette_ingredient VALUES (24,2,2500);
INSERT INTO recette_ingredient VALUES (24,4,3000);
INSERT INTO recette_ingredient VALUES (24,8,5);

INSERT INTO recette_ingredient VALUES (25,1,2200);
INSERT INTO recette_ingredient VALUES (25,2,2500);
INSERT INTO recette_ingredient VALUES (25,4,3000);
INSERT INTO recette_ingredient VALUES (25,8,5);

INSERT INTO recette_ingredient VALUES (26,1,2200);
INSERT INTO recette_ingredient VALUES (26,2,2500);
INSERT INTO recette_ingredient VALUES (26,4,3000);
INSERT INTO recette_ingredient VALUES (26,8,5);

INSERT INTO recette_ingredient VALUES (27,1,2200);
INSERT INTO recette_ingredient VALUES (27,2,2500);
INSERT INTO recette_ingredient VALUES (27,4,3000);
INSERT INTO recette_ingredient VALUES (27,8,5);

INSERT INTO recette_ingredient VALUES (28,1,2200);
INSERT INTO recette_ingredient VALUES (28,2,2500);
INSERT INTO recette_ingredient VALUES (28,4,3000);
INSERT INTO recette_ingredient VALUES (28,8,5);

INSERT INTO recette_ingredient VALUES (29,1,2200);
INSERT INTO recette_ingredient VALUES (29,2,2500);
INSERT INTO recette_ingredient VALUES (29,4,3000);
INSERT INTO recette_ingredient VALUES (29,8,5);

INSERT INTO recette_ingredient VALUES (30,1,2200);
INSERT INTO recette_ingredient VALUES (30,2,2500);
INSERT INTO recette_ingredient VALUES (30,4,3000);
INSERT INTO recette_ingredient VALUES (30,8,5);


-- insertion entree
INSERT INTO entree VALUES (1,1,1000000,'01-03-2017','g');
INSERT INTO entree VALUES (2,2,1000000,'01-03-2017','g');
INSERT INTO entree VALUES (3,3,900000,'01-03-2017','cl');
INSERT INTO entree VALUES (4,4,1000000,'01-03-2017','g');
INSERT INTO entree VALUES (5,5,1000000,'01-03-2017','g');
INSERT INTO entree VALUES (6,6,90000,'01-03-2017','cl');
INSERT INTO entree VALUES (7,7,1000000,'01-03-2017','g');
INSERT INTO entree VALUES (8,8,100,'01-03-2017','unite');
INSERT INTO entree VALUES (9,9,1000000,'01-03-2017','g');
INSERT INTO entree VALUES (10,10,10000,'01-03-2017','g');
INSERT INTO entree VALUES (11,11,100,'01-03-2017','sachets');




/*sequence*/
ALTER SEQUENCE categorie_id_categ_seq RESTART WITH 6;
ALTER SEQUENCE commande_id_commande_seq RESTART WITH 1;
ALTER SEQUENCE entree_id_entree_seq RESTART WITH 12;
ALTER SEQUENCE ingredient_id_ingredient_seq RESTART WITH 12;
ALTER SEQUENCE recette_id_recette_seq RESTART WITH 31;
ALTER SEQUENCE utilisateur_id_utilisateur_seq RESTART WITH 3;