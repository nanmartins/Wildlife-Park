import express from 'express';
import path from 'path';
import { title } from 'process';
import { fileURLToPath } from 'url';
import sqlite3 from 'sqlite3';
import { open } from 'sqlite';

const app = express();
const PORT = 5000;

// necessary for using __dirname with ES modules
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// conect to database
async function openDb() {
  return open({
    filename: path.join(__dirname, 'Database', 'wildlife.db'),
    driver: sqlite3.Database
  });
}

// Feeding the static files
app.use(express.static(path.join(__dirname, 'public')));

// EJS configuration
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Routes
app.get('/', (req, res) => {
  res.render('pages/index', { title: 'Wildwood Park - Home' });
});

app.get('/habitats', (req, res) => {
  res.render('pages/habitats', { title: 'Wildwood Park - Habitats' });
});

app.get('/experiences', (req, res) => {
  res.render('pages/experiences', { title: 'Wildwood Park - Experiences' });
});

app.get('/faq', (req, res) => {
  res.render('pages/faq', { title: 'Wildwood Park - FAQ' });
});

app.get('/contact', (req, res) => {
  res.render('pages/contact', { title: 'Wildwood Park - Contact' });
});

// Start server
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
