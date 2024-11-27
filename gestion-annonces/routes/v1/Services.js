import express from "express";
import { PrismaClient } from "@prisma/client";
import dotenv from 'dotenv';

import ServicesValidator from "../../validators/ServicesValidator.js";

const router = express.Router();

const prisma = new PrismaClient();

const SIRENE_API_URL= process.env.SIRENE_API_URL;
const SIRENE_API_KEY = process.env.SIRENE_API_KEY;

router.post("/", async (req, res) => {
  let services;

  try {
    services = ServicesValidator.parse(req.body);
  } catch (error) {
    return res.status(400).json({ errors: error.issues });
  }

  const entry = await prisma.services.create({
    data: {
      service_name: services.service_name,
      service_type: services.service_type,
      distance: services.distance,
    },
  });

  res.json(entry);
});

export default router;
