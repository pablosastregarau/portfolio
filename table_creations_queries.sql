CREATE OR REPLACE TABLE clients_crm (
    client_id INT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telephone VARCHAR(20),
    date_inscription DATE NOT NULL,
    statut_client VARCHAR(50),
    source_acquisition VARCHAR(50),
    date_dernier_contact DATE,
    notes TEXT
);

INSERT INTO clients_crm (
    client_id, nom, prenom, email, telephone, date_inscription,
    statut_client, source_acquisition, date_dernier_contact, notes
)
VALUES
(1, 'Dupont', 'Marie', 'marie.dupont@example.com', '0601020304', '2024-01-15', 'actif', 'site web', '2024-06-10', 'Client fidèle'),
(2, 'Lemoine', 'Paul', 'paul.lemoine@example.com', '0605060708', '2023-11-20', 'inactif', 'salon', NULL, 'À relancer'),
(3, 'Nguyen', 'Linh', 'linh.nguyen@example.com', '0678901234', '2025-02-05', 'prospect', 'bouche-à-oreille', NULL, ''),
(4, 'Moreau', 'Lucas', 'lucas.moreau@example.com', '0611223344', '2024-07-01', 'actif', 'réseaux sociaux', '2024-07-01', 'Premier achat effectué'),
(5, 'Martin', 'Claire', 'claire.martin@example.com', '0699887766', '2023-09-12', 'actif', 'site web', '2024-03-22', 'Demande d’information sur produits premium');

SELECT * FROM clients_crm;