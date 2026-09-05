-- ============================================================================
-- EmpossDurr (impostor social-deduction mode): word+clue deck schema and a
-- 20-word test batch.
--
-- This is a NEW, dedicated table, not a row shape squeezed into `questions`.
-- The `questions` table's shape (game_mode/category/subcategory/faction/
-- correct_answer/points/visual_asset) exists to serve multiple-choice
-- trivia with distractors -- EmpossDurr has no multiple-choice, no points
-- per word, and no distractor sourcing, so forcing it into that table would
-- mean a pile of always-NULL columns and a fake "correct_answer". A purpose
-- -built table is simpler and clearer.
--
-- Each word has exactly 4 clues. Only ONE is ever shown to the impostor,
-- chosen at random per round -- pure pool variety across replays, no
-- escalating help (explicit design decision: the impostor's reward for
-- surviving is points, not easier clues later in the same round).
--
-- Content rules from design discussion (do not violate when adding more):
--   1. No clue may share a root/lemma with the word itself.
--   2. A clue should be plausible for at least one OTHER word too --
--      if you can't think of a second candidate, it's too tight.
--   3. No rhymes or sound-alikes with zero semantic connection -- tried and
--      confirmed to play badly at the actual table.
--   4. Pop-culture references (named franchises/characters/songs) capped at
--      roughly 10% of clues. This batch: "poppins" (Umbrella), "frosty"
--      (Snowman), "wizard" (Scarecrow) -- 3 of 80, intentionally under
--      budget so there's room to dial up rather than trim down later.
--   5. Loose and evocative beats tight and "correct" -- an overly precise
--      clue is itself a tell once real people are delivering it out loud.
--   6. Words don't have to be a single token -- a common two-word compound
--      noun (TREASURE CHEST, ROLLER COASTER) is fine as long as the pair
--      reads as one indivisible everyday concept.
--
-- Purely additive: safe to run against a live database. This is a brand
-- new table, so there's no MAX(id)-style numbering dance needed like the
-- `questions` expansion files -- just IF NOT EXISTS + a plain INSERT.
-- ============================================================================

CREATE TABLE IF NOT EXISTS empossdurr_words (
    id SERIAL PRIMARY KEY,
    word TEXT NOT NULL,
    clue_1 TEXT NOT NULL,
    clue_2 TEXT NOT NULL,
    clue_3 TEXT NOT NULL,
    clue_4 TEXT NOT NULL
);

INSERT INTO empossdurr_words (word, clue_1, clue_2, clue_3, clue_4) VALUES
    ('PIZZA', 'italy', 'delivery', 'slices', 'cheesy'),
    ('UMBRELLA', 'rainy', 'handle', 'cocktail', 'poppins'),
    ('GUITAR', 'strings', 'pick', 'acoustic', 'dad'),
    ('VOLCANO', 'lava', 'erupt', 'ash', 'crater'),
    ('SANDWICH', 'lunch', 'bread', 'layers', 'knuckle'),
    ('LIGHTHOUSE', 'beacon', 'coastline', 'keeper', 'shipwreck'),
    ('TREASURE CHEST', 'pirate', 'buried', 'gold', 'hinge'),
    ('FIREFLY', 'glow', 'summer night', 'jar', 'blink'),
    ('ROLLER COASTER', 'loop', 'scream', 'theme park', 'drop'),
    ('CHIMNEY', 'smoke', 'santa', 'brick', 'sweep'),
    ('SNOWMAN', 'carrot', 'coal', 'scarf', 'frosty'),
    ('CAMPFIRE', 'marshmallow', 'spark', 'tent', 'smoke'),
    ('ESCALATOR', 'mall', 'step', 'handrail', 'scary'),
    ('BEEHIVE', 'buzz', 'honey', 'sting', 'hairstyle'),
    ('SUBMARINE', 'periscope', 'underwater', 'torpedo', 'sailor'),
    ('XYLOPHONE', 'mallet', 'keys', 'wooden', 'recital'),
    ('ANCHOR', 'sailor', 'chain', 'harbor', 'tattoo'),
    ('FIREFIGHTER', 'hose', 'ladder', 'siren', 'helmet'),
    ('SCARECROW', 'field', 'straw', 'wizard', 'hat'),
    ('IGLOO', 'ice', 'arctic', 'dome', 'blocks');
