

import { drizzle } from "drizzle-orm/mysql2";
import mysql from "mysql2/promise";
const poolConnection = mysql.createPool({
  // host: "host",
  // user: "user",
  // database: "database",
  uri:process.env.DB_URI as string
});
const db = drizzle({ client: poolConnection });


export {db}