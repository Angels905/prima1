/*
  Warnings:

  - You are about to drop the column `livreId` on the `auteur` table. All the data in the column will be lost.
  - You are about to drop the column `nom_auteur` on the `auteur` table. All the data in the column will be lost.
  - Added the required column `nom_auteurs` to the `Auteur` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `auteur` DROP FOREIGN KEY `Auteur_livreId_fkey`;

-- AlterTable
ALTER TABLE `auteur` DROP COLUMN `livreId`,
    DROP COLUMN `nom_auteur`,
    ADD COLUMN `nom_auteurs` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `livre` ADD COLUMN `auteurId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `Livre` ADD CONSTRAINT `Livre_auteurId_fkey` FOREIGN KEY (`auteurId`) REFERENCES `Auteur`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
