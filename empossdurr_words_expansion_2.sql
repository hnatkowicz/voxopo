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
-- ============================================================================

INSERT INTO empossdurr_words (word, clue_1, clue_2, clue_3, clue_4) VALUES
    ('BEEKEEPER', 'hive', 'veil', 'sting', 'honeycomb'),
    ('CATAPULT', 'launch', 'siege', 'sling', 'medieval'),
    ('DRAWBRIDGE', 'moat', 'castle', 'chains', 'portcullis'),
    ('GONDOLA', 'venice', 'canal', 'ski lift', 'striped shirt'),
    ('ICE SCULPTURE', 'chainsaw', 'melt', 'wedding', 'swan'),
    ('PERISCOPE', 'lens', 'mirror', 'submarine', 'trench'),
    ('WATERWHEEL', 'mill', 'current', 'grind', 'creek'),
    ('NARWHAL', 'tusk', 'arctic', 'unicorn of the sea', 'pod'),
    ('PORCUPINE', 'quills', 'prickly', 'rodent', 'spikes'),
    ('WOMBAT', 'burrow', 'australia', 'pouch', 'marsupial'),
    ('AXOLOTL', 'salamander', 'regrow', 'pink', 'aquarium'),
    ('PANGOLIN', 'scales', 'curl up', 'ant eater', 'armor'),
    ('LUMBERJACK', 'flannel', 'axe', 'sawmill', 'beard'),
    ('CROSSING GUARD', 'stop sign', 'vest', 'school zone', 'whistle'),
    ('ZOOKEEPER', 'feed time', 'exhibit', 'uniform', 'cage'),
    ('BARISTA', 'espresso', 'apron', 'latte art', 'tip jar'),
    ('MAGICIAN', 'top hat', 'rabbit', 'wand', 'disappear'),
    ('MIME', 'invisible box', 'white face', 'silent', 'street performer'),
    ('DUMPLING', 'fold', 'chinese take-out', 'dough', 'steamer'),
    ('CREPE', 'griddle', 'thin pancake', 'nutella', 'paris'),
    ('POPSICLE', 'stick', 'freezer', 'melt', 'summer treat'),
    ('BUBBLE TEA', 'tapioca', 'wide straw', 'chewy', 'taiwan'),
    ('CHURRO', 'cinnamon', 'fried dough', 'carnival', 'dip'),
    ('CASSEROLE', 'potluck', 'baked dish', 'oven', 'leftovers'),
    ('CLOTHESPIN', 'clip', 'laundry line', 'wood', 'pinch'),
    ('ROLLING PIN', 'dough', 'bakery', 'flatten', 'wooden handle'),
    ('TOOLBOX', 'wrench', 'garage', 'handle', 'nails'),
    ('LANTERN', 'glow', 'camping', 'handle', 'flame'),
    ('CANDLE', 'wick', 'wax', 'birthday', 'flicker'),
    ('SAND DUNE', 'desert', 'wind-shaped', 'camel', 'ridge'),
    ('RAINFOREST', 'canopy', 'humid', 'monkeys', 'dense'),
    ('ICEBERG', 'floating', 'arctic', 'tip of', 'massive'),
    ('SINKHOLE', 'swallow', 'crater', 'surprise', 'road collapse'),
    ('KAYAK', 'paddle', 'rapids', 'flip', 'one-person'),
    ('CABLE CAR', 'san francisco', 'incline', 'wire', 'trolley'),
    ('TREEHOUSE', 'ladder', 'backyard', 'clubhouse', 'branches'),
    ('BANJO', 'strings', 'twang', 'bluegrass', 'porch'),
    ('UKULELE', 'hawaii', 'four strings', 'strum', 'tiny guitar'),
    ('TUBA', 'oom-pah', 'marching band', 'brass', 'heavy'),
    ('DARTS', 'pub', 'bullseye', 'board', 'throw');
