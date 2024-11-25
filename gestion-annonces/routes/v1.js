import express from "express";

import EmployeesRouter from "./v1/Employees.js";

const router = express.Router();

router.use("/employees", EmployeesRouter);

export default router;
