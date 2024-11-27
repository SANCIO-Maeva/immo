import express from "express";

import EmployeesRouter from "./v1/Employees.js";
import AnnouncementsRouter from "./v1/Announcements.js";
import ResearchRouter from "./v1/Research.js";
import ServicesRouter from "./v1/Services.js";


const router = express.Router();

router.use("/employees", EmployeesRouter);
router.use("/announcements", AnnouncementsRouter);
router.use("/research", ResearchRouter);
router.use("/services", ServicesRouter);

export default router;
