-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : sam. 30 nov. 2024 à 08:14
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `immo`
--

-- --------------------------------------------------------

--
-- Structure de la table `Announcements`
--

CREATE TABLE `Announcements` (
  `id_announcement` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `employeeId` int(11) NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Announcements`
--

INSERT INTO `Announcements` (`id_announcement`, `title`, `description`, `type`, `address`, `price`, `employeeId`, `state`, `createdAt`, `updatedAt`) VALUES
(1, 'Superbe Loft', 'Loft spacieux avec vue imprenable.', 'Loft', 'Paris 75001', 12000, 1, 'active', '2024-11-26 14:26:15.110', '2024-11-26 14:26:15.110'),
(4, 'Penthouse Écologique à Paris', 'Penthouse de luxe en plein cœur de Paris, avec des équipements éco-responsables et une vue imprenable.', 'Location', '14 Rue de la Paix, Paris, France', 15000, 1, 'active', '2024-11-28 18:33:46.623', '2024-11-28 18:33:46.623'),
(5, 'Villa de Luxe en Corse', 'Villa isolée de luxe avec piscine à débordement, surplombant la mer Méditerranée.', 'Location', 'Île de Corse, France', 20000, 1, 'active', '2024-11-28 18:34:09.062', '2024-11-28 18:34:09.062'),
(6, 'Appartement Luxe à Monaco', 'Appartement de prestige de 3 chambres avec vue sur le port et la mer, idéal pour un style de vie raffiné.', 'Location', '15 Boulevard de Monto Carlo, Monaco', 18000, 1, 'active', '2024-11-28 18:34:12.147', '2024-11-28 18:34:12.147'),
(7, 'Loft Ultra Moderne à Paris', 'Loft moderne, très lumineux, de 3 chambres avec équipements de luxe et terrasse panoramique.', 'Location', '28 Rue de Rivoli, Paris, France', 18000, 1, 'active', '2024-11-28 18:34:22.200', '2024-11-28 18:34:22.200'),
(8, 'Maison Moderne à Saint-Tropez', 'Maison de design moderne avec 5 chambres et un jardin paysager à Saint-Tropez.', 'Location', 'Quartier des Parcs, Saint-Tropez, France', 25000, 1, 'active', '2024-11-28 18:34:29.950', '2024-11-28 18:34:29.950'),
(9, 'Domaine Privé à Nice', 'Domaine privé avec 10 chambres, piscine intérieure, et spa, à quelques minutes de la plage.', 'Location', 'Route de la Côte d\'Azur, Nice, France', 30000, 1, 'active', '2024-11-28 18:34:38.002', '2024-11-28 18:34:38.002'),
(10, 'Appartement Parisien avec Vue Tour Eiffel', 'Magnifique appartement de luxe avec vue sur la Tour Eiffel, situé dans le quartier chic de Paris.', 'Location', '6 Rue de Monttessuy, Paris, France', 22000, 1, 'active', '2024-11-28 18:34:46.322', '2024-11-28 18:34:46.322'),
(11, 'Villa de Luxe à Cannes', 'Villa luxueuse avec vue panoramique sur la mer, grande piscine, et 6 chambres, à Cannes.', 'Location', 'Avenue des Alpes, Cannes, France', 35000, 1, 'active', '2024-11-28 18:34:56.984', '2024-11-28 18:34:56.984'),
(12, 'qwerty', 'zsdxfgvb n', 'manoir', '12 fgghdskfhjk', 23456, 1, 'active', '2024-11-29 10:08:00.145', '2024-11-29 10:08:00.145'),
(13, 'Manoir ', '12 000 metres', 'MAnoir', '12 avenue de qwerty', 3000000, 1, 'active', '2024-11-29 14:16:46.106', '2024-11-29 14:16:46.106');

-- --------------------------------------------------------

--
-- Structure de la table `Employees`
--

CREATE TABLE `Employees` (
  `id_employee` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Employees`
--

INSERT INTO `Employees` (`id_employee`, `name`, `pseudo`, `password`, `role`, `firstname`) VALUES
(1, 'Doe', 'johndoe123', 'StrongPassword123!', 'Admin', 'John');

-- --------------------------------------------------------

--
-- Structure de la table `Research`
--

CREATE TABLE `Research` (
  `id_research` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` double NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `Research`
--

INSERT INTO `Research` (`id_research`, `type`, `budget`, `location`, `employeeId`) VALUES
(1, 'Loft', 2000000, 'Paris', 1);

-- --------------------------------------------------------

--
-- Structure de la table `Services`
--

CREATE TABLE `Services` (
  `id_service` int(11) NOT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` double NOT NULL,
  `announcementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('4b88db97-4ccc-4bae-8c40-011dfae9ed0a', '3d2a9a2b7f3bbd2707b2b11b13f25a53b6317ad2b69df7c124ac6a223cab468f', '2024-11-25 19:26:19.684', '20241125192619_immo', NULL, NULL, '2024-11-25 19:26:19.670', 1),
('738aacef-1d95-437e-90c4-ea01717f47fd', '018cfb551002120a5e44f7618420aa62a9a6686c7890a15a217d6d959c9eaa8d', '2024-11-25 19:11:35.668', '20241125191135_immo', NULL, NULL, '2024-11-25 19:11:35.593', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Announcements`
--
ALTER TABLE `Announcements`
  ADD PRIMARY KEY (`id_announcement`),
  ADD KEY `Announcements_employeeId_fkey` (`employeeId`);

--
-- Index pour la table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`id_employee`);

--
-- Index pour la table `Research`
--
ALTER TABLE `Research`
  ADD PRIMARY KEY (`id_research`),
  ADD KEY `Research_employeeId_fkey` (`employeeId`);

--
-- Index pour la table `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `Services_announcementId_fkey` (`announcementId`);

--
-- Index pour la table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Announcements`
--
ALTER TABLE `Announcements`
  MODIFY `id_announcement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Research`
--
ALTER TABLE `Research`
  MODIFY `id_research` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Services`
--
ALTER TABLE `Services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Announcements`
--
ALTER TABLE `Announcements`
  ADD CONSTRAINT `Announcements_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `Employees` (`id_employee`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `Research`
--
ALTER TABLE `Research`
  ADD CONSTRAINT `Research_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `Employees` (`id_employee`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `Services`
--
ALTER TABLE `Services`
  ADD CONSTRAINT `Services_announcementId_fkey` FOREIGN KEY (`announcementId`) REFERENCES `Announcements` (`id_announcement`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
