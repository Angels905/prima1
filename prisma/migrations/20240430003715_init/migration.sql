-- AlterTable
ALTER TABLE `livre` ADD COLUMN `AuteurId` INTEGER NULL;

-- CreateTable
CREATE TABLE `Auteur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom_auteur` VARCHAR(191) NOT NULL,
    `bio_auteur` VARCHAR(191) NOT NULL,

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
