ex04 jour 3 : 

1. Auto-increment et doublons :

J'ai essayé avec :

INSERT INTO etudiants (nom, prenom, email) 
VALUES ('Dupont', 'Martin', 'martindupont@email.fr');

Ce sont les données d'un étudiant déjà existant à l'identique mais ça a quand même fonctionné.

Après des recherches sur ce site :https://www.ibm.com/docs/fr/db2/11.1?topic=constraints-creating-modifying, je pense que c'est parce que je n'ai pas ajouté de contrainte d'unicité sur le champ email lors de sa création ni même après d'ailleurs, j'ai essayé d'en ajouter une avec :

ALTER TABLE etudiants ADD CONSTRAINT UNIQUE (email); 

En erreur sql afiche affectivement "#1062 - Duplicata du champ 'martindupont@email.fr' pour la clef 'etudiants.email'" qui correspond à l'email identique mais il s'agit d'un message d'erreur.


2. Insertion avec clé étrangère : 

j'ai essayé avec 

INSERT INTO inscriptions (id_etudiant, id_cours) 
VALUES (1, 999);

INSERT INTO inscriptions (id_etudiant, id_cours) 
VALUES (777, 1);

Je n'ai pas eu de message d'erreur, sûrement parce que je n'ai pas mis de contraintes de clés étrangères dans la table inscriptions.

