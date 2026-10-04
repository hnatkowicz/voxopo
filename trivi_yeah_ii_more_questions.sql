-- Trivi-Yeah II: a second batch of content for the same 5 categories as
-- trivi_yeah_ii_prototype.sql (SCIENCE_NATURE, MOVIES_TV, MUSIC, SPORTS,
-- WORLD_HISTORY), 20 fresh questions each (4 point tiers x 5 questions),
-- none overlapping the first batch's topics. Purely additive -- no DELETE,
-- so running this after the original file just deepens each category's
-- pool rather than replacing it, cutting down on repeat questions across
-- multiple play sessions.
--
-- Schema notes, for writing your own:
--   question_number  must be globally unique across the WHOLE questions
--                     table (every game mode shares one sequence) -- this
--                     batch uses 2101-2200; pick your own free range (check
--                     with: SELECT MAX(question_number) FROM questions;).
--   game_mode         must stay 'TRIVI_YEAH_II' to appear in this mode.
--   category          must be one of the 5 keys the app already knows
--                     (SCIENCE_NATURE, MOVIES_TV, MUSIC, SPORTS,
--                     WORLD_HISTORY) -- adding a brand-new category key
--                     here does nothing until it's also added to the
--                     TRIVI_YEAH_II_CATEGORIES list in
--                     src/services/gameEngine.js.
--   subcategory, faction, visual_asset   unused by this mode -- leave NULL.
--   points            must be exactly one of 100, 200, 300, 400 -- these are
--                     the grid's 4 tiers, and each category needs all 4
--                     filled or the board-builder will fail fast rather
--                     than ship an incomplete grid.
--   correct_answer    the exact text shown to players as correct.
--   wrong_answers     a 6-element text[] of plausible distractors -- the
--                     game draws 3 at random per play, so more than 3 keeps
--                     repeat plays from showing the same wrong options
--                     every time. Keep them the same "shape" as the right
--                     answer (a date among dates, a name among names) so
--                     none of the 4 shown choices gives itself away.

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES
-- SCIENCE_NATURE
(2101, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the center of an atom called?', NULL, 'Nucleus', ARRAY['Electron','Proton','Neutron','Isotope','Orbital','Ion'], 100),
(2102, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'How many bones are in the adult human body?', NULL, '206', ARRAY['186','246','166','226','196','300'], 100),
(2103, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the tallest species of land animal?', NULL, 'Giraffe', ARRAY['Elephant','Moose','Camel','Ostrich','Rhino','Horse'], 100),
(2104, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What do caterpillars turn into?', NULL, 'Butterflies or moths', ARRAY['Beetles','Dragonflies','Grasshoppers','Bees','Ants','Ladybugs'], 100),
(2105, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the main gas found in the air we breathe, by volume?', NULL, 'Nitrogen', ARRAY['Oxygen','Carbon dioxide','Hydrogen','Helium','Argon','Methane'], 100),
(2106, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the process by which water turns into vapor called?', NULL, 'Evaporation', ARRAY['Condensation','Precipitation','Sublimation','Filtration','Dissolution','Erosion'], 200),
(2107, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'Which planet has the most moons in our solar system?', NULL, 'Saturn', ARRAY['Jupiter','Neptune','Uranus','Mars','Earth','Venus'], 200),
(2108, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the name for an animal that eats both plants and meat?', NULL, 'Omnivore', ARRAY['Herbivore','Carnivore','Scavenger','Predator','Decomposer','Parasite'], 200),
(2109, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What organ pumps blood throughout the human body?', NULL, 'Heart', ARRAY['Liver','Lungs','Kidney','Brain','Stomach','Spleen'], 200),
(2110, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the freezing point of water in degrees Celsius?', NULL, '0', ARRAY['32','100','-32','10','-10','4'], 200),
(2111, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the study of weather and atmospheric conditions called?', NULL, 'Meteorology', ARRAY['Geology','Astronomy','Oceanography','Seismology','Climatology','Hydrology'], 300),
(2112, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'Which blood cells are primarily responsible for fighting infection?', NULL, 'White blood cells', ARRAY['Red blood cells','Platelets','Plasma cells','Stem cells','Nerve cells','Muscle cells'], 300),
(2113, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the name of the galaxy that contains our solar system?', NULL, 'The Milky Way', ARRAY['Andromeda','The Whirlpool Galaxy','The Sombrero Galaxy','Triangulum','Centaurus A','The Pinwheel Galaxy'], 300),
(2114, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What type of rock is formed from cooled magma or lava?', NULL, 'Igneous', ARRAY['Sedimentary','Metamorphic','Mineral','Organic','Composite','Crystalline'], 300),
(2115, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'Which vitamin is primarily produced by the body through sun exposure?', NULL, 'Vitamin D', ARRAY['Vitamin C','Vitamin A','Vitamin B12','Vitamin E','Vitamin K','Vitamin B6'], 300),
(2116, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the term for the distance light travels in one year?', NULL, 'A light-year', ARRAY['A parsec','An astronomical unit','A light-second','A solar year','A galactic unit','A radian'], 400),
(2117, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'Which scientist formulated the three laws of motion?', NULL, 'Isaac Newton', ARRAY['Albert Einstein','Galileo Galilei','Nikola Tesla','Johannes Kepler','James Clerk Maxwell','Michael Faraday'], 400),
(2118, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the name of the process plants use to lose water vapor through their leaves?', NULL, 'Transpiration', ARRAY['Respiration','Photosynthesis','Germination','Pollination','Osmosis','Fermentation'], 400),
(2119, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'Which subatomic particle carries a negative electric charge?', NULL, 'Electron', ARRAY['Proton','Neutron','Positron','Photon','Quark','Neutrino'], 400),
(2120, 'TRIVI_YEAH_II', 'SCIENCE_NATURE', NULL, NULL, 'What is the term for a baby kangaroo?', NULL, 'Joey', ARRAY['Cub','Kid','Pup','Fawn','Kit','Calf'], 400),
-- MOVIES_TV
(2121, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'What is the name of the toy cowboy in the "Toy Story" movies?', NULL, 'Woody', ARRAY['Buzz','Rex','Hamm','Slinky','Jessie','Lenny'], 100),
(2122, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'In "The Lion King," what is the name of Simba''s father?', NULL, 'Mufasa', ARRAY['Scar','Zazu','Pumbaa','Rafiki','Timon','Sarabi'], 100),
(2123, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'What is the name of the boy wizard in the Harry Potter series?', NULL, 'Harry Potter', ARRAY['Ron Weasley','Neville Longbottom','Draco Malfoy','Cedric Diggory','Albus Dumbledore','Sirius Black'], 100),
(2124, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which animated movie features a snowman named Olaf?', NULL, 'Frozen', ARRAY['Moana','Tangled','Encanto','Brave','Coco','Zootopia'], 100),
(2125, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'What is the name of the yellow sponge who lives in a pineapple under the sea?', NULL, 'SpongeBob SquarePants', ARRAY['Patrick Star','Squidward','Mr. Krabs','Sandy Cheeks','Plankton','Gary'], 100),
(2126, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which actor played the Terminator in the 1984 film of the same name?', NULL, 'Arnold Schwarzenegger', ARRAY['Sylvester Stallone','Jean-Claude Van Damme','Dolph Lundgren','Bruce Willis','Chuck Norris','Kurt Russell'], 200),
(2127, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'In "The Office" (US), what company does the Scranton branch work for?', NULL, 'Dunder Mifflin', ARRAY['Vance Refrigeration','Prince Family Paper','Staples','Michael Scott Paper Company','Sabre','Athlead'], 200),
(2128, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which movie features a shark terrorizing the fictional town of Amity Island?', NULL, 'Jaws', ARRAY['Deep Blue Sea','The Meg','Open Water','Sharknado','47 Meters Down','Piranha'], 200),
(2129, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Who played the title role in "Forrest Gump"?', NULL, 'Tom Hanks', ARRAY['Tom Cruise','Kevin Costner','Robin Williams','Bill Murray','Dustin Hoffman','Michael Keaton'], 200),
(2130, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'What is the name of the fictional kingdom in "Frozen"?', NULL, 'Arendelle', ARRAY['Corona','Agrabah','DunBroch','Motunui','San Fransokyo','Genovia'], 200),
(2131, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which director is known for films such as "Jurassic Park," "E.T.," and "Jaws"?', NULL, 'Steven Spielberg', ARRAY['Martin Scorsese','James Cameron','George Lucas','Ridley Scott','Christopher Nolan','Tim Burton'], 300),
(2132, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'In "Breaking Bad," what is the name of the lawyer who later gets his own spin-off series?', NULL, 'Saul Goodman', ARRAY['Gus Fring','Mike Ehrmantraut','Jesse Pinkman','Hank Schrader','Walt Jr.','Skyler White'], 300),
(2133, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which 1975 film is widely credited as Hollywood''s first summer "blockbuster"?', NULL, 'Jaws', ARRAY['Star Wars','The Godfather','Rocky','Close Encounters of the Third Kind','Jaws 2','Grease'], 300),
(2134, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which actress played Hermione Granger in the Harry Potter films?', NULL, 'Emma Watson', ARRAY['Emma Stone','Emma Roberts','Keira Knightley','Evanna Lynch','Bonnie Wright','Natalie Portman'], 300),
(2135, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'What was the first feature film to win the Academy Award for Best Animated Feature?', NULL, 'Shrek', ARRAY['Toy Story','Monsters, Inc.','Finding Nemo','Spirited Away','Ice Age','Shrek 2'], 400),
(2136, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Who directed the 1960 psychological horror film "Psycho"?', NULL, 'Alfred Hitchcock', ARRAY['Stanley Kubrick','Billy Wilder','Orson Welles','John Huston','William Friedkin','George Cukor'], 400),
(2137, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which 1959 epic, starring Charlton Heston, was the first film to win 11 Academy Awards?', NULL, 'Ben-Hur', ARRAY['Gone with the Wind','The Godfather','Titanic','Cleopatra','Spartacus','Lawrence of Arabia'], 400),
(2138, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'What was the name of the first television network to broadcast in color nationally in the US?', NULL, 'NBC', ARRAY['CBS','ABC','Fox','PBS','The CW','DuMont'], 400),
(2139, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which silent film actor was famous for his "Little Tramp" character?', NULL, 'Charlie Chaplin', ARRAY['Buster Keaton','Harold Lloyd','Stan Laurel','Fatty Arbuckle','Harry Langdon','Max Linder'], 400),
(2140, 'TRIVI_YEAH_II', 'MOVIES_TV', NULL, NULL, 'Which long-running animated sitcom is set in the fictional town of Springfield?', NULL, 'The Simpsons', ARRAY['Family Guy','King of the Hill','Bob''s Burgers','American Dad!','Futurama','South Park'], 300),
-- MUSIC
(2141, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'How many keys are on a standard piano?', NULL, '88', ARRAY['76','52','100','64','96','108'], 100),
(2142, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which family of instruments does the violin belong to?', NULL, 'String', ARRAY['Brass','Woodwind','Percussion','Keyboard','Electronic','Wind'], 100),
(2143, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which pop star is known as "Queen Bey"?', NULL, 'Beyoncé', ARRAY['Rihanna','Adele','Taylor Swift','Lady Gaga','Katy Perry','Ariana Grande'], 100),
(2144, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'What is a group of four singers or musicians called?', NULL, 'A quartet', ARRAY['A trio','A quintet','A duet','An octet','A sextet','A chorus'], 100),
(2145, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which Swedish pop group sang "Dancing Queen"?', NULL, 'ABBA', ARRAY['Roxette','Ace of Base','A-ha','Europe','The Cardigans','Icona Pop'], 100),
(2146, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which instrument does a percussionist typically play as their primary instrument?', NULL, 'Drums', ARRAY['Trumpet','Flute','Cello','Clarinet','Trombone','Oboe'], 200),
(2147, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which rock band is fronted by Bono and hails from Dublin, Ireland?', NULL, 'U2', ARRAY['Coldplay','The Killers','Oasis','Radiohead','Snow Patrol','The Script'], 200),
(2148, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which country music legend was known as "The Man in Black"?', NULL, 'Johnny Cash', ARRAY['Willie Nelson','Hank Williams','Garth Brooks','George Strait','Merle Haggard','Waylon Jennings'], 200),
(2149, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which Austrian composer was a child prodigy who wrote his first symphony at age 8?', NULL, 'Wolfgang Amadeus Mozart', ARRAY['Ludwig van Beethoven','Johann Sebastian Bach','Franz Schubert','Joseph Haydn','Johannes Brahms','Franz Liszt'], 200),
(2150, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which artist is known for the song "Rolling in the Deep"?', NULL, 'Adele', ARRAY['Sam Smith','Amy Winehouse','Duffy','Florence Welch','Sia','Lana Del Rey'], 200),
(2151, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which music genre, originating in New Orleans, is known for improvisation and swing?', NULL, 'Jazz', ARRAY['Blues','Ragtime','Gospel','Funk','Bluegrass','Soul'], 300),
(2152, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which band released the album "The Dark Side of the Moon" in 1973?', NULL, 'Pink Floyd', ARRAY['Led Zeppelin','The Who','Genesis','Yes','King Crimson','Deep Purple'], 300),
(2153, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Who is often credited as the "Father of the Blues" for his composition "St. Louis Blues"?', NULL, 'W.C. Handy', ARRAY['Robert Johnson','Muddy Waters','B.B. King','Howlin'' Wolf','Son House','Lead Belly'], 300),
(2154, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which rapper released the influential album "The Chronic" in 1992?', NULL, 'Dr. Dre', ARRAY['Snoop Dogg','Ice Cube','Tupac Shakur','The Notorious B.I.G.','Eazy-E','Nas'], 300),
(2155, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which term describes music played or sung with no fixed steady beat?', NULL, 'Rubato', ARRAY['Staccato','Legato','Vibrato','Crescendo','Tempo','Fortissimo'], 300),
(2156, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which composer wrote "The Nutcracker" ballet?', NULL, 'Pyotr Ilyich Tchaikovsky', ARRAY['Igor Stravinsky','Sergei Prokofiev','Nikolai Rimsky-Korsakov','Modest Mussorgsky','Alexander Borodin','Dmitri Shostakovich'], 400),
(2157, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which instrument is played by striking or plucking metal tines, invented for the "Rhodes" piano sound?', NULL, 'Electric piano', ARRAY['Synthesizer','Harpsichord','Celesta','Organ','Vibraphone','Accordion'], 400),
(2158, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which 1971 album by Marvin Gaye is considered a landmark of socially conscious soul music?', NULL, 'What''s Going On', ARRAY['Let''s Get It On', 'I Want You','Here, My Dear','Midnight Love','Trouble Man','In Our Lifetime'], 400),
(2159, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which German composer continued to conduct even after losing his hearing, premiering his 9th Symphony in 1824?', NULL, 'Ludwig van Beethoven', ARRAY['Johannes Brahms','Richard Wagner','Franz Schubert','Robert Schumann','Felix Mendelssohn','Gustav Mahler'], 400),
(2160, 'TRIVI_YEAH_II', 'MUSIC', NULL, NULL, 'Which music notation symbol lowers a note by one half step?', NULL, 'A flat', ARRAY['A sharp','A natural','A rest','A clef','A tie','A slur'], 400),
-- SPORTS
(2161, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'How many players are on a standard basketball team on the court at once?', NULL, 'Five', ARRAY['Six','Seven','Four','Eight','Nine','Eleven'], 100),
(2162, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'In which sport do athletes compete using a bat, ball, and bases, scoring "runs"?', NULL, 'Baseball', ARRAY['Cricket','Softball','Rounders','Lacrosse','Field hockey','Rugby'], 100),
(2163, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'What is the term for scoring three goals in a single soccer match by one player?', NULL, 'A hat-trick', ARRAY['A triple play','A grand slam','A perfect game','A clean sweep','A treble','A hat-full'], 100),
(2164, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'In which sport is the term "love" used to mean zero points?', NULL, 'Tennis', ARRAY['Badminton','Squash','Table tennis','Volleyball','Golf','Cricket'], 100),
(2165, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'How often are the Summer Olympic Games normally held?', NULL, 'Every 4 years', ARRAY['Every 2 years','Every 3 years','Every 5 years','Every 6 years','Every year','Every 8 years'], 100),
(2166, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which sport is governed by the organization FIFA?', NULL, 'Soccer (association football)', ARRAY['Rugby','American football','Field hockey','Basketball','Cricket','Volleyball'], 200),
(2167, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'In golf, what term describes finishing a hole one stroke under par?', NULL, 'A birdie', ARRAY['An eagle','A bogey','An albatross','A par','A double bogey','A condor'], 200),
(2168, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which country is credited with inventing table tennis (ping pong)?', NULL, 'England', ARRAY['China','Japan','United States','Germany','France','Sweden'], 200),
(2169, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'How many points is a successful "try" worth in rugby union?', NULL, 'Five', ARRAY['Three','Six','Four','Seven','Two','Eight'], 200),
(2170, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which NBA player is nicknamed "King James"?', NULL, 'LeBron James', ARRAY['Kevin Durant','Stephen Curry','Kobe Bryant','Michael Jordan','Kevin James','Shaquille O''Neal'], 200),
(2171, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which country has won the most Olympic gold medals overall, all-time, as of the mid-2020s?', NULL, 'The United States', ARRAY['The Soviet Union/Russia','China','Great Britain','Germany','Australia','France'], 300),
(2172, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'In Formula 1, how many points does a race winner currently earn?', NULL, '25', ARRAY['20','18','30','15','22','10'], 300),
(2173, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which tennis tournament is played on a grass surface and is the oldest of the four Grand Slams?', NULL, 'Wimbledon', ARRAY['The US Open','The French Open','The Australian Open','The ATP Finals','The Davis Cup','The Miami Open'], 300),
(2174, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which swimmer has won the most Olympic gold medals of any athlete in history?', NULL, 'Michael Phelps', ARRAY['Mark Spitz','Ryan Lochte','Caeleb Dressel','Ian Thorpe','Katie Ledecky','Matt Biondi'], 300),
(2175, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which country won the UEFA Euro 2016 football championship?', NULL, 'Portugal', ARRAY['France','Germany','Spain','Italy','Belgium','Wales'], 300),
(2176, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which NFL quarterback holds the record for the most Super Bowl wins by a player, with seven?', NULL, 'Tom Brady', ARRAY['Peyton Manning','Joe Montana','Patrick Mahomes','Terry Bradshaw','Aaron Rodgers','Drew Brees'], 400),
(2177, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'In what year were women first allowed to compete in the modern Olympic Games?', NULL, '1900', ARRAY['1896','1912','1920','1924','1908','1932'], 400),
(2178, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which cyclist was stripped of his record seven Tour de France titles following a doping scandal?', NULL, 'Lance Armstrong', ARRAY['Greg LeMond','Eddy Merckx','Miguel Indurain','Jan Ullrich','Alberto Contador','Chris Froome'], 400),
(2179, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which boxing weight class is the heaviest?', NULL, 'Heavyweight', ARRAY['Light heavyweight','Cruiserweight','Super heavyweight','Middleweight','Welterweight','Bantamweight'], 400),
(2180, 'TRIVI_YEAH_II', 'SPORTS', NULL, NULL, 'Which country''s cricket team is nicknamed "the Baggy Greens"?', NULL, 'Australia', ARRAY['England','India','South Africa','New Zealand','Pakistan','Sri Lanka'], 400),
-- WORLD_HISTORY
(2181, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which ship famously sank in the North Atlantic after hitting an iceberg in 1912?', NULL, 'The Titanic', ARRAY['The Lusitania','The Britannic','The Queen Mary','The Olympic','The Carpathia','The Andrea Doria'], 100),
(2182, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Who was the first man to walk on the Moon?', NULL, 'Neil Armstrong', ARRAY['Buzz Aldrin','Yuri Gagarin','John Glenn','Michael Collins','Alan Shepard','Jim Lovell'], 100),
(2183, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which country gifted the Statue of Liberty to the United States?', NULL, 'France', ARRAY['England','Spain','Italy','Netherlands','Belgium','Portugal'], 100),
(2184, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'In which city would you find the ancient Colosseum?', NULL, 'Rome', ARRAY['Athens','Paris','Cairo','Istanbul','Pompeii','Naples'], 100),
(2185, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which US president appears on the one-dollar bill?', NULL, 'George Washington', ARRAY['Abraham Lincoln','Thomas Jefferson','Benjamin Franklin','Andrew Jackson','John Adams','Ulysses S. Grant'], 100),
(2186, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which empire built the extensive road network and city of Machu Picchu in Peru?', NULL, 'The Inca Empire', ARRAY['The Aztec Empire','The Maya civilization','The Olmec civilization','The Spanish Empire','The Toltec civilization','The Chimu civilization'], 200),
(2187, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which war was fought between the North and South regions of the United States from 1861 to 1865?', NULL, 'The American Civil War', ARRAY['The Revolutionary War','The War of 1812','The Mexican-American War','The Spanish-American War','The French and Indian War','World War I'], 200),
(2188, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which country was formerly known as Persia?', NULL, 'Iran', ARRAY['Iraq','Turkey','Syria','Afghanistan','Egypt','Jordan'], 200),
(2189, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Who was the famous queen of ancient Egypt who allied with Mark Antony?', NULL, 'Cleopatra', ARRAY['Nefertiti','Hatshepsut','Isis','Ankhesenamun','Nefertari','Tiye'], 200),
(2190, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which country was the first to grant women the right to vote in national elections, in 1893?', NULL, 'New Zealand', ARRAY['United States','United Kingdom','Australia','Finland','Norway','Canada'], 200),
(2191, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which naval battle in 1805 saw British Admiral Horatio Nelson defeat a combined French and Spanish fleet?', NULL, 'The Battle of Trafalgar', ARRAY['The Battle of the Nile','The Battle of Jutland','The Battle of Waterloo','The Battle of Copenhagen','The Battle of Leyte Gulf','The Battle of Midway'], 300),
(2192, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which event in 1929 triggered a decade-long global economic depression?', NULL, 'The Wall Street Crash', ARRAY['World War I','The Dust Bowl','The oil crisis','The gold rush','The banking panic of 1907','The Treaty of Versailles'], 300),
(2193, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which explorer is credited with leading the first expedition to circumnavigate the globe, though he died before completing it?', NULL, 'Ferdinand Magellan', ARRAY['Christopher Columbus','Vasco da Gama','Francis Drake','James Cook','Marco Polo','Hernán Cortés'], 300),
(2194, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which Indian leader is famous for leading a nonviolent independence movement against British rule?', NULL, 'Mahatma Gandhi', ARRAY['Jawaharlal Nehru','Subhas Chandra Bose','Muhammad Ali Jinnah','Bhagat Singh','Sardar Patel','Rabindranath Tagore'], 300),
(2195, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which 1917 revolution led to the end of Tsarist rule in Russia?', NULL, 'The Russian Revolution', ARRAY['The French Revolution','The Decembrist Revolt','The Paris Commune','The Prague Spring','The Hungarian Revolution','The Cultural Revolution'], 300),
(2196, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which peace treaty in 1648 ended the Thirty Years'' War in Europe?', NULL, 'The Peace of Westphalia', ARRAY['The Treaty of Utrecht','The Treaty of Tordesillas','The Congress of Vienna','The Treaty of Augsburg','The Treaty of Westminster','The Edict of Nantes'], 400),
(2197, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which ancient Mesopotamian king is credited with one of the earliest known written law codes?', NULL, 'Hammurabi', ARRAY['Sargon of Akkad','Nebuchadnezzar II','Ashurbanipal','Gilgamesh','Cyrus the Great','Darius I'], 400),
(2198, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which dynasty ruled Egypt during the reign of the boy pharaoh Tutankhamun?', NULL, 'The Eighteenth Dynasty', ARRAY['The Nineteenth Dynasty','The Fourth Dynasty','The Twelfth Dynasty','The Ptolemaic Dynasty','The Twentieth Dynasty','The Sixth Dynasty'], 400),
(2199, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which 1453 event is often cited as marking the end of the Byzantine Empire?', NULL, 'The Fall of Constantinople', ARRAY['The Fall of Rome','The Sack of Jerusalem','The Siege of Vienna','The Fourth Crusade','The Fall of Antioch','The Battle of Manzikert'], 400),
(2200, 'TRIVI_YEAH_II', 'WORLD_HISTORY', NULL, NULL, 'Which Carthaginian general famously crossed the Alps with an army that included war elephants?', NULL, 'Hannibal', ARRAY['Hamilcar Barca','Hasdrubal','Scipio Africanus','Pyrrhus of Epirus','Julius Caesar','Alexander the Great'], 400);
