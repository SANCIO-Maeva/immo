import { z } from "zod";

const AnnouncementsValidator = z.object({
    title: z.string().min(1, "Le titre est requis."),
    description: z.string().min(1, "La description est requise."),
    type: z.string().min(1, "Le type est requis."),
    address: z.string().min(1, "L'adresse est requise."),
    price: z.number().positive("Le prix doit être positif."),
    employeeId: z.number().positive("L'ID de l'employé est requis."),
  });

export default AnnouncementsValidator;
