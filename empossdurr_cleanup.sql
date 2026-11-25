-- ============================================================================
-- EmpossDurr deck cleanup (Nov 25 2026, before Thanksgiving). Randy: about
-- 15% of the words "aren't that great". This removes 29 words and rewrites
-- the clues of 29 more, about 10% of the ~568-word deck.
--
-- Why a word was weak (see the groups below):
--   * Clues that belong to a DIFFERENT meaning of the word (DOCTOR "pepper,
--     house, strange"; ICE CUBE "rapper, compton"). The impostor sees only
--     one of the four clues, so a pun clue leaves them lost rather than
--     bluffing, and the word's broad meaning scatters everyone's clues.
--     These words stay, with clues for their everyday meaning.
--   * Words that are hard to give clues for out loud (DEJA VU, YAWN), so
--     everyone repeats, which is just what the impostor does.
--   * Near-twins (MITTEN and MITTENS), so the second feels like a rerun.
--   * Insider or room-souring words (TRUMP, CLOSET: Randy, Nov 25 "drop
--     them"), against the two-audiences rule.
--
-- Matched by word, so it's safe whatever the live table looks like: a word
-- that isn't there is simply skipped. Safe to re-run. All in one
-- transaction: if anything fails, nothing changes.
--
-- The game re-reads the words at each game start (since this change), so
-- the next EmpossDurr game uses the cleaned deck; no restart needed.
--
-- To bring a removed word back, copy its line from the record below into
-- an INSERT:  INSERT INTO empossdurr_words (word, clue_1, clue_2, clue_3, clue_4)
--             VALUES ('WORD', 'clue', 'clue', 'clue', 'clue');
--
-- Removed (word | the clues it had):
--   Broken or nothing to hold on to:
--     BIG BROTHER | jury | house | zing | have
--     WINNER | loser | chicken | dinner | runner up
--     DROP | pin | edm | kick | mic
--     DOLLY | wood | hello | imagination | wig
--   Insider, regional or room-souring:
--     TRUMP | orange | blob | chicken | hair
--     CLOSET | gay | coat | hide | out
--     SPRING GROVE | home | pa | mill | circle
--     BALTIMORE | orange | purple | dirty | beltway
--     HEISENBERG (BREAKING BAD) | knocks | white | chemist | teacher
--     SHELDON (BIG BANG) | couch | doctor | penny | t-shirts
--     MADONNA | music | material | immaculate | prayer
--   Hard to give clues for out loud:
--     DEJA VU | familiar | glitch | repeat | strange
--     NOSTALGIA | memory | old song | bittersweet | throwback
--     JEALOUSY | green | envy | rival | sting
--     WRITERS BLOCK | blank page | stuck | stare | frustration
--     SIDE-EYE | glance | suspicious | judge | glare
--     FACEPALM | embarrassed | forehead | groan | oops
--     YAWN | tired | contagious | stretch | mouth
--     HICCUP | startle | breath | spasm | annoying
--     DEW | morning | grass | droplets | glisten
--     BALD | hat | shiny | eagle | smooth
--   Near-twin of a word that stays (the one kept is in brackets):
--     MITTENS | cold | string | snowball | cozy  [kept: MITTEN]
--     MARBLE | granite | lost | sculpture | game  [kept: MARBLES]
--     BUTTERFLIES | nervous | stomach | flutter | first date  [kept: BUTTERFLY]
--     SNOW SHOVEL | driveway | heavy | clear | back-breaking  [kept: SHOVEL]
--     CORNFIELD | rows | tall | rustle | harvest  [kept: CORN MAZE]
--     LOCKER ROOM | towel | pep talk | cleats | showers  [kept: LOCKER]
--     WEB | internet | silk | spiderman | stuck  [kept: SPIDER WEB]
--     PUZZLE | autism | table | box | flip  [kept: JIGSAW PUZZLE]
-- ============================================================================

BEGIN;

-- 1. Remove 29 words.
-- Broken or nothing to hold on to
DELETE FROM empossdurr_words WHERE word IN ('BIG BROTHER', 'WINNER', 'DROP', 'DOLLY');
-- Insider, regional or room-souring
DELETE FROM empossdurr_words WHERE word IN ('TRUMP', 'CLOSET', 'SPRING GROVE', 'BALTIMORE', 'HEISENBERG (BREAKING BAD)', 'SHELDON (BIG BANG)', 'MADONNA');
-- Hard to give clues for out loud
DELETE FROM empossdurr_words WHERE word IN ('DEJA VU', 'NOSTALGIA', 'JEALOUSY', 'WRITERS BLOCK', 'SIDE-EYE', 'FACEPALM', 'YAWN', 'HICCUP', 'DEW', 'BALD');
-- Near-twin of a word that stays (the one kept is in brackets)
DELETE FROM empossdurr_words WHERE word IN ('MITTENS', 'MARBLE', 'BUTTERFLIES', 'SNOW SHOVEL', 'CORNFIELD', 'LOCKER ROOM', 'WEB', 'PUZZLE');

-- 2. New clues for 29 words that stay (old clues on each line's comment).
UPDATE empossdurr_words SET clue_1 = 'footprint', clue_2 = 'woods', clue_3 = 'blurry photo', clue_4 = 'hairy' WHERE word = 'BIGFOOT'; -- was: heavy, frame, dora, stuffed (had BACKPACK's clues by mistake)
UPDATE empossdurr_words SET clue_1 = 'bowl', clue_2 = 'milk', clue_3 = 'crunch', clue_4 = 'spoon' WHERE word = 'CEREAL'; -- was: special, cheery, milk, spoon
UPDATE empossdurr_words SET clue_1 = 'red', clue_2 = 'stem', clue_3 = 'pit', clue_4 = 'sundae' WHERE word = 'CHERRY'; -- was: coke, pepsi, sundae, top
UPDATE empossdurr_words SET clue_1 = 'white coat', clue_2 = 'checkup', clue_3 = 'prescription', clue_4 = 'clinic' WHERE word = 'DOCTOR'; -- was: pepper, house, strange, visit
UPDATE empossdurr_words SET clue_1 = 'tray', clue_2 = 'freezer', clue_3 = 'clink', clue_4 = 'melt' WHERE word = 'ICE CUBE'; -- was: water, rapper, tray, compton
UPDATE empossdurr_words SET clue_1 = 'cap', clue_2 = 'forest floor', clue_3 = 'pizza', clue_4 = 'spores' WHERE word = 'MUSHROOM'; -- was: cap, mario, trip, lo mein
UPDATE empossdurr_words SET clue_1 = 'keys', clue_2 = 'pedals', clue_3 = 'recital', clue_4 = 'grand' WHERE word = 'PIANO'; -- was: ivory, fingers, man, pedals
UPDATE empossdurr_words SET clue_1 = 'dark', clue_2 = 'mountain', clue_3 = 'underground', clue_4 = 'train' WHERE word = 'TUNNEL'; -- was: through, under, carpal, dig
UPDATE empossdurr_words SET clue_1 = 'drops', clue_2 = 'puddle', clue_3 = 'cloud', clue_4 = 'umbrella' WHERE word = 'RAIN'; -- was: mist, cloud, purple, sky
UPDATE empossdurr_words SET clue_1 = 'baby', clue_2 = 'rock', clue_3 = 'lullaby', clue_4 = 'nursery' WHERE word = 'CRADLE'; -- was: baby, rock, rob, bed
UPDATE empossdurr_words SET clue_1 = 'prongs', clue_2 = 'dinner', clue_3 = 'knife', clue_4 = 'twirl' WHERE word = 'FORK'; -- was: spoon, pointy, you, silver
UPDATE empossdurr_words SET clue_1 = 'dad', clue_2 = 'grill', clue_3 = 'advice', clue_4 = 'jokes' WHERE word = 'FATHER'; -- was: priest, jokes, daughter, son
UPDATE empossdurr_words SET clue_1 = 'crown', clue_2 = 'castle', clue_3 = 'charming', clue_4 = 'royal' WHERE word = 'PRINCE'; -- was: son, guitar, harry, william
UPDATE empossdurr_words SET clue_1 = 'crown', clue_2 = 'throne', clue_3 = 'royal', clue_4 = 'chess' WHERE word = 'QUEEN'; -- was: bee, Beyonce, crown, princess
UPDATE empossdurr_words SET clue_1 = 'sand', clue_2 = 'palm tree', clue_3 = 'surrounded', clue_4 = 'shipwrecked' WHERE word = 'ISLAND'; -- was: water, secluded, jamaica, long
UPDATE empossdurr_words SET clue_1 = 'beat', clue_2 = 'sticks', clue_3 = 'band', clue_4 = 'loud' WHERE word = 'DRUM'; -- was: kick, line, boy, beat
UPDATE empossdurr_words SET clue_1 = 'crack', clue_2 = 'fist', clue_3 = 'finger', clue_4 = 'knock' WHERE word = 'KNUCKLE'; -- was: crack, fist, ring, sandwich
UPDATE empossdurr_words SET clue_1 = 'lunch', clue_2 = 'bread', clue_3 = 'layers', clue_4 = 'deli' WHERE word = 'SANDWICH'; -- was: lunch, bread, layers, knuckle
UPDATE empossdurr_words SET clue_1 = 'rainbow', clue_2 = 'light', clue_3 = 'glass', clue_4 = 'triangle' WHERE word = 'PRISM'; -- was: pink floyd, spread, faces, split
UPDATE empossdurr_words SET clue_1 = 'cave', clue_2 = 'night', clue_3 = 'wings', clue_4 = 'upside down' WHERE word = 'BAT'; -- was: bugs, bruce, night, cave
UPDATE empossdurr_words SET clue_1 = 'sizzle', clue_2 = 'crispy', clue_3 = 'breakfast', clue_4 = 'strips' WHERE word = 'BACON'; -- was: grease, kevin, lettuce, cheesburger
UPDATE empossdurr_words SET clue_1 = 'bill', clue_2 = 'buck', clue_3 = 'green', clue_4 = 'wallet' WHERE word = 'DOLLAR'; -- was: buck, general, bill, paper
UPDATE empossdurr_words SET clue_1 = 'grape', clue_2 = 'cork', clue_3 = 'glass', clue_4 = 'vineyard' WHERE word = 'WINE'; -- was: veritas, grape, cork, glass
UPDATE empossdurr_words SET clue_1 = 'sand', clue_2 = 'mop', clue_3 = 'handle', clue_4 = 'well' WHERE word = 'BUCKET'; -- was: ice, sand, kick, mop
UPDATE empossdurr_words SET clue_1 = 'kettle', clue_2 = 'leaves', clue_3 = 'steep', clue_4 = 'mug' WHERE word = 'TEA'; -- was: leaves, china, earl, pinkie
UPDATE empossdurr_words SET clue_1 = 'exit', clue_2 = 'trucks', clue_3 = 'lanes', clue_4 = 'road trip' WHERE word = 'HIGHWAY'; -- was: 65, exit, passing, trucks
UPDATE empossdurr_words SET clue_1 = 'court', clue_2 = 'suit', clue_3 = 'argue', clue_4 = 'client' WHERE word = 'LAWYER'; -- was: argue, suit, case, better
UPDATE empossdurr_words SET clue_1 = 'honey', clue_2 = 'bear', clue_3 = 'piglet', clue_4 = 'hundred acre' WHERE word = 'WINNIE THE POOH'; -- was: christopher, t-shirt, piglet, kind
UPDATE empossdurr_words SET clue_1 = 'knitting', clue_2 = 'cookies', clue_3 = 'hugs', clue_4 = 'spoil' WHERE word = 'GRANDMOTHER'; -- was: knitting, gray, wrinkled, cane

COMMIT;

-- Check: should return 0 (none of the removed words are left).
SELECT count(*) AS removed_words_still_there FROM empossdurr_words WHERE word IN ('BIG BROTHER', 'WINNER', 'DROP', 'DOLLY', 'TRUMP', 'CLOSET', 'SPRING GROVE', 'BALTIMORE', 'HEISENBERG (BREAKING BAD)', 'SHELDON (BIG BANG)', 'MADONNA', 'DEJA VU', 'NOSTALGIA', 'JEALOUSY', 'WRITERS BLOCK', 'SIDE-EYE', 'FACEPALM', 'YAWN', 'HICCUP', 'DEW', 'BALD', 'MITTENS', 'MARBLE', 'BUTTERFLIES', 'SNOW SHOVEL', 'CORNFIELD', 'LOCKER ROOM', 'WEB', 'PUZZLE');
-- And the deck's new size (about 539 if the live deck matches the repo).
SELECT count(*) AS words_in_deck FROM empossdurr_words;
