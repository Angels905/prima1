/*
  Warnings:

  - You are about to drop the column `catalogueId` on the `livre` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `livre` DROP FOREIGN KEY `Livre_catalogueId_fkey`;

-- AlterTable
ALTER TABLE `livre` DROP COLUMN `catalogueId`;

-- CreateTable
CREATE TABLE `livre_catalogue` (
    `id_l_c` INTEGER NOT NULL,
    `catalogueId` INTEGER NULL,
    `livreId` INTEGER NULL,

    PRIMARY KEY (`id_l_c`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
