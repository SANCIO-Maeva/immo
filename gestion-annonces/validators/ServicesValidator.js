import { z } from "zod";

const ServicesValidator = z.object({
    service_name: z.string(),
    service_type: z.string(),
    distance: z.number(),
  });  

export default ServicesValidator;
