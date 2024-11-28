import express from "express";
import { PrismaClient } from "@prisma/client";
import EmployeeValidator from "../../validators/EmployeesValidator.js"


const router = express.Router();
const prisma = new PrismaClient();

// Route pour ajouter un employé
router.post("/", async (req, res) => {
  let validatedEmployee;

  try {
    // Valider les données envoyées par le client avec le validateur EmployeeValidator
    validatedEmployee = EmployeeValidator.parse(req.body);
  } catch (error) {
    return res.status(400).json({ errors: error.issues });
  }

  try {
    const entry = await prisma.employees.create({
      data: {
        name: validatedEmployee.name,
        firstname: validatedEmployee.firstname,
        pseudo: validatedEmployee.pseudo,
        password: validatedEmployee.password,
        role: validatedEmployee.role,
      },
    });

    res.status(201).json(entry);
  } catch (prismaError) {
    console.error(prismaError);
    res.status(500).json({ error: "Une erreur est survenue lors de la création de l'employé." });
  }
});

export default router;
