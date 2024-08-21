// server.ts
import app from './app'; // Import app with all routes defined
import chalk from 'chalk';
import dotenv from 'dotenv';

dotenv.config();

const PORT = process.env.PORT;

app.listen(PORT, () => {
  console.log(chalk.green(`Server running on http://localhost:${PORT}/`));
});
