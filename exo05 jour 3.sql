exo05 jour 3 : 

1 :

UPDATE cours 
SET nom_cours = CONCAT(nom_cours, ' (débutant)') 
WHERE nom_cours LIKE '%Code%';

J'ai mis code car je n'ai pas nommé de cours avec SQL dans le nom.

2 : 

UPDATE etudiants 
SET email = 'nouveau.email@example.com' 
WHERE id_etudiant = 2;