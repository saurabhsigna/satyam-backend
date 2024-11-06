import { fileURLToPath } from 'url';
import path from 'path';

export const rootPath = (() => {
  const __filename = fileURLToPath((import.meta as any).url);
  const projectRoot = path.resolve(__filename, '../..');
  return projectRoot;
})();
