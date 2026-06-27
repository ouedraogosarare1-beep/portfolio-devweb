-- ============================================
-- Base de données : Gestionnaire de Portfolio
-- ============================================

CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

-- ============================================
-- Table : admin
-- Contient le(s) compte(s) administrateur
-- ============================================
CREATE TABLE IF NOT EXISTS admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_utilisateur VARCHAR(50) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL
);

-- Compte admin par défaut
-- nom_utilisateur : admin
-- mot_de_passe    : admin123
-- (le mot de passe est haché avec password_hash() de PHP, voir explication plus bas)
INSERT INTO admin (nom_utilisateur, mot_de_passe) VALUES
('admin', '$2y$10$92IXUNpkjO0rOQ5byMi.YeGgYL7ZuOpkvSKHfjvbpqqV5fIaELjxK');
-- Ce hash correspond au mot de passe "admin123"

-- ============================================
-- Table : projets
-- Contient tous les projets du portfolio
-- ============================================
CREATE TABLE IF NOT EXISTS projets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(150) NOT NULL,
    description TEXT NOT NULL,
    technologies VARCHAR(255) NOT NULL,
    competences TEXT NOT NULL,
    image VARCHAR(255) DEFAULT 'default.png',
    date_ajout DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Quelques projets de test (optionnel, pour avoir des données dès le départ)
INSERT INTO projets (libelle, description, technologies, competences, image) VALUES
('Site E-commerce', 'Une boutique en ligne simple avec panier et paiement.', 'PHP, MySQL, HTML, CSS', 'Gestion de panier, sécurisation des formulaires', 'default.png'),
('Application Météo', 'Application affichant la météo en temps réel via une API.', 'JavaScript, HTML, CSS', 'Consommation d API, manipulation du DOM', 'default.png'),
('Calculatrice Python', 'Calculatrice simple en ligne de commande.', 'Python', 'Logique algorithmique, structures conditionnelles', 'default.png');
