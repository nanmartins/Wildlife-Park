import express from 'express';
import path from 'path';
import { title } from 'process';
import { fileURLToPath } from 'url';
import sqlite3 from 'sqlite3';
import { open } from 'sqlite';
import fs from 'fs';


const app = express();
const PORT = 5000;


// necessary for using __dirname with ES modules
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);


// function to open database
async function openDb() {
  return open({
    filename: path.join(__dirname, 'Database', 'wildlife.db'),
    driver: sqlite3.Database
  });
}


// function to initialize database
async function initDb() {
  const db = await openDb();

  // read SQL
  const schema = fs.readFileSync(
    path.join(__dirname, 'Database', 'schema.sql'),
    'utf-8'
  );

  const seed = fs.readFileSync(
    path.join(__dirname, 'Database', 'seed.sql'),
    'utf-8'
  );

  // execute SQL
  await db.exec(schema);
  await db.exec(seed);

  console.log('Database initialized');
}


// feeding the static files
app.use(express.static(path.join(__dirname, 'public')));


// middleware
app.use(express.urlencoded({ extended: true }));


// EJS configuration
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));


// routes
app.get('/', (req, res) => {
  res.render('pages/index', { title: 'Wildwood Park - Home' });
});


app.get('/habitats', async (req, res) => {
  try {
    const db = await openDb();
    const habitats = await db.all('SELECT * FROM habitats');

    res.render('pages/habitats', {
      title: 'Wildwood Park - Habitats',
      habitats
    });

  } catch (error) {
    console.error(error);
    res.status(500).send('Error loading habitats');
  }
});


app.get('/experiences', async (req, res) => {
  try {
    const db = await openDb();
    const experiences = await db.all('SELECT * FROM experiences');

    res.render('pages/experiences', {
      title: 'Wildwood Park - Experiences',
      experiences
    });

  } catch (error) {
    console.error(error);
    res.status(500).send('Error loading experiences');
  }
});


app.get('/faq', (req, res) => {
  res.render('pages/faq', { title: 'Wildwood Park - FAQ' });
});


app.get('/contact', (req, res) => {
  res.render('pages/contact', { title: 'Wildwood Park - Contact' });
});


app.post('/contact', async (req, res) => {
  try {
    const { name, email, message } = req.body;

    const db = await openDb();

    await db.run(
      'INSERT INTO contact (name, email, message) VALUES (?, ?, ?)',
      [name, email, message]
    );

    res.send('Message sent successfully.');
  } catch (error) {
    console.error(error);
    res.status(500).send('Error submitting contact form');
  }
});

// route for testing contact submissions
app.get('/contact-submissions', async (req, res) => {
  try {
    const db = await openDb();
    const messages = await db.all('SELECT * FROM contact ORDER BY created_at DESC');

    res.json(messages);
  } catch (error) {
    console.error(error);
    res.status(500).send('Error loading contact submissions');
  }
});


// start server
initDb().then(() => {
  app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
  });
});
