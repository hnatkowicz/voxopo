-- ============================================================================
-- content/sql/famous_knights.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/famous_knights.csv, the master copy of the
-- Thinking Pants category FAMOUS_KNIGHTS. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FAMOUS_KNIGHTS';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which legendary king is said to have led the Knights of the Round Table at Camelot?', NULL,
        'King Arthur', ARRAY['King Lear', 'King Richard', 'King Henry', 'King Edward', 'King John', 'King Alfred'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'What is the name of the live sketch comedy show that has aired from NYC''s Studio 8H since 1975, often shortened to "SNL"?', NULL,
        'Saturday Night Live', ARRAY['The Tonight Show', 'Late Night', 'MADtv', 'In Living Color', 'The Daily Show', 'Last Week Tonight'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which basketball coach, famous (and infamous) for leading Indiana University, shares his surname with a chess piece that moves in an L-shape?', NULL,
        'Bobby Knight', ARRAY['Bobby Cremins', 'Bobby Hurley', 'Jim Boeheim', 'Mike Krzyzewski', 'Dean Smith', 'John Wooden'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which Motown singer, known for "Midnight Train to Georgia," shares her surname with a chess piece?', NULL,
        'Gladys Knight', ARRAY['Diana Ross', 'Aretha Franklin', 'Patti LaBelle', 'Tina Turner', 'Donna Summer', 'Chaka Khan'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which English musician, former Beatle, was knighted in 1997 for services to music?', NULL,
        'Sir Paul McCartney', ARRAY['Sir Elton John', 'Sir Mick Jagger', 'Sir Ray Davies', 'Sir Rod Stewart', 'Sir Tom Jones', 'Sir Cliff Richard'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'What is the name of the legendary sword Arthur received from the Lady of the Lake?', NULL,
        'Excalibur', ARRAY['Durendal', 'Joyeuse', 'Andúril', 'Glamdring', 'Hrunting', 'Gram'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which wizard was the young Arthur''s mentor and adviser at Camelot?', NULL,
        'Merlin', ARRAY['Gandalf', 'Morgana', 'Prospero', 'Rasputin', 'Mordred', 'Taliesin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Obi-Wan Kenobi and Yoda belong to which order of knights in "Star Wars"?', NULL,
        'The Jedi', ARRAY['The Sith', 'The Mandalorians', 'The Clone Troopers', 'The Rebels', 'The Inquisitors', 'The Knights of Ren'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In the British honours system, what title does a woman receive as the equivalent of a knighthood?', NULL,
        'Dame', ARRAY['Lady', 'Duchess', 'Baroness', 'Countess', 'Madam', 'Marchioness'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In which medieval sport did two mounted knights charge at each other with lances?', NULL,
        'Jousting', ARRAY['Fencing', 'Polo', 'Archery', 'Falconry', 'Dressage', 'Hurling'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'What was a knight''s young attendant, who carried his shield and armor, called?', NULL,
        'A squire', ARRAY['A herald', 'A jester', 'A steward', 'A vassal', 'A friar', 'A reeve'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which "Rocket Man" singer was knighted in 1998?', NULL,
        'Sir Elton John', ARRAY['Sir Rod Stewart', 'Sir Tom Jones', 'Sir Cliff Richard', 'Sir Paul McCartney', 'Sir Ray Davies', 'Sir Van Morrison'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Rolling Stones frontman was knighted in 2003?', NULL,
        'Sir Mick Jagger', ARRAY['Sir Keith Richards', 'Sir Rod Stewart', 'Sir Roger Daltrey', 'Sir Ray Davies', 'Sir Tom Jones', 'Sir Cliff Richard'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which actor, the first to play James Bond in the official film series, was knighted in 2000?', NULL,
        'Sir Sean Connery', ARRAY['Sir Roger Moore', 'Sir Michael Gambon', 'Sir Christopher Lee', 'Sir Ian Holm', 'Sir Tom Courtenay', 'Sir Derek Jacobi'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which actress, with a knightly ring to her surname, played Elizabeth Swann in "Pirates of the Caribbean"?', NULL,
        'Keira Knightley', ARRAY['Natalie Portman', 'Kate Winslet', 'Emma Watson', 'Rachel Weisz', 'Anne Hathaway', 'Kate Beckinsale'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which 2006 Ben Stiller comedy sees a T. rex skeleton and a Teddy Roosevelt waxwork come alive after closing time?', NULL,
        'Night at the Museum', ARRAY['Jumanji', 'Zathura', 'The Pagemaster', 'Mrs. Doubtfire', 'Ghostbusters II', 'Toy Story'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In Britain, what is the 5th of November, with its fireworks and Guy Fawkes effigies, called?', NULL,
        'Bonfire Night', ARRAY['Boxing Day', 'Burns Night', 'Hogmanay', 'Remembrance Day', 'May Day', 'Twelfth Night'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which nurse, "the Lady with the Lamp," made her name tending soldiers in the Crimean War?', NULL,
        'Florence Nightingale', ARRAY['Mary Seacole', 'Clara Barton', 'Edith Cavell', 'Elizabeth Fry', 'Grace Darling', 'Marie Curie'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which actor, later of "Baywatch," played crime-fighter Michael Knight alongside a talking car?', NULL,
        'David Hasselhoff', ARRAY['Tom Selleck', 'Lee Majors', 'Erik Estrada', 'Richard Dean Anderson', 'Don Johnson', 'Mr. T'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which 1993 stop-motion film follows Jack Skellington, the Pumpkin King of Halloween Town?', NULL,
        'The Nightmare Before Christmas', ARRAY['Corpse Bride', 'Coraline', 'Frankenweenie', 'James and the Giant Peach', 'Beetlejuice', 'ParaNorman'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'In Arthurian legend, which knight was famous for his doomed love affair with Arthur''s wife, Guinevere?', NULL,
        'Lancelot', ARRAY['Gawain', 'Galahad', 'Percival', 'Tristan', 'Bedivere', 'Kay'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which Shakespeare comedy features the mischievous fairy Puck and a weaver whose head is turned into a donkey''s?', NULL,
        'A Midsummer Night''s Dream', ARRAY['Twelfth Night', 'As You Like It', 'Much Ado About Nothing', 'The Tempest', 'The Comedy of Errors', 'All''s Well That Ends Well'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which 1968 horror film, directed by George Romero, is credited with establishing the modern "zombie" genre?', NULL,
        'Night of the Living Dead', ARRAY['Dawn of the Dead', 'The Evil Dead', '28 Days Later', 'Dracula', 'Nosferatu', 'The Omen'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which legendary Christian martyr and knight is the patron saint of England, famously said to have slain a dragon?', NULL,
        'St. George', ARRAY['St. Andrew', 'St. Patrick', 'St. David', 'St. Michael', 'St. Christopher', 'St. Sebastian'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which British naturalist and broadcaster, famous for decades of nature documentaries, was knighted for services to television and conservation?', NULL,
        'Sir David Attenborough', ARRAY['Sir Richard Attenborough', 'Sir David Suzuki', 'Sir Peter Scott', 'Sir Ranulph Fiennes', 'Sir Bear Grylls', 'Sir Chris Packham'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In "Monty Python and the Holy Grail," what do the Knights Who Say "Ni!" demand from Arthur?', NULL,
        'A shrubbery', ARRAY['A herring', 'A coconut', 'A swallow', 'A grail', 'A goose', 'A crown'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which 2001 film starred Heath Ledger as a peasant posing as a nobleman to compete in tournaments, to a classic-rock soundtrack?', NULL,
        'A Knight''s Tale', ARRAY['Ella Enchanted', 'First Knight', 'Robin Hood', 'Kingdom of Heaven', 'Ivanhoe', 'The Musketeer'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In "Harry Potter and the Prisoner of Azkaban," what does Harry summon by sticking out his wand hand at the roadside?', NULL,
        'The Knight Bus', ARRAY['The Hogwarts Express', 'The flying Ford Anglia', 'A Thestral carriage', 'The Beauxbatons carriage', 'The Floo Network', 'A Portkey'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which 1964 Beatles film and album took its title from a slip of the tongue by the band''s drummer?', NULL,
        'A Hard Day''s Night', ARRAY['Help!', 'Yellow Submarine', 'Magical Mystery Tour', 'Let It Be', 'Rubber Soul', 'Revolver'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Christmas carol, first performed in Austria in 1818, was originally "Stille Nacht"?', NULL,
        'Silent Night', ARRAY['O Holy Night', 'O Christmas Tree', 'Away in a Manger', 'The First Noel', 'O Little Town of Bethlehem', 'Hark! The Herald Angels Sing'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Van Gogh painting shows a swirling sky over a sleeping village?', NULL,
        'The Starry Night', ARRAY['Sunflowers', 'Café Terrace at Night', 'The Potato Eaters', 'Wheatfield with Crows', 'Irises', 'The Bedroom'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In "Game of Thrones," which sworn brotherhood guards the Wall?', NULL,
        'The Night''s Watch', ARRAY['The Kingsguard', 'The Unsullied', 'The Gold Cloaks', 'The Faceless Men', 'The Brotherhood Without Banners', 'The Second Sons'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In "How to Train Your Dragon," what species of dragon is Toothless?', NULL,
        'A Night Fury', ARRAY['A Deadly Nadder', 'A Monstrous Nightmare', 'A Gronckle', 'A Hideous Zippleback', 'A Skrill', 'A Thunderdrum'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which actor, Captain Picard on "Star Trek: The Next Generation," was knighted in 2010?', NULL,
        'Sir Patrick Stewart', ARRAY['Sir Ian McKellen', 'Sir Ben Kingsley', 'Sir Derek Jacobi', 'Sir Michael Gambon', 'Sir Kenneth Branagh', 'Sir Christopher Lee'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which actor, Gandalf in "The Lord of the Rings" and Magneto in "X-Men," was knighted in 1991?', NULL,
        'Sir Ian McKellen', ARRAY['Sir Patrick Stewart', 'Sir Michael Gambon', 'Sir Christopher Lee', 'Sir Derek Jacobi', 'Sir Ian Holm', 'Sir John Hurt'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which actor, Hannibal Lecter in "The Silence of the Lambs," was knighted in 1993?', NULL,
        'Sir Anthony Hopkins', ARRAY['Sir Ben Kingsley', 'Sir Michael Caine', 'Sir Ian McKellen', 'Sir Patrick Stewart', 'Sir Derek Jacobi', 'Sir Tom Courtenay'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which creator of Sherlock Holmes was knighted in 1902?', NULL,
        'Sir Arthur Conan Doyle', ARRAY['Sir Walter Scott', 'Sir H. Rider Haggard', 'Sir J. M. Barrie', 'Sir Arthur Quiller-Couch', 'Sir Hugh Walpole', 'Sir P. G. Wodehouse'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which New Zealand beekeeper was knighted in 1953, weeks after he and Tenzing Norgay reached the top of Everest?', NULL,
        'Sir Edmund Hillary', ARRAY['Sir Ernest Shackleton', 'Sir Chris Bonington', 'Sir Ranulph Fiennes', 'Sir Francis Chichester', 'Sir Vivian Fuchs', 'Sir John Hunt'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which director made "The Sixth Sense" (1999) and "Signs" (2002)?', NULL,
        'M. Night Shyamalan', ARRAY['Christopher Nolan', 'Sam Raimi', 'Guillermo del Toro', 'Robert Zemeckis', 'Ron Howard', 'Darren Aronofsky'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which 1980s NBC sitcom starred Harry Anderson as a judge working the late shift in a Manhattan courtroom?', NULL,
        'Night Court', ARRAY['Barney Miller', 'Cheers', 'Taxi', 'Wings', 'Murphy Brown', 'Head of the Class'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which 2008 Batman film, in which Heath Ledger played the Joker, takes its title from the hero''s own nickname?', NULL,
        'The Dark Knight', ARRAY['Batman Begins', 'The Dark Knight Rises', 'Batman Returns', 'Batman Forever', 'Man of Steel', 'Justice League'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which medieval Spanish knight, born Rodrigo Diaz de Vivar, earned the honorary Arabic-derived title meaning "The Lord" or "The Master"?', NULL,
        'El Cid', ARRAY['Don Quixote', 'El Greco', 'El Caudillo', 'El Conquistador', 'Don Juan', 'El Capitan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which fictional Spanish knight, created by Miguel de Cervantes, famously tilts at windmills he mistakes for giants?', NULL,
        'Don Quixote', ARRAY['El Cid', 'Don Juan', 'Sancho Panza', 'El Zorro', 'Amadis of Gaul', 'Roland'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which 1980s TV series starred a crime-fighting ex-cop and his artificially intelligent, talking car named KITT?', NULL,
        'Knight Rider', ARRAY['The A-Team', 'MacGyver', 'Airwolf', 'Magnum, P.I.', 'Miami Vice', 'CHiPs'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Walter Scott novel is named for a Saxon knight who returns from the Crusades in disguise?', NULL,
        'Ivanhoe', ARRAY['Rob Roy', 'Waverley', 'Kenilworth', 'Quentin Durward', 'The Talisman', 'Old Mortality'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Monty Python knight insists "''Tis but a scratch" after losing an arm?', NULL,
        'The Black Knight', ARRAY['The Green Knight', 'The Red Knight', 'The White Knight', 'Sir Robin', 'Sir Bedevere', 'Sir Galahad'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Britain''s most senior order of chivalry, founded by Edward III in the 1340s, is named after what?', NULL,
        'A garter', ARRAY['A bath', 'A thistle', 'A golden fleece', 'A glove', 'A sash', 'A spur'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which jazz great is the subject of Stevie Wonder''s 1977 tribute "Sir Duke"?', NULL,
        'Duke Ellington', ARRAY['Count Basie', 'Louis Armstrong', 'Ella Fitzgerald', 'Glenn Miller', 'Benny Goodman', 'Cab Calloway'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Edward Hopper painting shows late-night customers in a brightly lit diner?', NULL,
        'Nighthawks', ARRAY['Automat', 'Early Sunday Morning', 'Chop Suey', 'American Gothic', 'Christina''s World', 'Gas'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In "One Thousand and One Nights," which storyteller keeps herself alive by leaving each tale unfinished?', NULL,
        'Scheherazade', ARRAY['Shahryar', 'Dunyazad', 'Sinbad', 'Aladdin', 'Ali Baba', 'Jasmine'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'What name was given to Hitler''s violent 1934 purge of the SA leadership?', NULL,
        'The Night of the Long Knives', ARRAY['Kristallnacht', 'The Beer Hall Putsch', 'The Reichstag Fire', 'Operation Valkyrie', 'The Anschluss', 'Operation Barbarossa'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which actor played Newman, Jerry''s nemesis on "Seinfeld"?', NULL,
        'Wayne Knight', ARRAY['Jason Alexander', 'Michael Richards', 'Larry David', 'Patrick Warburton', 'Jerry Stiller', 'Len Lesser'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Oregon businessman co-founded Nike with his running coach, Bill Bowerman?', NULL,
        'Phil Knight', ARRAY['Adi Dassler', 'Steve Prefontaine', 'Howard Schultz', 'Paul Fireman', 'Kevin Plank', 'Jeff Johnson'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which 2010 action comedy starred Tom Cruise as a rogue spy alongside Cameron Diaz?', NULL,
        'Knight and Day', ARRAY['Mr. & Mrs. Smith', 'Killers', 'Date Night', 'The Tourist', 'This Means War', 'Vanilla Sky'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'What is the act of making someone a knight by touching their shoulders with a sword called?', NULL,
        'Dubbing', ARRAY['Anointing', 'Crowning', 'Ordaining', 'Christening', 'Saluting', 'Blessing'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which physicist, famous for his laws of motion and gravity, was knighted in 1705?', NULL,
        'Sir Isaac Newton', ARRAY['Sir Humphry Davy', 'Sir Joseph Banks', 'Sir Francis Bacon', 'Sir William Herschel', 'Sir Christopher Wren', 'Sir Hans Sloane'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which British computer scientist, inventor of the World Wide Web, was knighted in 2004?', NULL,
        'Sir Tim Berners-Lee', ARRAY['Sir Clive Sinclair', 'Sir Jony Ive', 'Sir James Dyson', 'Sir Frank Whittle', 'Sir Alec Issigonis', 'Sir Christopher Cockerell'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which sea captain was knighted aboard his ship, the Golden Hind, in 1581 after sailing around the world?', NULL,
        'Sir Francis Drake', ARRAY['Sir Walter Raleigh', 'Sir John Hawkins', 'Sir Martin Frobisher', 'Sir Richard Grenville', 'Sir Humphrey Gilbert', 'Sir Henry Morgan'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Elizabethan courtier, legend says, spread his cloak over a puddle for Elizabeth I?', NULL,
        'Sir Walter Raleigh', ARRAY['Sir Francis Drake', 'Sir Philip Sidney', 'Sir Thomas More', 'Sir Francis Walsingham', 'Sir Christopher Hatton', 'Sir John Hawkins'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which Chaucer collection of stories, told by pilgrims, opens with the tale told by a knight?', NULL,
        'The Canterbury Tales', ARRAY['Le Morte d''Arthur', 'Piers Plowman', 'The Decameron', 'The Faerie Queene', 'Troilus and Criseyde', 'The Book of the Duchess'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which medieval English knight and statesman, sometimes called "the greatest knight that ever lived," served five English kings and helped seal the Magna Carta?', NULL,
        'William Marshal', ARRAY['Richard the Lionheart', 'Simon de Montfort', 'Thomas Becket', 'Roger Mortimer', 'Hugh Despenser', 'John of Gaunt'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Sir Toby Belch and Sir Andrew Aguecheek are comic knights in which Shakespeare play?', NULL,
        'Twelfth Night', ARRAY['A Midsummer Night''s Dream', 'As You Like It', 'The Merchant of Venice', 'Much Ado About Nothing', 'The Taming of the Shrew', 'Measure for Measure'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which Prime Minister declined Britain''s highest order of chivalry in 1945, after losing an election, but accepted it in 1953?', NULL,
        'Winston Churchill', ARRAY['Clement Attlee', 'Neville Chamberlain', 'Anthony Eden', 'Stanley Baldwin', 'Harold Macmillan', 'David Lloyd George'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which alliterative Middle English poem follows a Round Table knight who accepts a beheading challenge from a mysterious green stranger?', NULL,
        'Sir Gawain and the Green Knight', ARRAY['Beowulf', 'Le Morte d''Arthur', 'The Canterbury Tales', 'The Mabinogion', 'Tristan and Iseult', 'The Song of Roland'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Who wrote "Le Morte d''Arthur," printed by William Caxton in 1485?', NULL,
        'Sir Thomas Malory', ARRAY['Geoffrey Chaucer', 'Chrétien de Troyes', 'Geoffrey of Monmouth', 'Edmund Spenser', 'Alfred Tennyson', 'Thomas More'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which knight did the dying Arthur order to throw his sword back into the lake?', NULL,
        'Sir Bedivere', ARRAY['Sir Kay', 'Sir Gawain', 'Sir Percival', 'Sir Galahad', 'Sir Gareth', 'Sir Bors'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'The poem that begins "''Twas the night before Christmas" was first published in 1823 under what title?', NULL,
        'A Visit from St. Nicholas', ARRAY['The Night Before Christmas', 'Santa Claus Is Coming', 'A Christmas Eve Visit', 'Jolly Old St. Nick', 'The Christmas Visitor', 'A Christmas Carol'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which actor played the pompous Judge Smails in the 1980 comedy "Caddyshack"?', NULL,
        'Ted Knight', ARRAY['Rodney Dangerfield', 'Chevy Chase', 'Bill Murray', 'Michael O''Keefe', 'Brian Doyle-Murray', 'Harold Ramis'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'In Mozart''s "The Magic Flute," which character sings the fiendishly high "revenge" aria?', NULL,
        'The Queen of the Night', ARRAY['Pamina', 'Papagena', 'Sarastro', 'Tamino', 'Monostatos', 'Papageno'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which American tech founder received an honorary British knighthood in 2005 for his charity work?', NULL,
        'Bill Gates', ARRAY['Steve Jobs', 'Mark Zuckerberg', 'Warren Buffett', 'Jeff Bezos', 'Steve Wozniak', 'Larry Page'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which author of the Discworld novels was knighted in 2009?', NULL,
        'Sir Terry Pratchett', ARRAY['Sir Salman Rushdie', 'Sir Kazuo Ishiguro', 'Sir Philip Pullman', 'Sir Michael Morpurgo', 'Sir P. G. Wodehouse', 'Sir Kingsley Amis'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which knight of Cornwall fell tragically in love with Isolde, the bride of his uncle King Mark?', NULL,
        'Tristan', ARRAY['Gawain', 'Galahad', 'Percival', 'Bedivere', 'Gareth', 'Kay'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which knight, Arthur''s treacherous son or nephew, dealt him his death wound at the Battle of Camlann?', NULL,
        'Mordred', ARRAY['Agravaine', 'Gawain', 'Kay', 'Bedivere', 'Gaheris', 'Lamorak'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which 1967 Moody Blues ballad is named for luxurious bedding?', NULL,
        'Nights in White Satin', ARRAY['Tuesday Afternoon', 'Go Now', 'Question', 'Ride My See-Saw', 'Your Wildest Dreams', 'The Story in Your Eyes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which architect of St Paul''s Cathedral was knighted in 1673?', NULL,
        'Sir Christopher Wren', ARRAY['Sir John Vanbrugh', 'Sir John Soane', 'Sir Charles Barry', 'Sir Edwin Lutyens', 'Sir George Gilbert Scott', 'Sir Robert Smirke'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which TV sports broadcast began on ABC in 1970 and moved to ESPN in 2006?', NULL,
        'Monday Night Football', ARRAY['Sunday Night Football', 'Thursday Night Football', 'NFL Primetime', 'Inside the NFL', 'ABC''s Wide World of Sports', 'NFL Countdown'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Which medieval military order took its name from King Solomon''s Temple in Jerusalem?', NULL,
        'The Knights Templar', ARRAY['The Knights Hospitaller', 'The Teutonic Knights', 'The Order of Santiago', 'The Knights of Columbus', 'The Order of the Garter', 'The Order of Calatrava'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'FAMOUS_KNIGHTS_BATCH_1', NULL,
        'Who hosted NBC''s "Late Night" from 1982 to 1993 before moving to CBS?', NULL,
        'David Letterman', ARRAY['Conan O''Brien', 'Jay Leno', 'Johnny Carson', 'Arsenio Hall', 'Craig Kilborn', 'Jimmy Fallon'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'In Malory''s "Le Morte d''Arthur," which knight, the purest of all, achieves the Holy Grail?', NULL,
        'Sir Galahad', ARRAY['Sir Gawain', 'Sir Kay', 'Sir Gareth', 'Sir Tristan', 'Sir Lamorak', 'Sir Ywain'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FAMOUS_KNIGHTS', 'ORIGINAL', NULL,
        'Which 1934 F. Scott Fitzgerald novel takes its title from a line in Keats''s "Ode to a Nightingale"?', NULL,
        'Tender Is the Night', ARRAY['The Great Gatsby', 'This Side of Paradise', 'The Beautiful and Damned', 'The Last Tycoon', 'The Sun Also Rises', 'A Farewell to Arms'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FAMOUS_KNIGHTS';
