-- ============================================================================
-- EmpossDurr content expansion, batch 3: 40 new words/clue-sets on top of the
-- 505 currently live (20-word seed + the reconciled ~485-word batch).
--
-- Purely additive -- a plain INSERT against the existing table, nothing to
-- create or reconcile. Every word below was checked against the full live
-- word list before writing clues, so none of these 40 duplicate anything
-- already in the deck.
--
-- Follows the same content rules as the earlier batches:
--   1. No clue shares a root/lemma with the word itself.
--   2. Each clue is plausible for at least one OTHER word too (several were
--      picked specifically to overlap with existing words -- e.g. "melt"
--      also fits SNOWMAN/ICE SCULPTURE/POPSICLE, "handle" also fits
--      UMBRELLA/TOOLBOX/LANTERN/ROLLING PIN).
--   3. No rhymes/sound-alikes with zero semantic connection.
--   4. Pop-culture references kept minimal -- just one this batch ("nutella"
--      for CREPE), well under the ~10% budget.
--   5. Loose and evocative over tight and "correct."
--   6. A few common two-word compounds (SAND DUNE, ROLLING PIN, BUBBLE TEA,
--      CROSSING GUARD, ICE SCULPTURE, CABLE CAR) read as one everyday
--      concept, same as TREASURE CHEST/ROLLER COASTER in the original seed.
--
-- Brings the live total from 505 to 545.

-- Randy pared this down by a lot. ***
-- ============================================================================

INSERT INTO empossdurr_words (word, clue_1, clue_2, clue_3, clue_4) VALUES
    ('QUEEN', 'bee', 'Beyonce', 'crown', 'princess'),
    ('CATAPULT', 'launch', 'siege', 'sling', 'medieval'),
    ('PERISCOPE', 'lens', 'mirror', 'submarine', 'peek'),
    ('LUMBERJACK', 'flannel', 'axe', 'trees', 'beard'),
    ('MIME', 'gloves', 'white', 'silent', 'annoying'),
    ('POPSICLE', 'stick', 'freezer', 'melt', 'scissors'),
    ('SAND DUNE', 'desert', 'wind-shaped', 'camel', 'ridge'),
    ('RAINFOREST', 'dangerous', 'green', 'brazil', 'dense'),
    ('ICEBERG', 'floating', 'arctic', 'tip', 'massive'),
    ('SINKHOLE', 'swallow', 'crater', 'surprise', 'road collapse'),
    ('KAYAK', 'paddle', 'rapids', 'flip', 'one-person'),
    ('TREEHOUSE', 'ladder', 'backyard', 'clubhouse', 'branches'),
    ('BANJO', 'kentucky', 'twang', 'bluegrass', 'porch'),
    ('UKULELE', 'hawaii', 'rainbow', 'strum', 'izzy'),
    ('DOLLY', 'wood', 'hello', 'imagination', 'wig'),
    ('PIANO', 'ivory', 'fingers', 'man', 'pedals'),
    ('BICYCLE', 'pedals', 'seat', 'trail', 'chain'),
    ('FATHER', 'priest', 'jokes', 'daughter', 'son'),
    ('LAKE', 'wet', 'cold', 'fish', 'swim'),
    ('HIGHWAY', '65', 'exit', 'passing', 'trucks'),
    ('QUARTERBACK', 'passing', 'throw', 'leader', 'captain'),
    ('FRENCH FRIES', 'cut', 'salt', 'oil', 'ketchup'),
    ('DARTS', 'feather', 'bullseye', 'board', 'throw');
