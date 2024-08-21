// app.ts
import express, { Request, Response } from 'express';
import morgan from 'morgan';

const app = express();

// Middleware
app.use(morgan('combined'));
app.use(express.json());

// Routes
app.post('/greetings', (req: Request, res: Response) => {
  res.status(200).json({ msg: "Hello World" });
});

export default app;
