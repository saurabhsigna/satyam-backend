import { defineConfig } from 'drizzle-kit'
export default defineConfig({
  dialect: "mysql",
  schema: "./src/db/schema/index.db.ts",
  dbCredentials: {
    url: process.env.DB_URI as string,
  }
})