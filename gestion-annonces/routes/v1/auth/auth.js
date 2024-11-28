// src/routes/v1/auth/auth.js
import express from 'express';
import { PrismaClient } from '@prisma/client';  // Prisma pour interagir avec la base de données

const router = express.Router();
const prisma = new PrismaClient();

// Route pour la connexion de l'utilisateur (authentification simple)
router.post('/login', async (req, res) => {
  const { pseudo, password } = req.body;  // Récupération des informations envoyées dans le corps de la requête

  if (!pseudo || !password) {
    return res.status(400).json({ message: 'Le pseudo et le mot de passe sont requis.' });
  }

  try {
    // Recherche de l'utilisateur dans la base de données par son pseudo
    const user = await prisma.employees.findFirst({
      where: { pseudo }, // Recherche l'utilisateur par son pseudo
    });

    if (!user) {
      return res.status(401).json({ message: 'Pseudo ou mot de passe incorrect.' });
    }

    // Comparaison du mot de passe envoyé avec celui stocké en base (en clair)
    if (user.password !== password) {
      return res.status(401).json({ message: 'Pseudo ou mot de passe incorrect.' });
    }

    // Connexion réussie, on retourne les informations de l'utilisateur
    return res.status(200).json({
      message: 'Connexion réussie',
      user: {
        pseudo: user.pseudo,
        role: user.role,  // Optionnel : retourner le rôle ou d'autres informations de l'utilisateur
      },
    });

  } catch (error) {
    console.error(error);
    return res.status(500).json({ message: 'Une erreur est survenue lors de la tentative de connexion.' });
  }
});

export default router;
