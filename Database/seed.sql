-- HABITATS
-- delete old data
DELETE FROM habitats;
-- create new data
INSERT INTO habitats (
  name,
  subtitle,
  description,
  details,
  image,
  icon,
  theme_color,
  info_one_label,
  info_one_value,
  info_two_label,
  info_two_value,
  info_three_label,
  info_three_value,
  featured_animals
) VALUES
(
  'Rainforest Canopy',
  'A World Above',
  'Step into the mist and discover life among the treetops. Our Rainforest Canopy transports you to the heart of a tropical jungle, where exotic birds call from the branches and primates swing through the canopy above.',
  'Spanning over 5 acres, our rainforest habitat features suspended walkways that wind through multiple levels of the canopy, giving you an unparalleled perspective on rainforest life.',
  '/images/rainforest.jpg',
  'tree',
  '#1f7a3a',
  'Canopy Walkways',
  '500m of elevated trails',
  'Daily Talks',
  '11am, 2pm, 4pm',
  'Allow',
  '1-2 hours',
  'Scarlet Macaws, White-faced Gibbons, Poison Dart Frogs, Toucans, Sloths, Spider Monkeys'
),
(
  'Savannah Plains',
  'The African Heartland',
  'Experience the majesty of the African plains without leaving home. Our Savannah habitat recreates the sweeping grasslands where some of nature''s most iconic animals roam free.',
  'Board our open-air safari vehicles for an immersive journey across 20 acres of authentic savannah landscape. Witness elephants, lions, zebras and giraffes in naturalistic surroundings.',
  '/images/savannah.jpg',
  'sun',
  '#b7791f',
  'Safari Route',
  '3km vehicle tour',
  'Safari Departures',
  'Every 30 minutes',
  'Allow',
  '2-3 hours',
  'African Elephants, Lions, Giraffes, Zebras, Rhinos, Cheetahs'
),
(
  'Reptile World',
  'Ancient Survivors',
  'Enter the realm of scales and cold blood. Reptile World showcases the incredible diversity of reptiles, from ancient crocodilians to colour-changing chameleons.',
  'Our climate-controlled Reptile World houses over 100 species in carefully designed habitats that replicate environments from deserts to swamps. Walk through our Nocturnal Zone to see species that come alive after dark, and do not miss our interactive handling sessions where you can meet some of our gentler residents up close.',
  '/images/reptile-world.jpg',
  'reptile',
  '#9c5645',
  'Zones',
  'Desert, Tropical, Nocturnal',
  'Handling Sessions',
  '12pm, 3pm daily',
  'Allow',
  '1-1.5 hours',
  'Komodo Dragons, King Cobras, Chameleons, Tortoises, Crocodiles, Geckos'
),
(
  'Ocean Discovery',
  'Beneath the Waves',
  'Dive into a world of wonder without getting wet. Ocean Discovery takes you on an underwater journey through coral reefs, kelp forests, and the mysterious deep.',
  'Walk through our 50-metre underwater tunnel as sharks, rays, and sea turtles glide overhead. Explore interactive touch pools where you can feel the texture of starfish and sea urchins. Our coral reef exhibit showcases the vibrant biodiversity of tropical marine ecosystems and highlights critical conservation challenges.',
  '/images/ocean-discovery.jpg',
  'waves',
  '#3b9db3',
  'Underwater Tunnel',
  '50m walk-through',
  'Feeding Times',
  '10:30am, 3:30pm',
  'Allow',
  '1.5-2 hours',
  'Sharks, Sea Turtles, Stingrays, Jellyfish, Clownfish, Seahorses'
);


-- EXPERIENCES
-- delete old data
DELETE FROM experiences;
-- create new data
INSERT INTO experiences (
  name,
  subtitle,
  description,
  features,
  image,
  badge,
  icon,
  duration,
  schedule,
  section
) VALUES
(
  'Keeper Encounters',
  'Behind the Scenes',
  'Get closer than ever before to our incredible animals with exclusive behind-the-scenes access. Join our passionate keepers as they share their daily routines, feeding times, and fascinating insights into animal behaviour.',
  'One-hour exclusive session, Meet animals up close, Learn about conservation efforts, Perfect for all ages',
  '/images/rainforest-encounter.jpg',
  'Most Popular',
  'camera',
  '60 minutes',
  'Daily, limited spots',
  'signature'
),
(
  'Night Safaris',
  'After Dark Adventures',
  'Experience the park in a completely different light — or rather, in darkness. Our Night Safari takes you on a magical journey through the habitats when nocturnal creatures come alive.',
  'Guided torchlight tours, Spot nocturnal species, Special night-vision equipment provided, Hot chocolate included',
  '/images/night-safari.jpg',
  'Unique Experience',
  'compass',
  '2 hours',
  'Fri & Sat evenings, seasonal',
  'signature'
),
(
  'Guided Tours',
  'Included',
  'Join our expert naturalists for immersive walking tours through each habitat. Learn about animal behaviour, conservation challenges, and the stories behind our residents.',
  '',
  '',
  '',
  'group',
  '45 minutes per habitat',
  '10am, 12pm, 2pm, 4pm',
  'daily'
),
(
  'Bird Shows',
  'Included',
  'Marvel at the intelligence and grace of our feathered performers. Watch owls swoop overhead, parrots demonstrate problem-solving skills, and birds of prey in stunning flight displays.',
  '',
  '',
  '',
  'bird',
  '30 minutes',
  '11:30am, 3:30pm',
  'daily'
),
(
  'Adventure Trails',
  'Included',
  'Self-guided trails designed for families and explorers of all ages. Pick up a trail map and discovery pack at the entrance, spot clues, solve puzzles, and learn along the way.',
  '',
  '',
  '',
  'map',
  'At your own pace',
  'Available all day',
  'daily'
),
(
  'Wild Dining',
  '',
  'From the Canopy Cafe with rainforest views to the Savannah Grill overlooking the plains, enjoy delicious meals in stunning settings. Vegetarian, vegan, and allergen-friendly options available.',
  '',
  '',
  '',
  'dining',
  'Various locations',
  '10am - 5pm',
  'daily'
),
(
  'Little Explorers Club',
  '3-7 Years',
  'Designed for children aged 3-7, this interactive session introduces young ones to the wonders of wildlife through stories, crafts, and gentle animal encounters.',
  '',
  '',
  '',
  'child',
  '',
  '',
  'families'
),
(
  'Junior Keeper for a Day',
  '8-14 Years',
  'Give your child the ultimate wildlife experience. Spend the day shadowing our keepers, helping with feeding rounds, and learning what it takes to care for exotic animals.',
  '',
  '',
  '',
  'sparkle',
  '',
  '',
  'families'
),
(
  'Animal Adoption Program',
  'All Ages',
  'Adopt one of our animals and receive regular updates, a certificate, and exclusive keeper talks about your chosen species. A meaningful gift that supports conservation.',
  '',
  '',
  '',
  'heart',
  '',
  '',
  'families'
);
