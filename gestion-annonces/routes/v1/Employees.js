import express from "express";
import { PrismaClient } from "@prisma/client";

import EmployeesValidator from "../../validators/EmployeesValidator.js";

const router = express.Router();

const prisma = new PrismaClient();

router.post("/", async (req, res) => {
  let employees;

  try {
    employees = EmployeesValidator.parse(req.body);
  } catch (error) {
    return res.status(400).json({ errors: error.issues });
  }

  const entry = await prisma.employees.create({
    data: {
      name: employees.name,
      firstname: employees.firstname,
      pseudo: employees.pseudo,
      password: employees.password,
      role: employees.role,
    },
  });

  res.json(entry);
});

export default router;
