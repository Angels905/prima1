/*
  Warnings:

  - You are about to drop the column `createdAt` on the `compte` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `compte` DROP COLUMN `createdAt`,
    MODIFY `Etudiant` BOOLEAN NOT NULL DEFAULT false,
    MODIFY `Visiteur` BOOLEAN NOT NULL DEFAULT true,
    MODIFY `Admin` BOOLEAN NOT NULL DEFAULT false;
