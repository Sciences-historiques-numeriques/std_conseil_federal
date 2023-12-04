--
-- Fichier généré par SQLiteStudio v3.4.4 sur lun. déc. 4 17:27:35 2023
--
-- Encodage texte utilisé : System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tableau : dicastere
CREATE TABLE IF NOT EXISTS dicastere (pk_dicastere INTEGER PRIMARY KEY, nom TEXT);
INSERT INTO dicastere (pk_dicastere, nom) VALUES (1, 'justice_police');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (2, 'politique');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (3, 'militaire');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (4, 'finances');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (5, 'commerce_peages');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (6, 'postes_travaux_publics');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (7, 'interieur');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (8, 'chemin_fer_commerce');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (9, 'finances_douanes');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (10, 'postes');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (11, 'postes_telegraphe');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (12, 'affaires_etrangeres');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (13, 'commerce_agriculture');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (14, 'commerce_industrie_agriculture');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (15, 'industrie_agriculture');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (16, 'commerce_agriculture');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (17, 'economie_publique');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (18, 'transports_energie');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (19, 'transports_energies_communications');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (20, 'defense_protection_population_sports');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (21, 'environment_trabsports_energie_communication');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (22, 'evonomie_formation_recherche');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (23, 'economie');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (24, 'defenses');
INSERT INTO dicastere (pk_dicastere, nom) VALUES (25, 'poste_chemin_de_fer');

-- Tableau : domaine
CREATE TABLE IF NOT EXISTS domaine (pk_domaine INTEGER PRIMARY KEY, nom TEXT, definition TEXT);
INSERT INTO domaine (pk_domaine, nom, definition) VALUES (1, 'sciences_economique_sociale', NULL);
INSERT INTO domaine (pk_domaine, nom, definition) VALUES (2, 'commerce', NULL);
INSERT INTO domaine (pk_domaine, nom, definition) VALUES (3, 'droit', NULL);
INSERT INTO domaine (pk_domaine, nom, definition) VALUES (4, 'graveur', 'horlogerie');

-- Tableau : exercice
CREATE TABLE IF NOT EXISTS exercice (pk_exercice INTEGER PRIMARY KEY, date_debut NUMERIC, date_fin NUMERIC, fk_fonction INTEGER REFERENCES fonction (pk_fonction) MATCH SIMPLE);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (1, 2006, 2007, 2);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (2, 2008, 2009, 2);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (3, 2012, 2013, 2);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (4, 2000, 2001, 2);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (6, 2000, 2001, 1);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (7, 1993, 1994, 1);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (8, 1974, 1975, 7);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (9, 1984, 1985, 3);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (10, 1988, 1989, 3);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (11, 1887, 1888, 1);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (12, 1881, 1882, 1);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (13, 1875, 1876, 1);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (14, 1850, 1851, 1);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (15, 1895, 1896, 1);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (16, 1902, 1903, 1);
INSERT INTO exercice (pk_exercice, date_debut, date_fin, fk_fonction) VALUES (17, 1887, 1888, 1);

-- Tableau : fonction
CREATE TABLE IF NOT EXISTS fonction (pk_fonction INTEGER PRIMARY KEY, nom TEXT, niveau TEXT);
INSERT INTO fonction (pk_fonction, nom, niveau) VALUES (1, 'présidence_nat', 'national');
INSERT INTO fonction (pk_fonction, nom, niveau) VALUES (2, 'présidence_cant', 'canton');
INSERT INTO fonction (pk_fonction, nom, niveau) VALUES (3, 'vice-presidence_nat', 'national');
INSERT INTO fonction (pk_fonction, nom, niveau) VALUES (4, 'vice_présidence_cant', 'canton');
INSERT INTO fonction (pk_fonction, nom, niveau) VALUES (5, 'secretaire_general_nat', 'national');
INSERT INTO fonction (pk_fonction, nom, niveau) VALUES (6, 'secretaire_general_cant', 'canton');
INSERT INTO fonction (pk_fonction, nom, niveau) VALUES (7, 'presidence_com', 'communal');

-- Tableau : formation
CREATE TABLE IF NOT EXISTS formation (pk_formation INTEGER PRIMARY KEY, date_debut INTEGER, date_fin INTEGER, degre TEXT, fk_personne INTEGER REFERENCES personne (pk_personne) MATCH SIMPLE, fk_domaine INTEGER REFERENCES domaine (pk_domaine) MATCH SIMPLE);
INSERT INTO formation (pk_formation, date_debut, date_fin, degre, fk_personne, fk_domaine) VALUES (1, 1983, 1987, 'master', 1, 1);
INSERT INTO formation (pk_formation, date_debut, date_fin, degre, fk_personne, fk_domaine) VALUES (2, NULL, 1960, 'diplome_professionnel', 2, 2);
INSERT INTO formation (pk_formation, date_debut, date_fin, degre, fk_personne, fk_domaine) VALUES (3, NULL, 1960, 'master', 3, 3);
INSERT INTO formation (pk_formation, date_debut, date_fin, degre, fk_personne, fk_domaine) VALUES (4, 1858, 1859, 'apprentissage', 4, 4);
INSERT INTO formation (pk_formation, date_debut, date_fin, degre, fk_personne, fk_domaine) VALUES (5, 1818, 1820, 'master', 5, 3);
INSERT INTO formation (pk_formation, date_debut, date_fin, degre, fk_personne, fk_domaine) VALUES (6, NULL, 1859, 'doctorat', 6, 3);

-- Tableau : groupe
CREATE TABLE IF NOT EXISTS groupe (pk_groupe INTEGER PRIMARY KEY, definition);
INSERT INTO groupe (pk_groupe, definition) VALUES (1, 'social');
INSERT INTO groupe (pk_groupe, definition) VALUES (2, 'commerce');
INSERT INTO groupe (pk_groupe, definition) VALUES (3, 'relation_internationales');
INSERT INTO groupe (pk_groupe, definition) VALUES (4, 'droit');
INSERT INTO groupe (pk_groupe, definition) VALUES (5, 'enseignement');
INSERT INTO groupe (pk_groupe, definition) VALUES (6, 'journalisme');
INSERT INTO groupe (pk_groupe, definition) VALUES (7, 'horlogerie');

-- Tableau : lieu
CREATE TABLE IF NOT EXISTS lieu (pk_lieu INTEGER PRIMARY KEY, nom TEXT, canton TEXT, langue TEXT);
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (1, 'saint_imier', 'berne', 'FR');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (2, 'kandersteg', 'berne', 'ALL');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (3, 'zurich', 'zurich', 'ALL');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (4, 'la_chaux_de_fonds', 'neuchatel', 'FR');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (5, 'faoug', 'vaud', 'FR');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (6, 'entlebuch', 'lucerne', 'ALL');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (7, 'bern', 'bern', 'ALL');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (8, 'delemont', 'jura', 'FR');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (9, 'zumikon', 'zurich', 'ALL');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (10, 'neuchatel', 'neuchatel', 'FR');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (11, 'lausanne', 'vaud', 'FR');
INSERT INTO lieu (pk_lieu, nom, canton, langue) VALUES (12, 'lucerne', 'lucerne', 'ALL');

-- Tableau : membre
CREATE TABLE IF NOT EXISTS membre (pk_membre PRIMARY KEY, date_debut INTEGER, date_fin INTEGER, fk_organisation INTEGER REFERENCES organisation (pk_organisation) MATCH SIMPLE, fk_personne INTEGER REFERENCES personne (pk_personne) MATCH SIMPLE, fk_exercice INTEGER REFERENCES exercice (pk_exercice) MATCH SIMPLE, fk_lieu INTEGER REFERENCES lieu (pk_lieu) MATCH SIMPLE, fk_dicastere INTEGER REFERENCES dicastere (pk_dicastere) MATCH SIMPLE);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 2023, NULL, 15, 1, NULL, 7, 1);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 2019, 2022, 1, 1, NULL, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 2003, 2015, 4, 1, NULL, 8, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1995, 2002, 3, 1, NULL, 8, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1995, NULL, 6, 1, 4, NULL, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1995, 2000, 15, 2, 6, 7, 24);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1984, 1988, 11, 2, NULL, NULL, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1979, 1987, 2, 2, NULL, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1988, 1995, 15, 2, NULL, 7, 19);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1984, 1989, 15, 3, 10, 7, 1);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1979, 1984, 2, 3, NULL, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1970, 1979, 5, 3, NULL, 9, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1970, 2023, 7, 3, 9, NULL, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1876, 1878, 15, 4, 11, 7, 7);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1879, 1880, 15, 4, NULL, 7, 13);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1881, 1882, 15, 4, 12, 7, 12);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1882, 1886, 15, 4, NULL, 7, 13);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1887, 1892, 15, 4, NULL, 7, 12);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1872, 1876, 1, 4, 13, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1864, 1899, 7, 4, NULL, NULL, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1869, 1871, 3, 4, NULL, 10, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1871, 1876, 4, 4, NULL, 10, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1828, 1831, 3, 5, NULL, 11, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1831, 1848, 4, 5, NULL, 11, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1832, 1834, 16, 5, NULL, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1839, 1841, 16, 5, NULL, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1845, 1847, 16, 5, NULL, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1848, 1849, 15, 5, NULL, 7, 1);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1850, 1851, 15, 5, 14, 7, 2);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1851, 1852, 15, 5, NULL, 7, 4);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1852, 1853, 15, 5, NULL, 7, 1);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1853, 1855, 15, 5, NULL, 7, 4);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1828, 1855, 7, 5, NULL, NULL, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1892, 1901, 15, 6, 15, 7, 25);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1902, 1903, 15, 6, 16, 7, 2);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1903, 1908, 15, 6, NULL, 7, 25);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1872, 1876, 2, 6, NULL, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1881, 1891, 2, 6, 17, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1871, 1872, 1, 6, NULL, 7, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1863, 1891, 3, 6, NULL, 12, NULL);
INSERT INTO membre (pk_membre, date_debut, date_fin, fk_organisation, fk_personne, fk_exercice, fk_lieu, fk_dicastere) VALUES (NULL, 1857, 1908, 8, 6, NULL, NULL, NULL);

-- Tableau : metier
CREATE TABLE IF NOT EXISTS metier (pk_metier INTEGER PRIMARY KEY, nom TEXT, definition TEXT, fk_groupe INTEGER REFERENCES groupe (pk_groupe) MATCH SIMPLE);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (1, 'assistante_sociale', NULL, 1);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (2, 'directrice_HES', 'haute_ecole_travail_social_et_sante', 1);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (3, 'directeur_SSV', 'federation_ski_suisse', 2);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (4, 'directeur_intersport', NULL, 2);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (5, 'conseiller_speciale_sport', 'mandat_ONU', 3);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (6, 'avocat.e', NULL, 4);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (7, 'enseignant', 'école_primaire', 5);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (8, 'redacteur', 'journal_PRD', 6);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (9, 'graveur', NULL, 7);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (10, 'directeur', 'bureau_international_transports', 3);
INSERT INTO metier (pk_metier, nom, definition, fk_groupe) VALUES (12, 'juge', 'tribunal d''appel', 4);

-- Tableau : naissance
CREATE TABLE IF NOT EXISTS naissance (pk_naissance INTEGER PRIMARY KEY, date_de_naissance INTEGER, fk_lieu INTEGER REFERENCES lieu (pk_lieu) MATCH SIMPLE, fk_personne INTEGER REFERENCES personne (pk_personne) MATCH SIMPLE);
INSERT INTO naissance (pk_naissance, date_de_naissance, fk_lieu, fk_personne) VALUES (1, '1963-12-24', 1, 1);
INSERT INTO naissance (pk_naissance, date_de_naissance, fk_lieu, fk_personne) VALUES (2, '1942-07-18', 2, 2);
INSERT INTO naissance (pk_naissance, date_de_naissance, fk_lieu, fk_personne) VALUES (3, '1936-12-16', 3, 3);
INSERT INTO naissance (pk_naissance, date_de_naissance, fk_lieu, fk_personne) VALUES (4, '1844-01-27', 4, 4);
INSERT INTO naissance (pk_naissance, date_de_naissance, fk_lieu, fk_personne) VALUES (5, '1799-04-12', 5, 5);
INSERT INTO naissance (pk_naissance, date_de_naissance, fk_lieu, fk_personne) VALUES (6, '1834-09-02', 6, 6);

-- Tableau : occupation
CREATE TABLE IF NOT EXISTS occupation (pk_occupation INTEGER PRIMARY KEY, date_debut INTEGER, date_fin INTEGER, fk_metier INTEGER REFERENCES metier (pk_metier) MATCH SIMPLE, fk_personne INTEGER REFERENCES personne (pk_personne) MATCH SIMPLE);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (1, 1988, 2001, 1, 1);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (2, 2015, 2019, 2, 1);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (3, 1975, 1981, 3, 2);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (4, 1981, 1987, 4, 2);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (5, 2001, 2007, 5, 2);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (6, 1960, 1963, 6, 3);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (7, 1989, NULL, 6, 3);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (8, 1859, 1862, 9, 4);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (9, 1862, 1864, 7, 4);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (10, 1864, 1871, 8, 4);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (11, 1892, 1899, 10, 4);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (12, 1830, 1831, 12, 5);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (13, 1828, 1830, 6, 5);
INSERT INTO occupation (pk_occupation, date_debut, date_fin, fk_metier, fk_personne) VALUES (14, 1859, NULL, 6, 6);

-- Tableau : organisation
CREATE TABLE IF NOT EXISTS organisation (pk_organisation INTEGER PRIMARY KEY, nom TEXT, definition TEXT, niveau_politique TEXT, fk_lieu INTEGER REFERENCES lieu (pk_lieu) MATCH SIMPLE);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (1, 'conseil_des_etats', 'legislatif', 'national', 7);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (2, 'conseil_national', 'legislatif', 'national', 7);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (3, 'parlement_cantonal', 'legislatif', 'cantonal', NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (4, 'conseil_etat', 'executif', 'cantonal', NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (5, 'conseil_communal', 'executif', 'communal', NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (6, 'PS', 'parti_politique', NULL, NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (7, 'PRD', 'parti_politique', NULL, NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (8, 'LC', 'parti_politique', NULL, NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (9, 'PLS', 'parti_politique', NULL, NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (10, 'PAI', 'parti_politique', NULL, NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (11, 'UDC', 'parti_politique', NULL, NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (12, 'PLR', 'parti_politique', NULL, NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (13, 'PBD', 'parti_politique', NULL, NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (14, 'parlement_communal', 'legislatif', 'communal', NULL);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (15, 'conseil_federal', 'executif', 'national', 7);
INSERT INTO organisation (pk_organisation, nom, definition, niveau_politique, fk_lieu) VALUES (16, 'diete', 'legislatif_avant_1848', 'national', 7);

-- Tableau : personne
CREATE TABLE IF NOT EXISTS personne (pk_personne INTEGER PRIMARY KEY, nom TEXT, prenom TEXT, "canton_d'origine" TEXT, sexe TEXT, date_de_mort TEXT);
INSERT INTO personne (pk_personne, nom, prenom, "canton_d'origine", sexe, date_de_mort) VALUES (1, 'baume_schneider', 'elisabeth', 'jura', 'F', NULL);
INSERT INTO personne (pk_personne, nom, prenom, "canton_d'origine", sexe, date_de_mort) VALUES (2, 'ogi', 'adolf', 'bern', 'M', NULL);
INSERT INTO personne (pk_personne, nom, prenom, "canton_d'origine", sexe, date_de_mort) VALUES (3, 'kopp', 'elisabeth', 'zurich', 'F', '07.04.2023');
INSERT INTO personne (pk_personne, nom, prenom, "canton_d'origine", sexe, date_de_mort) VALUES (4, 'droz', 'numa', 'neuchatel', 'M', '13.12.1899');
INSERT INTO personne (pk_personne, nom, prenom, "canton_d'origine", sexe, date_de_mort) VALUES (5, 'druey', 'daniel_henri', 'vaud', 'M', '29.03.1855');
INSERT INTO personne (pk_personne, nom, prenom, "canton_d'origine", sexe, date_de_mort) VALUES (6, 'zemp', 'joseph', 'lucerne', 'M', '08.12.1908');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
