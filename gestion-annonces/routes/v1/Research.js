import express from "express";
import { PrismaClient } from "@prisma/client";

import ResearchValidator from "../../validators/ResearchValidator.js";

const router = express.Router();

const prisma = new PrismaClient();

const validateResearch = (req, res, next) => {
    try {
      ResearchValidator.parse(req.body);
      next();
    } catch (error) {
      res.status(400).json({ error: error.errors });
    }
  };
  
  // Créer une recherche
  router.post("/", validateResearch, async (req, res) => {
    const { type, budget, location, employeeId } = req.body;
    try {
      const newResearch = await prisma.research.create({
        data: {
          type,
          budget,
          location,
          employeeId,
        },
      });
      res.status(201).json(newResearch);
    } catch (error) {
      res.status(500).json({ error: "Erreur lors de la création de la recherche." });
    }
  });
  
  // Obtenir toutes les recherches
  router.get("/", async (req, res) => {
    try {
      const researchList = await prisma.research.findMany({
        include: { employee: true },
      });
      res.status(200).json(researchList);
    } catch (error) {
      res.status(500).json({ error: "Erreur lors de la récupération des recherches." });
    }
  });
  
  // Obtenir une recherche par ID
  router.get("/:id", async (req, res) => {
    const { id } = req.params;
    try {
      const research = await prisma.research.findUnique({
        where: { id_research: parseInt(id) },
        include: { employee: true },
      });
      if (!research) return res.status(404).json({ error: "Recherche introuvable." });
      res.status(200).json(research);
    } catch (error) {
      res.status(500).json({ error: "Erreur lors de la récupération de la recherche." });
    }
  });
  
  // Mettre à jour une recherche
  router.put("/:id", validateResearch, async (req, res) => {
    const { id } = req.params;
    const { type, budget, location, employeeId } = req.body;
    try {
      const updatedResearch = await prisma.research.update({
        where: { id_research: parseInt(id) },
        data: { type, budget, location, employeeId },
      });
      res.status(200).json(updatedResearch);
    } catch (error) {
      res.status(500).json({ error: "Erreur lors de la mise à jour de la recherche." });
    }
  });
  
  // Supprimer une recherche
  router.delete("/:id", async (req, res) => {
    const { id } = req.params;
    try {
      await prisma.research.delete({
        where: { id_research: parseInt(id) },
      });
      res.status(200).json({ message: "Recherche supprimée avec succès." });
    } catch (error) {
      res.status(500).json({ error: "Erreur lors de la suppression de la recherche." });
    }
  });

export default router;
