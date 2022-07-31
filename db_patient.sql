-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 31 juil. 2022 à 19:48
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_patient`
--

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `id` int(11) NOT NULL,
  `age_medecin` int(11) DEFAULT NULL,
  `nom_medecin` varchar(255) DEFAULT NULL,
  `prenom_medecin` varchar(255) DEFAULT NULL,
  `sexe_medecin` varchar(255) DEFAULT NULL,
  `adresse_medecin` varchar(255) DEFAULT NULL,
  `email_medecin` varchar(255) DEFAULT NULL,
  `telephone_medecin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id`, `age_medecin`, `nom_medecin`, `prenom_medecin`, `sexe_medecin`, `adresse_medecin`, `email_medecin`, `telephone_medecin`) VALUES
(1, 123, 'absa ', 'fall', 'feminin', 'tivaouane', 'absa@gmail.com', 22772727),
(2, NULL, 'abbsa ', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL,
  `age_patient` int(11) DEFAULT NULL,
  `nom_patient` varchar(255) DEFAULT NULL,
  `prenom_patient` varchar(255) DEFAULT NULL,
  `sexe_patient` varchar(255) DEFAULT NULL,
  `adresse_patient` varchar(255) DEFAULT NULL,
  `email_patient` varchar(255) DEFAULT NULL,
  `telephone_patient` int(11) DEFAULT NULL,
  `nom_complet_patient` varchar(255) DEFAULT NULL,
  `numero_identifiant_unique` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `secretaire`
--

CREATE TABLE `secretaire` (
  `id` bigint(20) NOT NULL,
  `age_secretaire` int(11) DEFAULT NULL,
  `nom_secretaire` varchar(255) DEFAULT NULL,
  `prenom_secretaire` varchar(255) DEFAULT NULL,
  `sexe_secretaire` varchar(255) DEFAULT NULL,
  `adresse_secretaire` varchar(255) DEFAULT NULL,
  `telephone_secretaire` int(11) DEFAULT NULL,
  `email_secretaire` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `secretaire`
--
ALTER TABLE `secretaire`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `secretaire`
--
ALTER TABLE `secretaire`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
