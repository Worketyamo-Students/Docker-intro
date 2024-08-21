// server.ts
import app from './app'; // Import app with all routes defined
import chalk from 'chalk';

const PORT = 3000;

app.listen(PORT, () => {
  console.log(chalk.green(`Server running on http://localhost:${PORT}/`));
});
