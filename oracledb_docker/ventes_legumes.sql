CREATE TABLE ventes_legumes (
  id NUMBER GENERATED ALWAYS AS IDENTITY,
  nom_legume VARCHAR2(50),
  type_legume VARCHAR2(50),
  ville VARCHAR2(50),
  vente_q1 NUMBER,
  vente_q2 NUMBER,
  vente_q3 NUMBER,
  vente_q4 NUMBER,
  CONSTRAINT pk_ventes_legumes PRIMARY KEY (id)
);

INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Papeete', 56, 119, 99, 104);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Papeete', 200, 164, 127, 150);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Faaa', 76, 62, 71, 190);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Mataiea', 75, 92, 79, 156);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Mahina', 113, 136, 97, 77);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Papeete', 127, 85, 108, 155);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Faaa', 104, 115, 111, 187);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mahina', 191, 64, 130, 98);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Faaa', 159, 50, 176, 50);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Faaa', 55, 168, 197, 58);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mataiea', 159, 129, 184, 140);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Papeete', 154, 138, 122, 123);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Taravao', 189, 155, 182, 154);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Taravao', 51, 120, 103, 152);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Papeete', 177, 80, 98, 173);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mahina', 156, 192, 168, 116);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Mataiea', 56, 153, 104, 138);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Taravao', 133, 78, 171, 135);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Taravao', 137, 98, 53, 130);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Taravao', 162, 147, 154, 151);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Taravao', 68, 156, 186, 81);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Papeete', 152, 83, 176, 187);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mataiea', 58, 115, 79, 172);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mahina', 96, 78, 57, 60);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Faaa', 188, 95, 151, 97);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mahina', 98, 66, 200, 126);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mataiea', 77, 149, 103, 194);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mahina', 182, 150, 139, 138);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Faaa', 192, 88, 120, 151);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Papeete', 59, 116, 155, 137);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mahina', 165, 113, 141, 176);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Papeete', 111, 139, 181, 65);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Taravao', 198, 61, 125, 54);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Faaa', 63, 183, 80, 62);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Taravao', 169, 140, 141, 107);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mahina', 128, 122, 155, 112);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mataiea', 180, 128, 66, 89);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Taravao', 121, 106, 125, 59);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Taravao', 125, 150, 87, 102);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Faaa', 63, 103, 170, 155);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Papeete', 110, 156, 181, 58);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Faaa', 164, 94, 172, 149);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Faaa', 164, 127, 113, 72);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Taravao', 111, 65, 118, 96);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Taravao', 151, 167, 172, 192);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Taravao', 104, 68, 184, 107);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Taravao', 147, 163, 198, 122);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mataiea', 68, 98, 172, 51);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Papeete', 58, 97, 113, 87);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mahina', 116, 110, 64, 60);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Faaa', 88, 99, 158, 91);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Taravao', 155, 103, 164, 151);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Papeete', 190, 53, 130, 176);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Papeete', 72, 89, 117, 156);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Papeete', 178, 151, 137, 146);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Taravao', 97, 181, 76, 187);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Mataiea', 120, 103, 110, 156);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Taravao', 173, 193, 127, 181);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Papeete', 79, 146, 146, 156);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Taravao', 197, 129, 110, 180);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Faaa', 164, 103, 57, 116);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Mataiea', 58, 151, 142, 69);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Taravao', 179, 55, 176, 93);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mataiea', 194, 63, 134, 191);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Taravao', 67, 117, 94, 101);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Mataiea', 83, 70, 126, 161);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Taravao', 71, 141, 120, 60);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Taravao', 52, 117, 183, 126);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mahina', 63, 200, 171, 67);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mataiea', 153, 159, 119, 91);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mahina', 84, 50, 166, 83);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Mataiea', 54, 179, 190, 96);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mahina', 75, 113, 68, 85);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Papeete', 128, 182, 105, 136);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Mataiea', 56, 100, 147, 178);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mataiea', 55, 187, 164, 65);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Faaa', 58, 95, 195, 198);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Faaa', 150, 101, 200, 110);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Mahina', 142, 93, 58, 186);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Mahina', 180, 74, 121, 125);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mataiea', 85, 123, 129, 56);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Taravao', 111, 122, 81, 76);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Mataiea', 166, 170, 121, 78);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Faaa', 103, 183, 123, 182);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Mataiea', 122, 186, 132, 155);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Mahina', 138, 188, 53, 155);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Mataiea', 124, 66, 73, 131);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Faaa', 53, 57, 62, 103);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Papeete', 181, 159, 145, 197);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Papeete', 100, 193, 74, 137);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Faaa', 144, 145, 195, 141);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Mahina', 198, 119, 56, 137);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Carotte', 'Racine', 'Faaa', 85, 194, 186, 95);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Chou', 'Crucifère', 'Mahina', 76, 165, 76, 89);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Faaa', 96, 199, 92, 76);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mahina', 50, 87, 104, 112);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Mahina', 158, 73, 123, 51);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Patate douce', 'Tubercule', 'Mataiea', 194, 134, 171, 55);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Taro', 'Tubercule', 'Faaa', 78, 106, 125, 90);
INSERT INTO ventes_legumes (nom_legume, type_legume, ville, vente_q1, vente_q2, vente_q3, vente_q4) VALUES ('Courgette', 'Cucurbitacée', 'Taravao', 193, 161, 190, 147);
