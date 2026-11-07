-- Trivi-Yeah II: Final Wager content pool -- the Final-Jeopardy-style
-- closer that runs once after round 3's board clears. Each row is one
-- complete game's worth of material: a dramatic "topic" (subcategory), a
-- single harder free-text question, and now a short list of accepted
-- answer variants. Never drawn into the regular 3x4 board --
-- buildTriviYeahIIBoard only ever queries the 10 keys in
-- TRIVI_YEAH_II_CATEGORIES, and 'FINAL_WAGER' is deliberately not one of
-- them.
--
-- Answer matching (see isFinalWagerAnswerCorrect in gameEngine.js): the
-- submitted text is normalized (trim, uppercase, strip a few punctuation
-- marks, collapse whitespace) and checked against every normalized entry
-- in accepted_answers -- exact match, or within a small typo tolerance
-- (scaled to the variant's length) if not exact. Two different problems,
-- two different tools: accepted_answers is for legitimately different
-- phrasings an author can actually foresee (surname only, short title vs.
-- long title, a national spelling variant) and should be listed by hand;
-- the fuzzy fallback is for misspellings nobody explicitly anticipated,
-- and needs no authoring at all. Rows with no accepted_answers (or an
-- empty one) fall back to [correct_answer] alone.
--
-- Schema notes, for writing your own:
--   question_number   globally unique across the whole table -- now
--                     numbered on insert, after the highest existing one
--                     (the original batch used fixed numbers 2201-2220).
--   category          must be exactly 'FINAL_WAGER' to be eligible here.
--   subcategory       doubles as the dramatic "topic" shown before
--                     wagering opens -- write it like a game-show category
--                     name (short, all-caps reads well on the TV).
--   accepted_answers  a short TEXT[] of legitimate alternate phrasings,
--                     always including the full canonical form from
--                     correct_answer. Keep it to real alternate wordings,
--                     not misspellings -- the fuzzy matcher already
--                     covers typos of whatever you do list.
--   points            unused for scoring (the player's own wager decides
--                     the stakes) -- 500 here just visually marks these as
--                     the "hardest tier," not read by the game.
--   visual_asset      a picture path (/flags/..., /art/...) or NULL for
--                     text only; served under a disguised address.
--   wrong_answers     unused (free-text, no multiple choice) -- left NULL.
--
-- Style (Randy, Nov 2026): the Final Wager is typed, so every question
-- carries a clue -- but a "second cousin" to the answer, never the answer
-- itself: something that takes a bit of knowledge and reasoning to turn
-- into the answer ("...also names the top bone of your spine" for Atlas,
-- "the same Latin word as the chemical symbol Ag" for Argentina). Aim for
-- 250-350 difficulty on average: a famous fact on its own (the painter
-- who cut off his ear) is too easy, and a capital city is never the clue
-- unless the capital is the point of the question. 133 questions (46 added
-- Nov 2026).
--
-- Picture questions (Randy, Nov 2026: "an interesting anomaly"): 17 rows
-- (about 1 in 8) carry a visual_asset -- a flag, landmark, painting or
-- logo -- shown once answering opens, like Country Monkey's, always with
-- a knowledge clue in the text. No guard against a picture that was also
-- on the board earlier: Randy, "the occurrence would be rare by
-- definition -- and fun if encountered."

-- Adds the accepted_answers column if this database doesn't have it yet.
-- Without it, the INSERT below fails AFTER the DELETE has already run --
-- which silently left a database with zero Final Wager questions (found
-- after a family playtest lost its final question). Safe to re-run: does
-- nothing if the column already exists. The delete and insert below run
-- in one transaction, so a failure leaves the old questions in place.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS accepted_answers TEXT[];

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FINAL_WAGER';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, accepted_answers, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (),
       'TRIVI_YEAH_II', 'FINAL_WAGER', v.topic, NULL, v.question_text, v.visual_asset, v.correct_answer, NULL, v.accepted_answers, 500
FROM (VALUES
('HIGH PLACES', 'Which South American seat of government, whose name promises calm, sits nearly 12,000 feet up in the Andes, the highest in the world?', 'La Paz', ARRAY['La Paz', 'LaPaz'], NULL),
('CLASSIC LITERATURE', 'Which 1818 novel, subtitled "The Modern Prometheus," was dreamed up during a ghost-story contest at Lord Byron''s villa on Lake Geneva?', 'Frankenstein', ARRAY['Frankenstein', 'Frankenstein; or, The Modern Prometheus'], NULL),
('GREEK MYTHOLOGY', 'Which Titan, sentenced by Zeus to shoulder the sky, also names the top bone of your spine, the one that holds up your head?', 'Atlas', ARRAY['Atlas'], NULL),
('U.S. PRESIDENTS', 'Which president, the only one married in the White House, was both the 22nd and 24th, and shares his surname with the Lake Erie city that''s home to the Rock and Roll Hall of Fame?', 'Grover Cleveland', ARRAY['Grover Cleveland', 'Cleveland'], NULL),
('HUMAN ANATOMY', 'Doctors often thread a heart catheter up through an artery in the groin named for which bone, the longest in your body?', 'Femur', ARRAY['Femur', 'Thigh Bone', 'Thighbone'], NULL),
('INVENTIONS', 'Which inventor, whose mother and wife were both deaf, lives on in the unit that measures how loud a sound is?', 'Alexander Graham Bell', ARRAY['Alexander Graham Bell', 'Alexander Bell', 'Graham Bell', 'Bell'], NULL),
('ART HISTORY', 'Which painter, kept afloat for years by his art-dealer brother Theo, painted the view from his asylum window at Saint-Remy in 1889?', 'Vincent van Gogh', ARRAY['Vincent van Gogh', 'Van Gogh', 'Vincent'], NULL),
('THE ELEMENTS', 'Which element did Marie Curie name for her homeland, at the time not even on the map, carved up between Russia, Prussia and Austria?', 'Polonium', ARRAY['Polonium'], NULL),
('ANCIENT WONDERS', 'Which of the Seven Wonders, built on an island off the coast of Egypt, gave French its word "phare" and Spanish and Italian their word "faro"?', 'The Lighthouse of Alexandria', ARRAY['The Lighthouse of Alexandria', 'Lighthouse of Alexandria', 'Pharos of Alexandria', 'The Pharos', 'Pharos', 'Lighthouse', 'The Lighthouse', 'Alexandria Lighthouse'], NULL),
('SHAKESPEARE', 'Which Shakespeare tragedy''s title hero, "the Moor of Venice," is driven to smother his wife over a lost handkerchief?', 'Othello', ARRAY['Othello', 'The Tragedy of Othello'], NULL),
('ANIMAL KINGDOM', 'Which animals belong to the order Chiroptera (Greek for "hand-wing") and make up about a fifth of all mammal species?', 'Bats', ARRAY['Bats', 'Bat'], NULL),
('SPACE EXPLORATION', 'The first artificial satellite, launched in 1957, had a Russian name meaning "fellow traveler." What was it?', 'Sputnik', ARRAY['Sputnik', 'Sputnik 1', 'Sputnik I'], NULL),
('ANCIENT CHINA', 'Which emperor is guarded in death by some 8,000 clay soldiers, and may have given China its name in the West?', 'Qin Shi Huang', ARRAY['Qin Shi Huang', 'Qin Shi Huangdi', 'Shi Huangdi', 'Qin Shihuang', 'Shihuangdi', 'Qin'], NULL),
('ICONIC ALBUMS', 'Which 1977 Fleetwood Mac album, made while both of the band''s couples were breaking up, got a title about the gossip?', 'Rumours', ARRAY['Rumours', 'Rumors'], NULL),
('WORLD OCEANS', 'Which ocean did Magellan name for its calm waters, after a stormy passage around the tip of South America?', 'The Pacific Ocean', ARRAY['The Pacific Ocean', 'Pacific Ocean', 'Pacific', 'The Pacific'], NULL),
('NORSE MYTHOLOGY', 'Odin''s eight-legged horse has a name that means "the slippery one." What is it?', 'Sleipnir', ARRAY['Sleipnir', 'Sleipner'], NULL),
('PHYSICS', 'Curling sweepers brush the ice ahead of the stone to cut down on which force, whose name comes from the Latin for "rubbing"?', 'Friction', ARRAY['Friction'], NULL),
('FILM HISTORY', 'Which director of "Metropolis" (1927) went by the German nickname for Friedrich?', 'Fritz Lang', ARRAY['Fritz Lang', 'Lang'], NULL),
('WORLD LANDMARKS', 'Which white-marble tomb, its name an echo of the wife it was built for, did Shah Jahan gaze at from house arrest across the river?', 'The Taj Mahal', ARRAY['The Taj Mahal', 'Taj Mahal'], NULL),
('SPORTS HISTORY', 'Which youngest-ever heavyweight champion, crowned at 20 in 1986, got his own "Punch-Out!!" game from Nintendo?', 'Mike Tyson', ARRAY['Mike Tyson', 'Tyson', 'Michael Tyson', 'Iron Mike'], NULL),
('AMERICAN FRONTIER', 'Which frontier city, named for a French king, was the starting point for Lewis and Clark?', 'St. Louis', ARRAY['St. Louis', 'Saint Louis', 'St Louis'], NULL),
('BASEBALL RIVALS', 'The Chicago Cubs'' ''arch'' rivals play baseball in which city?', 'St. Louis', ARRAY['St. Louis', 'Saint Louis', 'St Louis', 'St. Louis Cardinals', 'Cardinals'], NULL),
('STATE NAMES', 'Which state takes its name from the snowy Sierra where the Donner Party was trapped in 1846, though the pass itself is in the state next door?', 'Nevada', ARRAY['Nevada'], NULL),
('STATE NAMES', 'Which state is named, in Spanish, for the shade of the muddy river that carved the Grand Canyon?', 'Colorado', ARRAY['Colorado'], NULL),
('STATE NAMES', 'Which U.S. state did a Spanish explorer name for the flowery Easter season, the "Feast of Flowers," when he landed there?', 'Florida', ARRAY['Florida'], NULL),
('COUNTRY NAMES', 'Which country''s name comes from the same Latin word as the chemical symbol Ag?', 'Argentina', ARRAY['Argentina'], NULL),
('COUNTRY NAMES', 'Which country owns the Galapagos Islands and is named for an imaginary line?', 'Ecuador', ARRAY['Ecuador'], NULL),
('COUNTRY NAMES', 'Which country did explorers name after an Italian city of canals, when they saw villages on stilts in Lake Maracaibo?', 'Venezuela', ARRAY['Venezuela'], NULL),
('COUNTRY NAMES', 'Which West African country, the world''s top cocoa grower, is named for a trade good banned by a 1989 treaty?', 'Ivory Coast', ARRAY['Ivory Coast', 'Côte d''Ivoire', 'Cote d''Ivoire', 'Cote dIvoire'], NULL),
('THE PLANETS', 'Which planet, named for the Roman god of war, gets its color from rust?', 'Mars', ARRAY['Mars'], NULL),
('THE PLANETS', 'Which planet, found in 1846 by math before anyone saw it, is named for the god the Greeks called Poseidon?', 'Neptune', ARRAY['Neptune'], NULL),
('THE PLANETS', 'Which planet, the hottest in the solar system though not the closest to the Sun, shares its name with an armless statue in the Louvre?', 'Venus', ARRAY['Venus'], NULL),
('THE ELEMENTS', 'Which element was spotted in sunlight before it was found on Earth, and takes its name from the same Greek word as "heliocentric"?', 'Helium', ARRAY['Helium'], NULL),
('THE ELEMENTS', 'Which light metal in your phone battery is named for the same Greek word that ends "monolith"?', 'Lithium', ARRAY['Lithium'], NULL),
('THE ELEMENTS', 'Which element did Lavoisier name "acid-maker" in Greek, wrongly believing every acid contained it?', 'Oxygen', ARRAY['Oxygen'], NULL),
('WORD ORIGINS', 'The "potamus" in hippopotamus is the same Greek word as in Mesopotamia, the land between two of what?', 'Rivers', ARRAY['Rivers', 'River', 'The Rivers'], NULL),
('WORD ORIGINS', 'Which big animal''s name joins the Greek root of "rhinoplasty" to a word for horn?', 'Rhinoceros', ARRAY['Rhinoceros', 'Rhino'], NULL),
('WORD ORIGINS', 'Which great ape, found wild only on Borneo and Sumatra, has a Malay name meaning "person of the forest"?', 'Orangutan', ARRAY['Orangutan', 'Orangutang', 'Orang-utan'], NULL),
('WORD ORIGINS', 'The "saur" in dinosaur is Greek for which kind of reptile, the kind that can drop its tail to escape?', 'Lizard', ARRAY['Lizard', 'Lizards'], NULL),
('WORD ORIGINS', 'Which word for a tropical storm comes from a Caribbean storm god, and names the University of Miami''s teams?', 'Hurricane', ARRAY['Hurricane', 'Hurricanes'], NULL),
('WORD ORIGINS', 'Which chess piece''s name comes from the Persian word for a chariot, though today''s piece looks like a tower?', 'Rook', ARRAY['Rook', 'The Rook', 'Castle'], NULL),
('WORD ORIGINS', 'Which flaky pastry''s name is French for "growing," as in a waxing moon?', 'Croissant', ARRAY['Croissant'], NULL),
('WORD ORIGINS', 'Which thin pasta, whose name means "little worms," shares its Latin root with "vermin"?', 'Vermicelli', ARRAY['Vermicelli'], NULL),
('WORD ORIGINS', 'Which dip joins the Aztec words for avocado and sauce, the same "sauce" word as Mexico''s chocolate-chili mole?', 'Guacamole', ARRAY['Guacamole', 'Guac'], NULL),
('WORD ORIGINS', 'The piano''s full name, "pianoforte," means "soft-___" in Italian, the same "forte" that names a fortress. Fill in the blank.', 'Loud', ARRAY['Loud', 'Strong'], NULL),
('MYTHOLOGY', 'Which Greek hero did his mother Thetis dip in the River Styx, holding him by the spot that now names a tendon?', 'Achilles', ARRAY['Achilles'], NULL),
('MYTHOLOGY', 'Wednesday is named, through his Old English name, for which Norse god who traded an eye for wisdom?', 'Odin', ARRAY['Odin', 'Woden', 'Wotan', 'Odinn'], NULL),
('MYTHOLOGY', 'Which Greek goddess, the "Winged Victory" of Samothrace in the Louvre, gave her name to a 1950s Army missile and a running shoe?', 'Nike', ARRAY['Nike'], NULL),
('MYTHOLOGY', 'Which messenger god, with his winged sandals, names the Paris fashion house famous for its Birkin bag?', 'Hermes', ARRAY['Hermes', 'Hermès'], NULL),
('MYTHOLOGY', 'The word "mausoleum" comes from the tomb of which ruler of Caria, one of the Seven Wonders at Halicarnassus?', 'Mausolus', ARRAY['Mausolus', 'Mausollos'], NULL),
('FAMOUS NAMES', 'Which British navy chief, the patron Captain Cook named Hawaii''s islands for, supposedly invented a lunch at the card table?', 'The Earl of Sandwich', ARRAY['Sandwich', 'Earl of Sandwich', 'The Earl of Sandwich', 'John Montagu', 'Lord Sandwich'], NULL),
('FAMOUS NAMES', 'Which golfer, born Eldrick, got his nickname from a Vietnam War friend of his father''s, a name fit for a big cat?', 'Tiger Woods', ARRAY['Tiger Woods', 'Tiger', 'Woods', 'Eldrick Woods'], NULL),
('FAMOUS NAMES', 'Which Beatle, born Richard Starkey, later narrated "Thomas the Tank Engine"?', 'Ringo Starr', ARRAY['Ringo Starr', 'Ringo', 'Starr'], NULL),
('FAMOUS NAMES', 'Which painter of "The School of Athens" in the Vatican lends his name to the turtle who is "cool, but rude"?', 'Raphael', ARRAY['Raphael', 'Raffaello'], NULL),
('FAMOUS NAMES', 'Which fictional detective, a retired Belgian policeman, trusts his "little grey cells"?', 'Hercule Poirot', ARRAY['Hercule Poirot', 'Poirot'], NULL),
('COMPANY NAMES', 'Which search engine took its name from a misspelling of the number 1 followed by 100 zeros?', 'Google', ARRAY['Google'], NULL),
('COMPANY NAMES', 'Which company, nearly called "Cadabra," is named for the river that carries more water than any other?', 'Amazon', ARRAY['Amazon', 'Amazon.com'], NULL),
('COMPANY NAMES', 'Which Korean electronics giant''s name means "three stars"?', 'Samsung', ARRAY['Samsung'], NULL),
('COMPANY NAMES', 'Which toy brick company''s name comes from the Danish "leg godt," meaning "play well"?', 'LEGO', ARRAY['LEGO', 'Lego'], NULL),
('COMPANY NAMES', 'Which flat-pack furniture company''s four letters stand for its founder, his farm Elmtaryd and his village, Agunnaryd?', 'IKEA', ARRAY['IKEA', 'Ikea'], NULL),
('SPORTS', 'Which Olympic martial art, founded by Jigoro Kano in 1882, has a name meaning "the gentle way"?', 'Judo', ARRAY['Judo'], NULL),
('SPORTS', 'Which Olympic event, created by the founder of the modern Games for 1912, counts its contests in its Greek name: fencing, swimming, riding, running and shooting?', 'Modern Pentathlon', ARRAY['Modern Pentathlon', 'Pentathlon'], NULL),
('SPORTS', 'Which Chicago NBA team is named for the animal that charges up in a rising stock market?', 'Chicago Bulls', ARRAY['Chicago Bulls', 'Bulls', 'The Bulls'], NULL),
('GEOGRAPHY', 'Which sea''s name means "in the middle of the land" in Latin?', 'Mediterranean Sea', ARRAY['Mediterranean Sea', 'Mediterranean', 'The Mediterranean'], NULL),
('GEOGRAPHY', 'Which mountain range''s name means "home of snow" in Sanskrit?', 'Himalayas', ARRAY['Himalayas', 'Himalaya', 'The Himalayas'], NULL),
('GEOGRAPHY', 'Which continent''s name comes from the Greek for "opposite the bear," the bear being the northern stars?', 'Antarctica', ARRAY['Antarctica'], NULL),
('GEOGRAPHY', 'Which American city was founded in 1781 as "El Pueblo de Nuestra Señora la Reina," named for Our Lady, Queen of heaven''s messengers?', 'Los Angeles', ARRAY['Los Angeles', 'LA', 'L.A.'], NULL),
('GEOGRAPHY', 'Which Canadian city, host of the 1976 Olympics, takes its name from the royal mountain at its heart?', 'Montreal', ARRAY['Montreal', 'Montréal'], NULL),
('GEOGRAPHY', 'Johann Strauss II''s most famous waltz is named for which "blue" river, the second-longest in Europe?', 'Danube', ARRAY['Danube', 'The Danube', 'Danube River'], NULL),
('US HISTORY', 'Which ship that carried the Pilgrims in 1620 shares its name with the state flower of Massachusetts?', 'Mayflower', ARRAY['Mayflower', 'The Mayflower'], NULL),
('US HISTORY', 'In which 1773 protest did the Sons of Liberty, some disguised as Mohawks, dump 342 chests into a harbor?', 'The Boston Tea Party', ARRAY['Boston Tea Party', 'The Boston Tea Party', 'Tea Party'], NULL),
('WORLD HISTORY', 'Which emperor, exiled first to Elba, lends his name to a layered pastry and a short man''s supposed complex?', 'Napoleon', ARRAY['Napoleon', 'Napoleon Bonaparte', 'Bonaparte', 'Napoleon I'], NULL),
('THE BODY', 'The "funny bone" is a nerve beside which arm bone, whose name isn''t as funny as it sounds?', 'Humerus', ARRAY['Humerus'], NULL),
('MOVIES', 'Which 1975 movie''s mechanical star, nicknamed "Bruce" after the director''s lawyer, kept breaking down in the salt water?', 'Jaws', ARRAY['Jaws'], NULL),
('BOOKS', 'In the Harry Potter books, which school sits above the village of Hogsmeade?', 'Hogwarts', ARRAY['Hogwarts', 'Hogwarts School of Witchcraft and Wizardry'], NULL),
('SPACE', 'The word "galaxy" comes from the Greek for which drink, after the starry band the Greeks said the goddess Hera spilled?', 'Milk', ARRAY['Milk'], NULL),
('FLAGS', 'This flag''s Maasai shield and crossed spears stand for the defense of freedom, and it grew out of the banner of the independence party KANU. Which country flies it?', 'Kenya', ARRAY['Kenya'], '/flags/ke.svg'),
('FLAGS', 'The tree on this flag supplied the timber King Hiram of Tyre shipped for Solomon''s Temple. Which country flies it?', 'Lebanon', ARRAY['Lebanon'], '/flags/lb.svg'),
('FLAGS', 'The Druk on this flag gives its Himalayan kingdom a nickname: the land that measures Gross National Happiness. Which country flies it?', 'Bhutan', ARRAY['Bhutan'], '/flags/bt.svg'),
('FLAGS', 'The only national flag with a modern rifle, crossed with a hoe. Its country shares its name with the channel that separates it from Madagascar. Which country?', 'Mozambique', ARRAY['Mozambique', 'Mocambique'], '/flags/mz.svg'),
('LANDMARKS', 'This city''s name is Greek for "rock" (as is the apostle Peter''s), and its Treasury hid the Holy Grail in an Indiana Jones movie. Name it.', 'Petra', ARRAY['Petra'], '/structures/petra-landmark.webp'),
('LANDMARKS', 'The largest religious monument on Earth, its silhouette flies on its own country''s flag. Name it.', 'Angkor Wat', ARRAY['Angkor Wat', 'Angkor'], '/structures/angkor-wat.webp'),
('LANDMARKS', 'These moai stand on an island named for the holy day a Dutch explorer arrived in 1722. Name the island.', 'Easter Island', ARRAY['Easter Island', 'Rapa Nui', 'Isla de Pascua'], '/structures/easter-island.webp'),
('ART', 'This painter left only about 35 paintings, nearly all set in the rooms of his hometown, Delft. Who is he?', 'Johannes Vermeer', ARRAY['Johannes Vermeer', 'Vermeer', 'Jan Vermeer'], '/art/girl-pearl-earring.webp'),
('ART', 'This 1782 portrait made its painter''s name; he went on to paint the George Washington on today''s $1 bill. Who is he?', 'Gilbert Stuart', ARRAY['Gilbert Stuart', 'Stuart'], '/art/the-skater.webp'),
('LOGOS', 'This carmaker''s six stars are a star cluster, and the company took the cluster''s Japanese name. Name the carmaker.', 'Subaru', ARRAY['Subaru'], '/iconic-logos/subaru.webp'),
('LOGOS', 'This chain''s twin-tailed siren hints at the sea, and its name comes from the first mate in which 1851 novel?', 'Moby-Dick', ARRAY['Moby-Dick', 'Moby Dick', 'The Whale', 'Moby-Dick; or, The Whale'], '/iconic-logos/starbucks.webp'),
('THE ELEMENTS', 'Which heavy metal''s Latin name, plumbum, also gave English the word "plumber," since Roman pipes were made of it?', 'Lead', ARRAY['Lead'], NULL),
('WORD ORIGINS', 'Which two-word chess finish comes from the Persian "shah mat," often translated "the king is helpless"?', 'Checkmate', ARRAY['Checkmate', 'Check mate', 'Mate'], NULL),
('MUSIC', 'Which composer of "The Magic Flute" went by Amadeus, a name meaning "loved by God"?', 'Wolfgang Amadeus Mozart', ARRAY['Wolfgang Amadeus Mozart', 'Mozart', 'Wolfgang Mozart', 'W. A. Mozart'], NULL),
('U.S. PRESIDENTS', 'Which president''s refusal to shoot a bear tied to a tree, on a 1902 hunt in Mississippi, inspired a famous stuffed toy?', 'Theodore Roosevelt', ARRAY['Theodore Roosevelt', 'Teddy Roosevelt', 'Roosevelt', 'TR', 'Theodore', 'Teddy'], NULL),
('U.S. PRESIDENTS', 'Which president, a mining engineer whose name is on the giant dam on the Colorado River, had been in office only months when the stock market crashed in 1929?', 'Herbert Hoover', ARRAY['Herbert Hoover', 'Hoover'], NULL),
('INVENTIONS', 'Which Scottish engineer, who made the steam engine practical, lends his name to the unit printed on every light bulb box?', 'James Watt', ARRAY['James Watt', 'Watt'], NULL),
('PHYSICS', 'Which German physicist, who proved radio waves exist, names the unit you see as "mega" on every FM dial?', 'Heinrich Hertz', ARRAY['Heinrich Hertz', 'Hertz'], NULL),
('THE BODY', 'Which bone, the only one in your body not touching another bone, anchors your tongue and has a name meaning "shaped like the letter upsilon"?', 'Hyoid', ARRAY['Hyoid', 'Hyoid bone', 'The hyoid'], NULL),
('GREEK MYTHOLOGY', 'Which king of Corinth, doomed to roll a boulder uphill forever, lends his name to any endless, pointless task?', 'Sisyphus', ARRAY['Sisyphus', 'Sisyphos'], NULL),
('GREEK MYTHOLOGY', 'Which mythical king, punished with water that drained away and fruit just out of reach, gave English the word "tantalize"?', 'Tantalus', ARRAY['Tantalus', 'Tantalos'], NULL),
('WORD ORIGINS', 'Which word for a crowd-stirring politician who plays on fears comes from the Greek for "leader of the people"?', 'Demagogue', ARRAY['Demagogue', 'Demagog'], NULL),
('FOOD', 'Which salad is named for a Tijuana restaurant owner who threw it together in 1924, not for a Roman ruler?', 'Caesar salad', ARRAY['Caesar salad', 'Caesar'], NULL),
('FOOD', 'Which coffee-soaked Italian dessert has a name meaning "pick me up"?', 'Tiramisu', ARRAY['Tiramisu', 'Tiramisù'], NULL),
('FOOD', 'Which cheese is named for a Somerset village whose limestone gorge has caves where it was once aged?', 'Cheddar', ARRAY['Cheddar', 'Cheddar cheese'], NULL),
('THE PLANETS', 'Which planet''s moons Titania and Oberon are named for the fairy queen and king in "A Midsummer Night''s Dream"?', 'Uranus', ARRAY['Uranus'], NULL),
('SPACE', 'Which world''s largest moon, Charon, is named for the ferryman of the dead, fitting for a world named for the god of the underworld?', 'Pluto', ARRAY['Pluto'], NULL),
('WORLD OCEANS', 'Which sea, the only one with no coastline at all, is named for the floating seaweed that Columbus''s sailors found there?', 'Sargasso Sea', ARRAY['Sargasso Sea', 'Sargasso', 'The Sargasso Sea'], NULL),
('COUNTRY NAMES', 'Which country''s name means "land of the Franks"?', 'France', ARRAY['France'], NULL),
('COUNTRY NAMES', 'Portuguese sailors called it "Ilha Formosa," the beautiful island. What do we usually call it today?', 'Taiwan', ARRAY['Taiwan', 'Formosa'], NULL),
('COUNTRY NAMES', 'Which island nation was named for the Spanish prince who became King Philip II?', 'The Philippines', ARRAY['The Philippines', 'Philippines'], NULL),
('STATE NAMES', 'Which state''s name comes from the French for "green mountain"?', 'Vermont', ARRAY['Vermont'], NULL),
('STATE NAMES', 'Which state is named for Henrietta Maria, the queen of England''s King Charles I?', 'Maryland', ARRAY['Maryland'], NULL),
('U.S. HISTORY', 'Which land, mocked as "Seward''s Folly," did the U.S. buy from Russia in 1867 for about two cents an acre?', 'Alaska', ARRAY['Alaska', 'The Alaska Purchase'], NULL),
('U.S. HISTORY', 'Whose oversized signature on the Declaration of Independence made his name slang for any signature?', 'John Hancock', ARRAY['John Hancock', 'Hancock'], NULL),
('WORLD HISTORY', 'Which queen of Egypt, the last of the Ptolemies, was actually of Greek descent and died in 30 BC?', 'Cleopatra', ARRAY['Cleopatra', 'Cleopatra VII'], NULL),
('WORLD HISTORY', 'Which wall, begun in 122 AD to mark the northern edge of Roman Britain, is named for the emperor who ordered it?', 'Hadrian''s Wall', ARRAY['Hadrian''s Wall', 'Hadrians Wall', 'Hadrian'], NULL),
('WORLD WARS', 'The Normandy landings of June 6, 1944, were part of an operation named for a lord above other lords. What was its code name?', 'Operation Overlord', ARRAY['Operation Overlord', 'Overlord'], NULL),
('CLASSIC LITERATURE', 'Which Russian novel, its title a pair of opposites, follows Pierre, Natasha and Prince Andrei through Napoleon''s invasion?', 'War and Peace', ARRAY['War and Peace', 'War & Peace'], NULL),
('CLASSIC LITERATURE', 'Which writer of the first modern detective story, "The Murders in the Rue Morgue," inspired the name of Baltimore''s NFL team?', 'Edgar Allan Poe', ARRAY['Edgar Allan Poe', 'Poe', 'Edgar Poe', 'Edgar Allen Poe'], NULL),
('MOVIES', 'Which 1939 film turned a pair of silver shoes from the book into ruby slippers, to show off its Technicolor?', 'The Wizard of Oz', ARRAY['The Wizard of Oz', 'Wizard of Oz'], NULL),
('MUSIC', 'Which composer kept writing after going deaf, including a Ninth Symphony whose "Ode to Joy" is now Europe''s anthem?', 'Ludwig van Beethoven', ARRAY['Ludwig van Beethoven', 'Beethoven'], NULL),
('SPORTS', 'In which sport might "love," meaning zero, come from the French "l''oeuf," an egg shaped like a zero?', 'Tennis', ARRAY['Tennis'], NULL),
('SPORTS', 'Which 26.2-mile race is named for a Greek town whose messenger supposedly ran to Athens with news of victory?', 'Marathon', ARRAY['Marathon', 'The Marathon'], NULL),
('SCIENCE', 'Which Caltech seismologist''s name was on the earthquake scale the news quoted for decades?', 'Charles Richter', ARRAY['Charles Richter', 'Richter'], NULL),
('SCIENCE', 'Which modern science gets its name, through medieval alchemy, from the Arabic "al-kimiya"?', 'Chemistry', ARRAY['Chemistry'], NULL),
('ANIMAL KINGDOM', 'A popular myth says this animal''s name means "I don''t understand" in an Aboriginal language, but it really just names the animal. Which one?', 'Kangaroo', ARRAY['Kangaroo', 'Kangaroos', 'Roo'], NULL),
('ANIMAL KINGDOM', 'A group of which clever black birds is called a "murder"?', 'Crows', ARRAY['Crows', 'Crow'], NULL),
('THE BODY', 'Which colored part of the eye shares its name with the Greek goddess of the rainbow?', 'Iris', ARRAY['Iris', 'The iris'], NULL),
('TECHNOLOGY', 'Which wireless technology is named for a Viking king, Harald, whose runic initials make up its logo?', 'Bluetooth', ARRAY['Bluetooth', 'Blue tooth'], NULL),
('INVENTIONS', 'Which inventor, Thomas Edison''s rival in the war over AC power, names both a unit of magnetism and an electric carmaker?', 'Nikola Tesla', ARRAY['Nikola Tesla', 'Tesla'], NULL),
('FLAGS', 'The Buddha was born in this country, at Lumbini, and its flag is the only national flag that isn''t a rectangle. Which country?', 'Nepal', ARRAY['Nepal'], '/flags/np.svg'),
('FLAGS', 'This flag''s lion holds a sword, and the island''s old name, Serendip, gave English the word "serendipity." Which country?', 'Sri Lanka', ARRAY['Sri Lanka', 'Ceylon'], '/flags/lk.svg'),
('FLAGS', 'One of only two national flags showing a map of its own land, it belongs to the island that gave copper its Latin name, cuprum. Which country?', 'Cyprus', ARRAY['Cyprus'], '/flags/cy.svg'),
('LANDMARKS', 'This Inca citadel, brought to the world''s attention by Hiram Bingham in 1911, has a Quechua name meaning "old peak." Name it.', 'Machu Picchu', ARRAY['Machu Picchu', 'Machu Pichu', 'Machupicchu'], '/structures/machu-picchu.webp'),
('ART', 'This print''s artist signed some later works "the old man mad about painting." Who made it?', 'Katsushika Hokusai', ARRAY['Katsushika Hokusai', 'Hokusai'], '/art/great-wave.webp'),
('LOGOS', 'This carmaker''s three-pointed star stands for land, sea and air, and its first name came from a businessman''s daughter. Name the brand.', 'Mercedes-Benz', ARRAY['Mercedes-Benz', 'Mercedes', 'Mercedes Benz', 'Benz'], '/iconic-logos/mercedes-benz.webp')
) AS v(topic, question_text, correct_answer, accepted_answers, visual_asset);

COMMIT;

-- Check: should return 133 (17 with a picture).
SELECT COUNT(*) AS questions, COUNT(visual_asset) AS with_picture FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FINAL_WAGER';
