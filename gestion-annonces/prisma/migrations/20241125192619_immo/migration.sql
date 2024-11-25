/*
  Warnings:

  - You are about to drop the column `fistname` on the `Employees` table. All the data in the column will be lost.
  - Added the required column `firstname` to the `Employees` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Employees` DROP COLUMN `fistname`,
    ADD COLUMN `firstname` VARCHAR(191) NOT NULL;
