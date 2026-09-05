-- ============================================================================
-- EmpossDurr content expansion: 80 new words/clue-sets on top of the original
-- 20-word test batch in empossdurr_words_seed.sql (100 total). Family
-- playtesting confirmed the mode plays great and burns through a small deck
-- fast -- this quadruples the pool so replays don't start repeating words
-- within the same game night.
--
-- Purely additive: does NOT touch, modify, or delete any existing row. The
-- table already exists (created by empossdurr_words_seed.sql) and uses a
-- plain SERIAL id, so -- same as that file -- there's no MAX(id)-style
-- numbering dance needed, just a plain INSERT. Safe to run against a live
-- database with existing content, including production.
--
-- Same content rules as the seed file (do not violate when adding more):
--   1. No clue may share a root/lemma with the word itself.
--   2. A clue should be plausible for at least one OTHER word too -- if you
--      can't think of a second candidate, it's too tight.
--   3. No rhymes or sound-alikes with zero semantic connection.
--   4. Pop-culture references capped at roughly 10% of clues. This batch: 0
--      of 320 -- the seed file already spent its budget, and there was
--      plenty of everyday-object material left without reaching for more.
--   5. Loose and evocative beats tight and "correct."
--   6. Words don't have to be a single token -- a common two-word compound
--      noun is fine as long as the pair reads as one indivisible concept.
--
-- No overlap with the seed file's 20 words (PIZZA, UMBRELLA, GUITAR,
-- VOLCANO, SANDWICH, LIGHTHOUSE, TREASURE CHEST, FIREFLY, ROLLER COASTER,
-- CHIMNEY, SNOWMAN, CAMPFIRE, ESCALATOR, BEEHIVE, SUBMARINE, XYLOPHONE,
-- ANCHOR, FIREFIGHTER, SCARECROW, IGLOO).
-- ============================================================================

INSERT INTO empossdurr_words (word, clue_1, clue_2, clue_3, clue_4) VALUES
    ('BACKPACK', 'straps', 'zipper', 'hiking', 'schoolbag'),
    ('TRAMPOLINE', 'bounce', 'springs', 'backyard', 'somersault'),
    ('LEMONADE STAND', 'pitcher', 'summer', 'coins', 'sign'),
    ('SKATEBOARD', 'wheels', 'ramp', 'kickflip', 'sidewalk'),
    ('THUNDERSTORM', 'lightning', 'clouds', 'rumble', 'flash'),
    ('PIRATE SHIP', 'plank', 'mast', 'cannon', 'flag'),
    ('VENDING MACHINE', 'coin', 'snack', 'jam', 'buttons'),
    ('HAMMOCK', 'sway', 'ropes', 'backyard', 'nap'),
    ('BUTTERFLY', 'cocoon', 'wings', 'garden', 'net'),
    ('TELESCOPE', 'stars', 'lens', 'observatory', 'zoom'),
    ('DRAGONFLY', 'pond', 'wings', 'buzz', 'iridescent'),
    ('SANDCASTLE', 'beach', 'bucket', 'moat', 'tide'),
    ('FERRIS WHEEL', 'carnival', 'spokes', 'view', 'gondola'),
    ('POPCORN', 'kernel', 'butter', 'movie', 'salty'),
    ('SLEEPING BAG', 'campout', 'zipper', 'cocoon', 'tent'),
    ('WATERFALL', 'cliff', 'mist', 'roar', 'plunge'),
    ('PARACHUTE', 'skydive', 'canopy', 'harness', 'freefall'),
    ('HOURGLASS', 'sand', 'timer', 'flip', 'minutes'),
    ('SCUBA DIVER', 'tank', 'flippers', 'coral', 'bubbles'),
    ('PIGGY BANK', 'coins', 'slot', 'savings', 'ceramic'),
    ('WHEELBARROW', 'dirt', 'garden', 'tip', 'handle'),
    ('KANGAROO', 'pouch', 'hop', 'marsupial', 'outback'),
    ('TRAFFIC LIGHT', 'intersection', 'red', 'signal', 'pole'),
    ('MAGNET', 'fridge', 'attract', 'metal', 'pole'),
    ('QUICKSAND', 'sink', 'desert', 'trap', 'mud'),
    ('SNORKEL', 'mask', 'breathe', 'reef', 'tube'),
    ('CHANDELIER', 'crystal', 'ceiling', 'sparkle', 'ballroom'),
    ('PRETZEL', 'twist', 'salt', 'dough', 'knot'),
    ('SPIDER WEB', 'silk', 'trap', 'dew', 'strands'),
    ('WINDMILL', 'blades', 'breeze', 'farm', 'grind'),
    ('TYPEWRITER', 'keys', 'ribbon', 'click', 'paper'),
    ('RAINBOW', 'prism', 'arc', 'storm', 'colors'),
    ('GRANDFATHER CLOCK', 'pendulum', 'chime', 'hallway', 'tick'),
    ('FLAMINGO', 'pink', 'pond', 'balance', 'feather'),
    ('BUBBLE WRAP', 'pop', 'cushion', 'packages', 'plastic'),
    ('TUMBLEWEED', 'desert', 'roll', 'dry', 'wind'),
    ('STETHOSCOPE', 'doctor', 'heartbeat', 'tubes', 'checkup'),
    ('PINATA', 'candy', 'blindfold', 'stick', 'burst'),
    ('GARGOYLE', 'stone', 'perch', 'cathedral', 'statue'),
    ('OCTOPUS', 'tentacles', 'ink', 'reef', 'eight'),
    ('ACCORDION', 'squeeze', 'folds', 'polka', 'bellows'),
    ('MOUSETRAP', 'cheese', 'snap', 'bait', 'spring'),
    ('SNOW GLOBE', 'shake', 'flakes', 'dome', 'souvenir'),
    ('SLINGSHOT', 'pebble', 'stretch', 'aim', 'fork'),
    ('BOOMERANG', 'throw', 'curve', 'return', 'wood'),
    ('CACTUS', 'spikes', 'desert', 'bloom', 'prickly'),
    ('YO-YO', 'string', 'trick', 'spin', 'sleeper'),
    ('WHISTLE', 'referee', 'blow', 'tweet', 'coach'),
    ('BEANBAG CHAIR', 'slouch', 'pellets', 'cozy', 'floor'),
    ('COMPASS', 'needle', 'north', 'map', 'direction'),
    ('HORSESHOE', 'luck', 'forge', 'hoof', 'toss'),
    ('JACKHAMMER', 'pavement', 'vibrate', 'drill', 'construction'),
    ('LAWN GNOME', 'garden', 'beard', 'pointy hat', 'statue'),
    ('PILLOW FORT', 'blankets', 'cushions', 'hideout', 'flashlight'),
    ('RUBBER DUCK', 'bathtub', 'squeak', 'yellow', 'floatie'),
    ('SEESAW', 'playground', 'balance', 'plank', 'tip'),
    ('TAMBOURINE', 'jingle', 'shake', 'band', 'ribbons'),
    ('UNICYCLE', 'balance', 'circus', 'pedal', 'tire'),
    ('WATERING CAN', 'spout', 'garden', 'sprinkle', 'plants'),
    ('ZIPLINE', 'cable', 'harness', 'forest', 'glide'),
    ('BOWLING BALL', 'gutter', 'pins', 'heavy', 'lane'),
    ('DOORBELL', 'chime', 'porch', 'ring', 'visitor'),
    ('EGG TIMER', 'kitchen', 'sand', 'minutes', 'ding'),
    ('FLASHLIGHT', 'batteries', 'beam', 'dark', 'camping'),
    ('GUMBALL MACHINE', 'coin', 'glass', 'chew', 'twist'),
    ('HULA HOOP', 'spin', 'waist', 'plastic', 'circle'),
    ('ICE CREAM TRUCK', 'jingle', 'cone', 'summer', 'freezer'),
    ('JIGSAW PUZZLE', 'pieces', 'edges', 'table', 'missing'),
    ('KITE', 'string', 'wind', 'tail', 'fly'),
    ('LAVA LAMP', 'glow', 'blob', 'retro', 'bedroom'),
    ('MERRY-GO-ROUND', 'carousel', 'music', 'spin', 'horses'),
    ('NUTCRACKER', 'crack', 'teeth', 'ballet', 'wooden'),
    ('OVEN MITT', 'kitchen', 'hot', 'grip', 'fabric'),
    ('PARROT', 'squawk', 'feather', 'pirate', 'mimic'),
    ('ROCKING CHAIR', 'porch', 'creak', 'grandma', 'sway'),
    ('TIGHTROPE', 'circus', 'balance', 'wire', 'fall'),
    ('VACUUM CLEANER', 'suck', 'hose', 'carpet', 'dust'),
    ('WAGON', 'wheels', 'pull', 'red', 'handle'),
    ('WEATHER VANE', 'rooftop', 'arrow', 'wind', 'rooster'),
    ('ZEBRA', 'stripes', 'herd', 'mane', 'savanna');
