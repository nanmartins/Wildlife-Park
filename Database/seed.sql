-- HABITATS
-- delete old data
DELETE FROM habitats;
-- create new data
INSERT INTO habitats (name, description, image) VALUES
('Savannah', 'Home to lions, zebras and elephants', '/images/savannah.jpg'),
('Rainforest', 'Dense jungle with exotic wildlife', '/images/rainforest.jpg'),
('Arctic', 'Cold environment with polar animals', '/images/arctic.jpg');

-- EXPERIENCES
-- delete old data
DELETE FROM experiences;
-- create new data
INSERT INTO experiences (name, description, image) VALUES
('Lion Feeding', 'Watch lions being fed up close', '/images/lion.jpg'),
('Penguin Encounter', 'Meet and interact with penguins', '/images/penguin.jpg'),
('Night Safari', 'Explore the park at night', '/images/safari.jpg');
