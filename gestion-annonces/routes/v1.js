import express from "express";

import EmployeesRouter from "./v1/Employees.js";
import AnnouncementsRouter from "./v1/Announcements.js";
import ResearchRouter from "./v1/Research.js";
import CommerceRouter from "./v1/Commerces.js";
import authRouter from './v1/auth/auth.js';


const router = express.Router();

router.use("/employees", EmployeesRouter);
router.use("/announcements", AnnouncementsRouter);
router.use("/research", ResearchRouter);
router.use("/commerce", CommerceRouter);
router.use('/auth', authRouter);  


export default router;
