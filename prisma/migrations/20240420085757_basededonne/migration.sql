-- CreateTable
CREATE TABLE `Livre` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom_livre` VARCHAR(191) NOT NULL,
    `nom_auteur` VARCHAR(191) NOT NULL,
    `date_de_sortier` DATETIME(3) NOT NULL,
    `updatedAt` DATETIME(3) NOT NULL,
    `catalogueId` INTEGER NULL,

    PRIMARY KEY (`id`)
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
CREATE TABLE `Compte` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAl` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Etudiant` (
    `nom` VARCHAR(191) NOT NULL,
    `prenom` VARCHAR(191) NULL,
    `password` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `active` BOOLEAN NOT NULL DEFAULT false,
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `compteId` INTEGER NULL,

    UNIQUE INDEX `Etudiant_nom_key`(`nom`),
    UNIQUE INDEX `Etudiant_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Administrateur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(191) NOT NULL,
    `prenom` VARCHAR(191) NULL,
    `password` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `active` BOOLEAN NOT NULL DEFAULT false,
    `compteId` INTEGER NULL,

    UNIQUE INDEX `Administrateur_nom_key`(`nom`),
    UNIQUE INDEX `Administrateur_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Visiteur` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(191) NOT NULL,
    `prenom` VARCHAR(191) NULL,
    `password` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `active` BOOLEAN NOT NULL DEFAULT false,
    `compteId` INTEGER NULL,

    UNIQUE INDEX `Visiteur_nom_key`(`nom`),
    UNIQUE INDEX `Visiteur_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Livre` ADD CONSTRAINT `Livre_catalogueId_fkey` FOREIGN KEY (`catalogueId`) REFERENCES `Catalogue`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Etudiant` ADD CONSTRAINT `Etudiant_compteId_fkey` FOREIGN KEY (`compteId`) REFERENCES `Compte`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Administrateur` ADD CONSTRAINT `Administrateur_compteId_fkey` FOREIGN KEY (`compteId`) REFERENCES `Compte`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Visiteur` ADD CONSTRAINT `Visiteur_compteId_fkey` FOREIGN KEY (`compteId`) REFERENCES `Compte`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
