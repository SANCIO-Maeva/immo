import { z } from "zod";

const ResearchValidator = z.object({
    type: z.string().min(1, "Le type est requis."),
    budget: z.number().positive("Le budget doit être positif."),
    location: z.string().min(1, "La localisation est requise."),
    employeeId: z.number().positive("L'ID de l'employé est requis."),
  });  

export default ResearchValidator;
