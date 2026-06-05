-- HABITATS
CREATE TABLE IF NOT EXISTS habitats (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  subtitle TEXT NOT NULL,
  description TEXT NOT NULL,
  details TEXT NOT NULL,
  image TEXT NOT NULL,
  icon TEXT,
  theme_color TEXT,
  info_one_label TEXT,
  info_one_value TEXT,
  info_two_label TEXT,
  info_two_value TEXT,
  info_three_label TEXT,
  info_three_value TEXT,
  featured_animals TEXT
);

-- EXPERIENCES
CREATE TABLE IF NOT EXISTS experiences (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  subtitle TEXT NOT NULL,
  description TEXT NOT NULL,
  features TEXT NOT NULL,
  image TEXT NOT NULL,
  badge TEXT,
  icon TEXT,
  duration TEXT,
  schedule TEXT,
  section TEXT NOT NULL
);

-- CONTACT FORM
CREATE TABLE IF NOT EXISTS contact (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT,
  subject TEXT NOT NULL,
  message TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
