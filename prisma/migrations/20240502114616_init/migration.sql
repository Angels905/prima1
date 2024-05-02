-- CreateTable
CREATE TABLE `Livre` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom_livre` VARCHAR(191) NOT NULL,
    `nom_auteurs` VARCHAR(191) NOT NULL,
    `date_de_sortier` DATETIME(3) NOT NULL,
    `Favorie` BOOLEAN NOT NULL,
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Auteur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom_auteur` VARCHAR(191) NOT NULL,
    `bio_auteur` VARCHAR(191) NOT NULL,
    `livreId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `livre_catalogue` (
    `id_` INTEGER NOT NULL AUTO_INCREMENT,
    `CatalogueId` INTEGER NULL,
    `LivreId` INTEGER NULL,

    PRIMARY KEY (`id_`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Catalogue` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom_catalogue` VARCHAR(191) NOT NULL,
    `nombre_de_livre` INTEGER NOT NULL,

    UNIQUE INDEX `Catalogue_nom_catalogue_key`(`nom_catalogue`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `livre_compte` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `CompteId` INTEGER NULL,
    `livreId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Telechargement` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `livreId` INTEGER NULL,
    `CompteId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Compte` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,
    `nom` VARCHAR(191) NOT NULL,
    `prenom` VARCHAR(191) NULL,
    `email` VARCHAR(191) NOT NULL,
    `mot_de_passe` VARCHAR(191) NOT NULL,
    `Etudiant` BOOLEAN NOT NULL,
    `Visiteur` BOOLEAN NOT NULL,
    `Admin` BOOLEAN NOT NULL,

    UNIQUE INDEX `Compte_nom_key`(`nom`),
    UNIQUE INDEX `Compte_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Abonnement` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `CompteId` INTEGER NULL,
    `PackageId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Package` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `package_Argent` BOOLEAN NOT NULL,
    `package_bronse` BOOLEAN NOT NULL,
    `package_or` BOOLEAN NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Auteur` ADD CONSTRAINT `Auteur_livreId_fkey` FOREIGN KEY (`livreId`) REFERENCES `Livre`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
