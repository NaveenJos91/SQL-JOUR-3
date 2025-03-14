ex02 jour 3 :

je me suis aidé de ce site : 
https://learnsql.fr/blog/sql-inner-join-explique-en-mots-simples/
https://learnsql.fr/blog/9-exemples-pratiques-de-sql-left-join/
https://learnsql.fr/blog/qu-est-ce-que-le-cross-join-en-sql/

1. INNER JOIN : 

SELECT etudiants.nom, etudiants.prenom, cours.nom_cours FROM etudiants
INNER JOIN inscriptions ON etudiants.id_etudiant = inscriptions.id_etudiant
INNER JOIN cours ON inscriptions.id_cours = cours.id_cours;

2. LEFT JOIN :

SELECT cours.nom_cours, etudiants.nom, etudiants.prenom FROM cours
LEFT JOIN inscriptions ON cours.id_cours = inscriptions.id_cours
LEFT JOIN etudiants ON inscriptions.id_etudiant = etudiants.id_etudiant;

3. CROSS JOIN :

SELECT etudiants.nom, etudiants.prenom, cours.nom_cours FROM etudiants
CROSS JOIN cours;

