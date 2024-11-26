import { z } from "zod";

const EmployeeValidator = z.object({
  name: z.string().min(1, "Le nom est requis").max(100, "Le nom est trop long"),
  firstname: z
    .string()
    .min(1, "Le prénom est requis")
    .max(100, "Le prénom est trop long"),
  pseudo: z
    .string()
    .min(3, "Le pseudo doit contenir au moins 3 caractères")
    .max(50, "Le pseudo est trop long"),
  password: z
    .string()
    .min(8, "Le mot de passe doit contenir au moins 8 caractères")
    .regex(
      /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*])/,
      "Le mot de passe doit inclure au moins une majuscule, un chiffre et un caractère spécial"
    ),
  role: z.enum(["Admin", "Agent"], {
    errorMap: () => ({
      message: "Le rôle doit être Admin ou Agent",
    }),
  }),
});

export default EmployeeValidator;
