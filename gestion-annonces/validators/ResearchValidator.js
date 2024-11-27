import { z } from "zod";

const ResearchValidator = z.object({
    type: z.string().min(1, "Le type est requis."),
    budget: z.number().positive("Le budget doit être positif."),
    location: z.string().min(1, "La localisation est requise."),
  });  

export default ResearchValidator;
