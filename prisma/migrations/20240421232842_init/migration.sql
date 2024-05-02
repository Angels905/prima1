/*
  Warnings:

  - You are about to drop the column `createdAl` on the `compte` table. All the data in the column will be lost.
  - You are about to drop the `administrateur` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `etudiant` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `visiteur` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[nom]` on the table `Compte` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[email]` on the table `Compte` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `Admin` to the `Compte` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Etudiant` to the `Compte` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Visiteur` to the `Compte` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `Compte` table without a default value. This is not possible if the table is not empty.
  - Added the required column `mot_de_passe` to the `Compte` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nom` to the `Compte` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Favorie` to the `Livre` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `administrateur` DROP FOREIGN KEY `Administrateur_compteId_fkey`;

-- DropForeignKey
ALTER TABLE `etudiant` DROP FOREIGN KEY `Etudiant_compteId_fkey`;

-- DropForeignKey
ALTER TABLE `visiteur` DROP FOREIGN KEY `Visiteur_compteId_fkey`;

-- AlterTable
ALTER TABLE `compte` DROP COLUMN `createdAl`,
    ADD COLUMN `Admin` BOOLEAN NOT NULL,
    ADD COLUMN `Etudiant` BOOLEAN NOT NULL,
    ADD COLUMN `Visiteur` BOOLEAN NOT NULL,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `email` VARCHAR(191) NOT NULL,
    ADD COLUMN `mot_de_passe` VARCHAR(191) NOT NULL,
    ADD COLUMN `nom` VARCHAR(191) NOT NULL,
    ADD COLUMN `prenom` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `livre` ADD COLUMN `Favorie` BOOLEAN NOT NULL;

-- DropTable
DROP TABLE `administrateur`;

-- DropTable
DROP TABLE `etudiant`;

-- DropTable
DROP TABLE `visiteur`;

-- CreateIndex
CREATE UNIQUE INDEX `Compte_nom_key` ON `Compte`(`nom`);

-- CreateIndex
CREATE UNIQUE INDEX `Compte_email_key` ON `Compte`(`email`);
