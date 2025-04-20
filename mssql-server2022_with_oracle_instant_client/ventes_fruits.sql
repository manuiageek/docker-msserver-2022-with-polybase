CREATE TABLE ventes_fruits (
  id INT IDENTITY(1,1) PRIMARY KEY,
  nom_fruit NVARCHAR(50),
  type_fruit NVARCHAR(50),
  ville NVARCHAR(50),
  vente_q1 INT,
  vente_q2 INT,
  vente_q3 INT,
  vente_q4 INT
);

INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Pomme', 'Fruit à pépins', 'Papeete', 120, 150, 130, 140);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Banane', 'Fruit tropical', 'Faaa', 200, 180, 210, 190);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Mangue', 'Fruit tropical', 'Mahina', 90, 110, 95, 100);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Orange', 'Agrume', 'Mataiea', 150, 160, 155, 165);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Ananas', 'Fruit tropical', 'Taravao', 80, 70, 75, 85);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Fraise', 'Baie', 'Papeete', 60, 65, 70, 75);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Kiwi', 'Fruit exotique', 'Faaa', 40, 45, 50, 55);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Raisin', 'Fruit à pépins', 'Mahina', 30, 35, 40, 45);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Cerise', 'Baie', 'Mataiea', 20, 25, 30, 35);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Pêche', 'Drupe', 'Taravao', 50, 55, 60, 65);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Poire', 'Fruit à pépins', 'Papeete', 70, 75, 80, 85);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Abricot', 'Drupe', 'Faaa', 35, 40, 45, 50);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Prune', 'Drupe', 'Mahina', 25, 30, 35, 40);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Melon', 'Cucurbitacée', 'Mataiea', 60, 65, 70, 75);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Pastèque', 'Cucurbitacée', 'Taravao', 90, 95, 100, 105);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Litchi', 'Fruit exotique', 'Papeete', 15, 20, 25, 30);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Grenade', 'Baie', 'Faaa', 10, 15, 20, 25);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Framboise', 'Baie', 'Mahina', 12, 14, 16, 18);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Myrtille', 'Baie', 'Mataiea', 8, 10, 12, 14);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Groseille', 'Baie', 'Taravao', 6, 8, 10, 12);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Pamplemousse', 'Agrume', 'Papeete', 55, 60, 65, 70);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Clémentine', 'Agrume', 'Faaa', 45, 50, 55, 60);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Mandarine', 'Agrume', 'Mahina', 35, 40, 45, 50);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Citron', 'Agrume', 'Mataiea', 25, 30, 35, 40);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Fruit de la passion', 'Baie', 'Taravao', 20, 25, 30, 35);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Noix de coco', 'Drupe', 'Papeete', 18, 22, 26, 30);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Avocat', 'Drupe', 'Faaa', 28, 32, 36, 40);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Figue', 'Baie', 'Mahina', 14, 18, 22, 26);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Datte', 'Baie', 'Mataiea', 16, 20, 24, 28);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Cassis', 'Baie', 'Taravao', 8, 12, 16, 20);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Goyave', 'Baie', 'Papeete', 22, 26, 30, 34);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Papaye', 'Baie', 'Faaa', 32, 36, 40, 44);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Kaki', 'Baie', 'Mahina', 24, 28, 32, 36);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Nashi', 'Fruit à pépins', 'Mataiea', 26, 30, 34, 38);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Pruneau', 'Drupe', 'Taravao', 12, 16, 20, 24);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Mirabelle', 'Drupe', 'Papeete', 10, 14, 18, 22);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Quetsche', 'Drupe', 'Faaa', 8, 12, 16, 20);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Reine-claude', 'Drupe', 'Mahina', 6, 10, 14, 18);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Sureau', 'Baie', 'Mataiea', 4, 8, 12, 16);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Canneberge', 'Baie', 'Taravao', 2, 6, 10, 14);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Longane', 'Baie', 'Papeete', 5, 10, 15, 20);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Ramboutan', 'Baie', 'Faaa', 7, 12, 17, 22);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carambole', 'Baie', 'Mahina', 9, 14, 19, 24);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Sapote', 'Baie', 'Mataiea', 11, 16, 21, 26);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Mangoustan', 'Baie', 'Taravao', 13, 18, 23, 28);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Corossol', 'Baie', 'Papeete', 15, 20, 25, 30);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Tamarin', 'Baie', 'Faaa', 17, 22, 27, 32);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Salak', 'Baie', 'Mahina', 19, 24, 29, 34);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Durian', 'Baie', 'Mataiea', 21, 26, 31, 36);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Pomelo', 'Agrume', 'Taravao', 23, 28, 33, 38);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Calamondin', 'Agrume', 'Papeete', 25, 30, 35, 40);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Yuzu', 'Agrume', 'Faaa', 27, 32, 37, 42);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Kumquat', 'Agrume', 'Mahina', 29, 34, 39, 44);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Ugni', 'Baie', 'Mataiea', 31, 36, 41, 46);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Feijoa', 'Baie', 'Taravao', 33, 38, 43, 48);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Nèfle', 'Baie', 'Papeete', 35, 40, 45, 50);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Açaï', 'Baie', 'Faaa', 37, 42, 47, 52);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de Goji', 'Baie', 'Mahina', 39, 44, 49, 54);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Physalis', 'Baie', 'Mataiea', 41, 46, 51, 56);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Mûre', 'Baie', 'Taravao', 43, 48, 53, 58);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie d''argousier', 'Baie', 'Papeete', 45, 50, 55, 60);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de sureau', 'Baie', 'Faaa', 47, 52, 57, 62);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de cassis', 'Baie', 'Mahina', 49, 54, 59, 64);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de myrtille', 'Baie', 'Mataiea', 51, 56, 61, 66);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de framboise', 'Baie', 'Taravao', 53, 58, 63, 68);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de groseille', 'Baie', 'Papeete', 55, 60, 65, 70);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de cranberry', 'Baie', 'Faaa', 57, 62, 67, 72);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de goyave', 'Baie', 'Mahina', 59, 64, 69, 74);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de cassis', 'Baie', 'Mataiea', 61, 66, 71, 76);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de mûre', 'Baie', 'Taravao', 63, 68, 73, 78);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de sureau', 'Baie', 'Papeete', 65, 70, 75, 80);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de goji', 'Baie', 'Faaa', 67, 72, 77, 82);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie d''açaï', 'Baie', 'Mahina', 69, 74, 79, 84);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de physalis', 'Baie', 'Mataiea', 71, 76, 81, 86);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de nèfle', 'Baie', 'Taravao', 73, 78, 83, 88);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de feijoa', 'Baie', 'Papeete', 75, 80, 85, 90);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie d''ugni', 'Baie', 'Faaa', 77, 82, 87, 92);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de calamondin', 'Baie', 'Mahina', 79, 84, 89, 94);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de pomelo', 'Baie', 'Mataiea', 81, 86, 91, 96);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de durian', 'Baie', 'Taravao', 83, 88, 93, 98);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de salak', 'Baie', 'Papeete', 85, 90, 95, 100);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de tamarin', 'Baie', 'Faaa', 87, 92, 97, 102);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de corossol', 'Baie', 'Mahina', 89, 94, 99, 104);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de mangoustan', 'Baie', 'Mataiea', 91, 96, 101, 106);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de sapote', 'Baie', 'Taravao', 93, 98, 103, 108);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de carambole', 'Baie', 'Papeete', 95, 100, 105, 110);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de ramboutan', 'Baie', 'Faaa', 97, 102, 107, 112);
INSERT INTO ventes_fruits (nom_fruit, type_fruit, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Baie de longane', 'Baie', 'Mahina', 99, 104, 109, 114);