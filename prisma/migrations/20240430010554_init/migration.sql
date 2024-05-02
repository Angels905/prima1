/*
  Warnings:

  - You are about to drop the column `nom_auteur` on the `livre` table. All the data in the column will be lost.
  - You are about to drop the column `catalogueId` on the `livre_catalogue` table. All the data in the column will be lost.
  - You are about to drop the column `livreId` on the `livre_catalogue` table. All the data in the column will be lost.
  - You are about to drop the column `livreId` on the `livre_compte` table. All the data in the column will be lost.
  - You are about to drop the column `livreId` on the `telechargement` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `auteur` ADD COLUMN `bio_Auteur` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `livre` DROP COLUMN `nom_auteur`,
    ADD COLUMN `auteurId` INTEGER NULL;

-- AlterTable
ALTER TABLE `livre_catalogue` DROP COLUMN `catalogueId`,
    DROP COLUMN `livreId`,
    ADD COLUMN `CatalogueId` INTEGER NULL,
    ADD COLUMN `LivreId` INTEGER NULL;

-- AlterTable
ALTER TABLE `livre_compte` DROP COLUMN `livreId`,
    ADD COLUMN `LivreId` INTEGER NULL;

-- AlterTable
ALTER TABLE `telechargement` DROP COLUMN `livreId`,
    ADD COLUMN `LivreId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `Livre` ADD CONSTRAINT `Livre_auteurId_fkey` FOREIGN KEY (`auteurId`) REFERENCES `Auteur`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
