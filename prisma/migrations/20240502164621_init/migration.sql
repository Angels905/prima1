/*
  Warnings:

  - You are about to drop the column `auteurId` on the `livre` table. All the data in the column will be lost.
  - You are about to drop the column `CatalogueId` on the `livre_catalogue` table. All the data in the column will be lost.
  - You are about to drop the column `LivreId` on the `livre_catalogue` table. All the data in the column will be lost.
  - You are about to drop the column `CompteId` on the `livre_compte` table. All the data in the column will be lost.
  - You are about to drop the column `CompteId` on the `telechargement` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `livre` DROP FOREIGN KEY `Livre_auteurId_fkey`;

-- AlterTable
ALTER TABLE `auteur` ADD COLUMN `livreId` INTEGER NULL;

-- AlterTable
ALTER TABLE `livre` DROP COLUMN `auteurId`;

-- AlterTable
ALTER TABLE `livre_catalogue` DROP COLUMN `CatalogueId`,
    DROP COLUMN `LivreId`,
    ADD COLUMN `catalogueId` INTEGER NULL,
    ADD COLUMN `livreId` INTEGER NULL;

-- AlterTable
ALTER TABLE `livre_compte` DROP COLUMN `CompteId`,
    ADD COLUMN `compteId` INTEGER NULL;

-- AlterTable
ALTER TABLE `telechargement` DROP COLUMN `CompteId`,
    ADD COLUMN `compteId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `Auteur` ADD CONSTRAINT `Auteur_livreId_fkey` FOREIGN KEY (`livreId`) REFERENCES `Livre`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `livre_catalogue` ADD CONSTRAINT `livre_catalogue_catalogueId_fkey` FOREIGN KEY (`catalogueId`) REFERENCES `Catalogue`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `livre_catalogue` ADD CONSTRAINT `livre_catalogue_livreId_fkey` FOREIGN KEY (`livreId`) REFERENCES `Livre`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `livre_compte` ADD CONSTRAINT `livre_compte_compteId_fkey` FOREIGN KEY (`compteId`) REFERENCES `Compte`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `livre_compte` ADD CONSTRAINT `livre_compte_livreId_fkey` FOREIGN KEY (`livreId`) REFERENCES `Livre`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Telechargement` ADD CONSTRAINT `Telechargement_livreId_fkey` FOREIGN KEY (`livreId`) REFERENCES `Livre`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Telechargement` ADD CONSTRAINT `Telechargement_compteId_fkey` FOREIGN KEY (`compteId`) REFERENCES `Compte`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
