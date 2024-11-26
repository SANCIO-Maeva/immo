import express from "express";

import EmployeesRouter from "./v1/Employees.js";
import AnnouncementsRouter from "./v1/Announcements.js";
import ResearchRouter from "./v1/Research.js";


const router = express.Router();

router.use("/employees", EmployeesRouter);
router.use("/announcements", AnnouncementsRouter);
router.use("/research", ResearchRouter);

export default router;
