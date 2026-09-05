-- ============================================================================
-- EmpossDurr content expansion, part 2: reconciles with the 80-word file that
-- was ALREADY run against production while the 500-word batch was being built
-- (empossdurr_words_expansion.sql in the repo is the version that assumed
-- nothing had been run yet -- that assumption turned out to be wrong).
--
-- Production currently has: the 20-word seed, plus the original 80-word batch
-- exactly as first delivered (unedited clues, includes ZEBRA). Since then the
-- family reworked that 80-word batch's clues (loosened several that were too
-- direct, e.g. BACKPACK) and it grew into the full ~500-word set. Re-running
-- the full INSERT would have created 79 duplicate WORDS -- same word, two rows
-- with different clues, which would let the same word show up twice in a game
-- with mismatched clue sets. This file avoids that:
--
--   1. UPDATEs the 79 words that are already live, fixing their clue_1..4
--      to the final versions (word text is unchanged, only clues moved).
--   2. INSERTs only the 405 genuinely new words that were never run.
--
-- ZEBRA (in the live 80-word batch, dropped from the family's later edit) is
-- left alone -- still a perfectly good live row, just no longer 'expected' by
-- any file. No action needed for it.
--
-- Run this INSTEAD of empossdurr_words_expansion.sql -- do not run both.
-- Safe to run once against production as-is.
-- ============================================================================

-- ---- Part 1: fix clues on the 79 words already live ----
UPDATE empossdurr_words SET clue_1 = 'heavy', clue_2 = 'frame', clue_3 = 'dora', clue_4 = 'stuffed' WHERE word = 'BACKPACK';
UPDATE empossdurr_words SET clue_1 = 'bounce', clue_2 = 'springs', clue_3 = 'backyard', clue_4 = 'somersault' WHERE word = 'TRAMPOLINE';
UPDATE empossdurr_words SET clue_1 = 'pitcher', clue_2 = 'summer', clue_3 = 'rip-off', clue_4 = 'ice' WHERE word = 'LEMONADE STAND';
UPDATE empossdurr_words SET clue_1 = 'tony', clue_2 = 'ramp', clue_3 = 'vans', clue_4 = 'grind' WHERE word = 'SKATEBOARD';
UPDATE empossdurr_words SET clue_1 = 'front porch', clue_2 = 'clouds', clue_3 = 'rumble', clue_4 = 'flash' WHERE word = 'THUNDERSTORM';
UPDATE empossdurr_words SET clue_1 = 'plank', clue_2 = 'mast', clue_3 = 'cannon', clue_4 = 'flag' WHERE word = 'PIRATE SHIP';
UPDATE empossdurr_words SET clue_1 = 'coins', clue_2 = 'soda', clue_3 = 'jam', clue_4 = 'alley' WHERE word = 'VENDING MACHINE';
UPDATE empossdurr_words SET clue_1 = 'sway', clue_2 = 'banana', clue_3 = 'backyard', clue_4 = 'nap' WHERE word = 'HAMMOCK';
UPDATE empossdurr_words SET clue_1 = 'colorful', clue_2 = 'wings', clue_3 = 'garden', clue_4 = 'net' WHERE word = 'BUTTERFLY';
UPDATE empossdurr_words SET clue_1 = 'stars', clue_2 = 'lens', clue_3 = 'glass', clue_4 = 'zoom' WHERE word = 'TELESCOPE';
UPDATE empossdurr_words SET clue_1 = 'pond', clue_2 = 'wings', clue_3 = 'buzz', clue_4 = 'iridescent' WHERE word = 'DRAGONFLY';
UPDATE empossdurr_words SET clue_1 = 'beach', clue_2 = 'bucket', clue_3 = 'moat', clue_4 = 'tide' WHERE word = 'SANDCASTLE';
UPDATE empossdurr_words SET clue_1 = 'carnival', clue_2 = 'spokes', clue_3 = 'view', clue_4 = 'circle' WHERE word = 'FERRIS WHEEL';
UPDATE empossdurr_words SET clue_1 = 'kernel', clue_2 = 'butter', clue_3 = 'movie', clue_4 = 'salty' WHERE word = 'POPCORN';
UPDATE empossdurr_words SET clue_1 = 'campout', clue_2 = 'zipper', clue_3 = 'cocoon', clue_4 = 'tent' WHERE word = 'SLEEPING BAG';
UPDATE empossdurr_words SET clue_1 = 'cliff', clue_2 = 'mist', clue_3 = 'roar', clue_4 = 'plunge' WHERE word = 'WATERFALL';
UPDATE empossdurr_words SET clue_1 = 'skydive', clue_2 = 'canopy', clue_3 = 'harness', clue_4 = 'freefall' WHERE word = 'PARACHUTE';
UPDATE empossdurr_words SET clue_1 = 'sand', clue_2 = 'timer', clue_3 = 'flip', clue_4 = 'minutes' WHERE word = 'HOURGLASS';
UPDATE empossdurr_words SET clue_1 = 'tank', clue_2 = 'flippers', clue_3 = 'coral', clue_4 = 'bubbles' WHERE word = 'SCUBA DIVER';
UPDATE empossdurr_words SET clue_1 = 'coins', clue_2 = 'slot', clue_3 = 'savings', clue_4 = 'ceramic' WHERE word = 'PIGGY BANK';
UPDATE empossdurr_words SET clue_1 = 'dirt', clue_2 = 'garden', clue_3 = 'tip', clue_4 = 'handle' WHERE word = 'WHEELBARROW';
UPDATE empossdurr_words SET clue_1 = 'pouch', clue_2 = 'hop', clue_3 = 'marsupial', clue_4 = 'outback' WHERE word = 'KANGAROO';
UPDATE empossdurr_words SET clue_1 = 'intersection', clue_2 = 'red', clue_3 = 'signal', clue_4 = 'pole' WHERE word = 'TRAFFIC LIGHT';
UPDATE empossdurr_words SET clue_1 = 'fridge', clue_2 = 'attract', clue_3 = 'metal', clue_4 = 'pole' WHERE word = 'MAGNET';
UPDATE empossdurr_words SET clue_1 = 'sink', clue_2 = 'desert', clue_3 = 'trap', clue_4 = 'mud' WHERE word = 'QUICKSAND';
UPDATE empossdurr_words SET clue_1 = 'mask', clue_2 = 'breathe', clue_3 = 'reef', clue_4 = 'tube' WHERE word = 'SNORKEL';
UPDATE empossdurr_words SET clue_1 = 'crystal', clue_2 = 'ceiling', clue_3 = 'sparkle', clue_4 = 'ballroom' WHERE word = 'CHANDELIER';
UPDATE empossdurr_words SET clue_1 = 'twist', clue_2 = 'salt', clue_3 = 'dough', clue_4 = 'knot' WHERE word = 'PRETZEL';
UPDATE empossdurr_words SET clue_1 = 'silk', clue_2 = 'trap', clue_3 = 'dew', clue_4 = 'strands' WHERE word = 'SPIDER WEB';
UPDATE empossdurr_words SET clue_1 = 'blades', clue_2 = 'breeze', clue_3 = 'farm', clue_4 = 'grind' WHERE word = 'WINDMILL';
UPDATE empossdurr_words SET clue_1 = 'keys', clue_2 = 'ribbon', clue_3 = 'click', clue_4 = 'paper' WHERE word = 'TYPEWRITER';
UPDATE empossdurr_words SET clue_1 = 'prism', clue_2 = 'arc', clue_3 = 'storm', clue_4 = 'colors' WHERE word = 'RAINBOW';
UPDATE empossdurr_words SET clue_1 = 'pendulum', clue_2 = 'chime', clue_3 = 'hallway', clue_4 = 'tick' WHERE word = 'GRANDFATHER CLOCK';
UPDATE empossdurr_words SET clue_1 = 'pink', clue_2 = 'pond', clue_3 = 'balance', clue_4 = 'feather' WHERE word = 'FLAMINGO';
UPDATE empossdurr_words SET clue_1 = 'pop', clue_2 = 'cushion', clue_3 = 'packages', clue_4 = 'plastic' WHERE word = 'BUBBLE WRAP';
UPDATE empossdurr_words SET clue_1 = 'desert', clue_2 = 'roll', clue_3 = 'dry', clue_4 = 'wind' WHERE word = 'TUMBLEWEED';
UPDATE empossdurr_words SET clue_1 = 'doctor', clue_2 = 'heartbeat', clue_3 = 'tubes', clue_4 = 'checkup' WHERE word = 'STETHOSCOPE';
UPDATE empossdurr_words SET clue_1 = 'candy', clue_2 = 'blindfold', clue_3 = 'stick', clue_4 = 'burst' WHERE word = 'PINATA';
UPDATE empossdurr_words SET clue_1 = 'stone', clue_2 = 'perch', clue_3 = 'cathedral', clue_4 = 'statue' WHERE word = 'GARGOYLE';
UPDATE empossdurr_words SET clue_1 = 'water', clue_2 = 'ink', clue_3 = 'reef', clue_4 = 'eight' WHERE word = 'OCTOPUS';
UPDATE empossdurr_words SET clue_1 = 'squeeze', clue_2 = 'folds', clue_3 = 'polka', clue_4 = 'bellows' WHERE word = 'ACCORDION';
UPDATE empossdurr_words SET clue_1 = 'cheese', clue_2 = 'snap', clue_3 = 'bait', clue_4 = 'spring' WHERE word = 'MOUSETRAP';
UPDATE empossdurr_words SET clue_1 = 'shake', clue_2 = 'flakes', clue_3 = 'dome', clue_4 = 'souvenir' WHERE word = 'SNOW GLOBE';
UPDATE empossdurr_words SET clue_1 = 'pebble', clue_2 = 'stretch', clue_3 = 'aim', clue_4 = 'fork' WHERE word = 'SLINGSHOT';
UPDATE empossdurr_words SET clue_1 = 'throw', clue_2 = 'curve', clue_3 = 'return', clue_4 = 'wood' WHERE word = 'BOOMERANG';
UPDATE empossdurr_words SET clue_1 = 'spikes', clue_2 = 'desert', clue_3 = 'bloom', clue_4 = 'prickly' WHERE word = 'CACTUS';
UPDATE empossdurr_words SET clue_1 = 'string', clue_2 = 'trick', clue_3 = 'spin', clue_4 = 'sleeper' WHERE word = 'YO-YO';
UPDATE empossdurr_words SET clue_1 = 'referee', clue_2 = 'blow', clue_3 = 'tweet', clue_4 = 'coach' WHERE word = 'WHISTLE';
UPDATE empossdurr_words SET clue_1 = 'slouch', clue_2 = 'pellets', clue_3 = 'cozy', clue_4 = 'floor' WHERE word = 'BEANBAG CHAIR';
UPDATE empossdurr_words SET clue_1 = 'needle', clue_2 = 'north', clue_3 = 'map', clue_4 = 'direction' WHERE word = 'COMPASS';
UPDATE empossdurr_words SET clue_1 = 'luck', clue_2 = 'forge', clue_3 = 'hoof', clue_4 = 'toss' WHERE word = 'HORSESHOE';
UPDATE empossdurr_words SET clue_1 = 'pavement', clue_2 = 'vibrate', clue_3 = 'drill', clue_4 = 'construction' WHERE word = 'JACKHAMMER';
UPDATE empossdurr_words SET clue_1 = 'garden', clue_2 = 'beard', clue_3 = 'pointy hat', clue_4 = 'statue' WHERE word = 'LAWN GNOME';
UPDATE empossdurr_words SET clue_1 = 'blankets', clue_2 = 'chairs', clue_3 = 'floor', clue_4 = 'flashlight' WHERE word = 'PILLOW FORT';
UPDATE empossdurr_words SET clue_1 = 'water', clue_2 = 'squeak', clue_3 = 'yellow', clue_4 = 'floatie' WHERE word = 'RUBBER DUCK';
UPDATE empossdurr_words SET clue_1 = 'playground', clue_2 = 'balance', clue_3 = 'plank', clue_4 = 'tip' WHERE word = 'SEESAW';
UPDATE empossdurr_words SET clue_1 = 'jingle', clue_2 = 'shake', clue_3 = 'band', clue_4 = 'ribbons' WHERE word = 'TAMBOURINE';
UPDATE empossdurr_words SET clue_1 = 'balance', clue_2 = 'circus', clue_3 = 'pedal', clue_4 = 'tire' WHERE word = 'UNICYCLE';
UPDATE empossdurr_words SET clue_1 = 'spout', clue_2 = 'garden', clue_3 = 'sprinkle', clue_4 = 'plants' WHERE word = 'WATERING CAN';
UPDATE empossdurr_words SET clue_1 = 'cable', clue_2 = 'harness', clue_3 = 'forest', clue_4 = 'glide' WHERE word = 'ZIPLINE';
UPDATE empossdurr_words SET clue_1 = 'gutter', clue_2 = 'pins', clue_3 = 'heavy', clue_4 = 'lane' WHERE word = 'BOWLING BALL';
UPDATE empossdurr_words SET clue_1 = 'chime', clue_2 = 'porch', clue_3 = 'ring', clue_4 = 'visitor' WHERE word = 'DOORBELL';
UPDATE empossdurr_words SET clue_1 = 'kitchen', clue_2 = 'sand', clue_3 = 'minutes', clue_4 = 'ding' WHERE word = 'EGG TIMER';
UPDATE empossdurr_words SET clue_1 = 'batteries', clue_2 = 'beam', clue_3 = 'dark', clue_4 = 'camping' WHERE word = 'FLASHLIGHT';
UPDATE empossdurr_words SET clue_1 = 'coin', clue_2 = 'glass', clue_3 = 'chew', clue_4 = 'twist' WHERE word = 'GUMBALL MACHINE';
UPDATE empossdurr_words SET clue_1 = 'spin', clue_2 = 'waist', clue_3 = 'plastic', clue_4 = 'circle' WHERE word = 'HULA HOOP';
UPDATE empossdurr_words SET clue_1 = 'jingle', clue_2 = 'cone', clue_3 = 'summer', clue_4 = 'freezer' WHERE word = 'ICE CREAM TRUCK';
UPDATE empossdurr_words SET clue_1 = 'pieces', clue_2 = 'edges', clue_3 = 'table', clue_4 = 'missing' WHERE word = 'JIGSAW PUZZLE';
UPDATE empossdurr_words SET clue_1 = 'string', clue_2 = 'wind', clue_3 = 'tail', clue_4 = 'fly' WHERE word = 'KITE';
UPDATE empossdurr_words SET clue_1 = 'hot', clue_2 = 'blob', clue_3 = 'retro', clue_4 = 'bedroom' WHERE word = 'LAVA LAMP';
UPDATE empossdurr_words SET clue_1 = 'carousel', clue_2 = 'music', clue_3 = 'spin', clue_4 = 'horses' WHERE word = 'MERRY-GO-ROUND';
UPDATE empossdurr_words SET clue_1 = 'chomp', clue_2 = 'teeth', clue_3 = 'ballet', clue_4 = 'wooden' WHERE word = 'NUTCRACKER';
UPDATE empossdurr_words SET clue_1 = 'kitchen', clue_2 = 'hot', clue_3 = 'grip', clue_4 = 'fabric' WHERE word = 'OVEN MITT';
UPDATE empossdurr_words SET clue_1 = 'squawk', clue_2 = 'feather', clue_3 = 'pirate', clue_4 = 'mimic' WHERE word = 'PARROT';
UPDATE empossdurr_words SET clue_1 = 'porch', clue_2 = 'creak', clue_3 = 'grandma', clue_4 = 'sway' WHERE word = 'ROCKING CHAIR';
UPDATE empossdurr_words SET clue_1 = 'circus', clue_2 = 'balance', clue_3 = 'wire', clue_4 = 'fall' WHERE word = 'TIGHTROPE';
UPDATE empossdurr_words SET clue_1 = 'suck', clue_2 = 'hose', clue_3 = 'carpet', clue_4 = 'dust' WHERE word = 'VACUUM CLEANER';
UPDATE empossdurr_words SET clue_1 = 'wheels', clue_2 = 'pull', clue_3 = 'red', clue_4 = 'handle' WHERE word = 'WAGON';
UPDATE empossdurr_words SET clue_1 = 'rooftop', clue_2 = 'arrow', clue_3 = 'wind', clue_4 = 'rooster' WHERE word = 'WEATHER VANE';

-- ---- Part 2: insert the 405 genuinely new words ----
INSERT INTO empossdurr_words (word, clue_1, clue_2, clue_3, clue_4) VALUES
    ('BALTIMORE', 'orange', 'purple', 'dirty', 'beltway'),
    ('SPRING GROVE', 'home', 'pa', 'mill', 'circle'),
    ('MUSHROOM', 'cap', 'mario', 'trip', 'lo mein'),
    ('MINECRAFT', 'block', 'savanna', 'steve', 'notch'),
    ('WINE', 'veritas', 'grape', 'cork', 'glass'),
    ('TRUMP', 'orange', 'blob', 'chicken', 'hair'),
    ('COFFEE', 'grind', 'bean', 'tea', 'drip'),
    ('BOSTON', 'bean', 'will', 'tea', 'patriots'),
    ('BAT', 'bugs', 'bruce', 'night', 'cave'),
    ('TONGUE', 'stick', 'roll', 'raspberry', 'wag'),
    ('MUD', 'dirt', 'brown', 'boots', 'mop'),
    ('DORA', 'backpack', 'map', 'boots', 'swipe'),
    ('ATM', 'card', 'swipe', 'cash', 'pin'),
    ('DROP', 'pin', 'edm', 'kick', 'mic'),
    ('DRUM', 'kick', 'line', 'boy', 'beat'),
    ('TEA', 'leaves', 'china', 'earl', 'pinkie'),
    ('AUTUMN', 'trees', 'football', 'brown', 'crisp'),
    ('CEREAL', 'special', 'cheery', 'milk', 'spoon'),
    ('FORK', 'spoon', 'pointy', 'you', 'silver'),
    ('PUZZLE', 'autism', 'table', 'box', 'flip'),
    ('RAIN', 'mist', 'cloud', 'purple', 'sky'),
    ('PRINCE', 'son', 'guitar', 'harry', 'william'),
    ('WATER TOWER', 'gravity', 'tall', 'blue', 'landmark'),
    ('CHRISTMAS', 'tree', 'spirit', 'lights', 'white'),
    ('HEART', 'red', 'shape', 'pump', 'valentine'),
    ('BIG BROTHER', 'jury', 'house', 'zing', 'have'),
    ('CORN MAZE', 'field', 'lost', 'muddy', 'fall'),
    ('BAND-AID', 'cut', 'knee', 'pad', 'blood'),
    ('GOOGLE', 'mail', 'map', 'verb', 'web'),
    ('STARBUCKS', 'pink', 'brew', 'green', 'latte'),
    ('MAILBOX', 'flag', 'post', 'black', 'envelope'),
    ('GRANDMOTHER', 'knitting', 'gray', 'wrinkled', 'cane'),
    ('BREAD', 'slice', 'whole', 'bag', 'rise'),
    ('MADONNA', 'music', 'material', 'immaculate', 'prayer'),
    ('BALD', 'hat', 'shiny', 'eagle', 'smooth'),
    ('WINNER', 'loser', 'chicken', 'dinner', 'runner up'),
    ('GIRAFFE', 'tall', 'spots', 'savanna', 'treetop'),
    ('PENGUIN', 'waddle', 'tuxedo', 'ice floe', 'flightless'),
    ('HEDGEHOG', 'curl', 'garden', 'spiky', 'snuffle'),
    ('PLATYPUS', 'pond', 'webbed', 'egg', 'odd'),
    ('RACCOON', 'mask', 'trash can', 'nocturnal', 'bandit'),
    ('SLOTH', 'slow', 'tree', 'hang', 'lazy'),
    ('PEACOCK', 'feathers', 'strut', 'fan', 'vain'),
    ('CHAMELEON', 'blend in', 'camouflage', 'branch', 'disguise'),
    ('WALRUS', 'tusks', 'blubber', 'arctic', 'whiskers'),
    ('ARMADILLO', 'armor', 'roll up', 'shell', 'burrow'),
    ('TOUCAN', 'beak', 'colorful', 'rainforest', 'fruit'),
    ('OTTER', 'playful', 'river', 'slide', 'fur'),
    ('HIPPO', 'river', 'wallow', 'heavy', 'yawn'),
    ('KOALA', 'eucalyptus', 'cuddly', 'tree', 'nap'),
    ('MEERKAT', 'lookout', 'burrow', 'desert', 'stand tall'),
    ('TACO', 'shell', 'fold', 'spicy', 'tuesday'),
    ('WAFFLE', 'grid', 'syrup', 'iron', 'breakfast'),
    ('DONUT', 'glaze', 'sprinkles', 'dozen', 'ring'),
    ('BURRITO', 'wrap', 'foil', 'filling', 'blanket'),
    ('MILKSHAKE', 'straw', 'blend', 'thick', 'diner'),
    ('NACHOS', 'cheese', 'chips', 'plate', 'shared'),
    ('SUSHI', 'roll', 'raw', 'rice', 'chopsticks'),
    ('BAGEL', 'dense', 'chewy', 'cream cheese', 'breakfast'),
    ('PANCAKE', 'stack', 'flip', 'syrup', 'griddle'),
    ('SMOOTHIE', 'blend', 'fruit', 'straw', 'cold'),
    ('HOT DOG', 'bun', 'ballpark', 'mustard', 'grill'),
    ('CUPCAKE', 'frosting', 'wrapper', 'sprinkles', 'tiny'),
    ('MEATBALL', 'sauce', 'round', 'sub', 'italian'),
    ('GUMBO', 'stew', 'spoon', 'cajun', 'pot'),
    ('FONDUE', 'dip', 'melt', 'skewer', 'pot'),
    ('DISNEYLAND', 'castle', 'mouse', 'rides', 'tickets'),
    ('HOLLYWOOD', 'stars', 'sign', 'red carpet', 'fame'),
    ('EIFFEL TOWER', 'iron', 'paris', 'view', 'postcard'),
    ('GRAND CANYON', 'cliff', 'hike', 'layers', 'echo'),
    ('TIMES SQUARE', 'billboard', 'ball drop', 'crowd', 'neon'),
    ('NIAGARA FALLS', 'barrel', 'mist', 'honeymoon', 'roar'),
    ('MOUNT RUSHMORE', 'carved', 'faces', 'granite', 'presidents'),
    ('YELLOWSTONE', 'geyser', 'bison', 'hot spring', 'park'),
    ('GOLDEN GATE BRIDGE', 'fog', 'cables', 'orange', 'bay'),
    ('STONEHENGE', 'circle', 'ancient', 'mystery', 'stones'),
    ('NETFLIX', 'binge', 'streaming', 'remote', 'couch'),
    ('AMAZON', 'package', 'delivery', 'prime', 'warehouse'),
    ('IPHONE', 'screen', 'apps', 'charger', 'camera'),
    ('TIKTOK', 'scroll', 'viral', 'dance', 'clock'),
    ('ZOOM', 'meeting', 'mute', 'webcam', 'screen'),
    ('BLUETOOTH', 'pair', 'wireless', 'headphones', 'signal'),
    ('WIFI', 'password', 'router', 'signal', 'connect'),
    ('ROBOT', 'metal', 'gears', 'wires', 'beep'),
    ('DRONE', 'hover', 'propeller', 'aerial', 'buzz'),
    ('PRINTER', 'paper', 'ink', 'jam', 'scan'),
    ('LAPTOP', 'keyboard', 'screen', 'battery', 'fold'),
    ('PODCAST', 'microphone', 'episode', 'headphones', 'host'),
    ('SUPERHERO', 'rescue', 'powers', 'sidekick', 'disguise'),
    ('ZOMBIE', 'shuffle', 'groan', 'brains', 'undead'),
    ('VAMPIRE', 'fangs', 'night', 'garlic', 'coffin'),
    ('WIZARD', 'wand', 'spell', 'robe', 'potion'),
    ('NINJA', 'stealth', 'shadow', 'silent', 'throw'),
    ('ALIEN', 'spaceship', 'antenna', 'abduction', 'green'),
    ('MERMAID', 'fin', 'scales', 'ocean', 'siren'),
    ('DRAGON', 'scales', 'breathe fire', 'hoard', 'wings'),
    ('UNICORN', 'horn', 'rainbow', 'magic', 'mane'),
    ('COSPLAY', 'costume', 'convention', 'wig', 'character'),
    ('KARAOKE', 'microphone', 'lyrics', 'stage', 'off-key'),
    ('TROPHY', 'shiny', 'shelf', 'engraved', 'win'),
    ('REFEREE', 'stripes', 'flag', 'call', 'sideline'),
    ('SCOREBOARD', 'numbers', 'lights', 'tally', 'stadium'),
    ('TOUCHDOWN', 'endzone', 'spike', 'celebrate', 'six'),
    ('HOME RUN', 'bases', 'fence', 'cheer', 'swing'),
    ('GOALPOST', 'net', 'kick', 'crossbar', 'field'),
    ('DUGOUT', 'bench', 'cleats', 'gum', 'bats'),
    ('LOCKER ROOM', 'towel', 'pep talk', 'cleats', 'showers'),
    ('MARATHON', 'finish line', 'sweat', 'medal', 'pace'),
    ('SKI SLOPE', 'powder', 'lift', 'moguls', 'goggles'),
    ('SURFBOARD', 'wax', 'wave', 'fin', 'paddle'),
    ('TREADMILL', 'belt', 'incline', 'jog', 'gym'),
    ('CHALKBOARD', 'dust', 'eraser', 'scribble', 'classroom'),
    ('REPORT CARD', 'grades', 'envelope', 'signature', 'semester'),
    ('HALL PASS', 'permission', 'clipboard', 'corridor', 'teacher'),
    ('LOCKER', 'combination', 'hallway', 'slam', 'stickers'),
    ('RECESS', 'playground', 'swings', 'tag', 'freedom'),
    ('DETENTION', 'silence', 'clock', 'desk', 'punishment'),
    ('SCIENCE FAIR', 'poster board', 'experiment', 'judges', 'gymnasium'),
    ('FIELD TRIP', 'bus', 'permission slip', 'chaperone', 'museum'),
    ('POP QUIZ', 'surprise', 'pencil', 'dread', 'grade'),
    ('GRADUATION CAP', 'tassel', 'toss', 'gown', 'stage'),
    ('FIREWORKS', 'sparkle', 'boom', 'sky', 'finale'),
    ('JACK-O-LANTERN', 'carve', 'candle', 'grin', 'porch'),
    ('EASTER EGG', 'hunt', 'basket', 'dye', 'hidden'),
    ('VALENTINE', 'card', 'cupid', 'chocolate', 'red'),
    ('THANKSGIVING', 'turkey', 'feast', 'gratitude', 'table'),
    ('NEW YEAR', 'countdown', 'resolution', 'midnight', 'champagne'),
    ('BIRTHDAY CAKE', 'candles', 'frosting', 'wish', 'slice'),
    ('CONFETTI', 'toss', 'colorful', 'celebration', 'mess'),
    ('PARADE', 'float', 'marching band', 'banner', 'crowd'),
    ('AVALANCHE', 'snow', 'slide', 'mountain', 'sudden'),
    ('HURRICANE', 'eye', 'wind', 'evacuate', 'category'),
    ('TORNADO', 'funnel', 'siren', 'twist', 'debris'),
    ('GLACIER', 'ice', 'slow', 'blue', 'crevasse'),
    ('OASIS', 'palm trees', 'mirage', 'desert', 'spring'),
    ('GEYSER', 'erupt', 'steam', 'boiling', 'spout'),
    ('TIDE POOL', 'rocks', 'starfish', 'shallow', 'anemone'),
    ('METEOR SHOWER', 'streak', 'wish', 'night sky', 'blaze'),
    ('NORTHERN LIGHTS', 'aurora', 'green glow', 'arctic', 'dance'),
    ('SANDSTORM', 'gritty', 'visibility', 'desert', 'gust'),
    ('TOASTER', 'pop up', 'crumbs', 'slot', 'browning'),
    ('BLENDER', 'puree', 'pitcher', 'whirl', 'blade'),
    ('RECLINER', 'footrest', 'nap', 'remote', 'cushions'),
    ('DOORMAT', 'welcome', 'wipe feet', 'entrance', 'bristly'),
    ('CLOTHESLINE', 'pins', 'breeze', 'laundry', 'backyard'),
    ('ATTIC', 'dusty', 'boxes', 'cobwebs', 'rafters'),
    ('BASEMENT', 'dark', 'stairs', 'storage', 'damp'),
    ('GARAGE SALE', 'bargain', 'tags', 'driveway', 'haggle'),
    ('CEILING FAN', 'spin', 'blades', 'breeze', 'pull chain'),
    ('LIGHT SWITCH', 'flip', 'wall', 'dark', 'click'),
    ('SMOKE DETECTOR', 'beep', 'battery', 'alarm', 'ceiling'),
    ('THERMOSTAT', 'dial', 'temperature', 'wall', 'adjust'),
    ('JUNK DRAWER', 'clutter', 'batteries', 'mess', 'tangled'),
    ('MEDICINE CABINET', 'mirror', 'bandages', 'pills', 'shelf'),
    ('SCHOOL BUS', 'yellow', 'seats', 'driver', 'route'),
    ('GOLF CART', 'quiet', 'course', 'fairway', 'electric'),
    ('MOTORCYCLE', 'engine', 'helmet', 'roar', 'handlebars'),
    ('HOT AIR BALLOON', 'basket', 'float', 'burner', 'sky'),
    ('CANOE', 'paddle', 'river', 'tip over', 'calm water'),
    ('SKI LIFT', 'chair', 'cable', 'mountain', 'dangle'),
    ('MONSTER TRUCK', 'crush', 'tires', 'mud', 'arena'),
    ('TOW TRUCK', 'hook', 'breakdown', 'flatbed', 'rescue'),
    ('MOPED', 'scooter', 'small engine', 'helmet', 'zip'),
    ('DISCO BALL', 'sparkle', 'spin', 'mirror', 'dance floor'),
    ('BOOMBOX', 'shoulder', 'cassette', 'blast', 'batteries'),
    ('VINYL RECORD', 'needle', 'groove', 'spin', 'crackle'),
    ('MOSH PIT', 'shove', 'concert', 'chaos', 'crowd surf'),
    ('ENCORE', 'applause', 'one more', 'curtain', 'cheer'),
    ('SPOTLIGHT', 'beam', 'stage', 'bright', 'focus'),
    ('BACKSTAGE', 'crew', 'dressing room', 'cue', 'hidden'),
    ('JUKEBOX', 'coin', 'select', 'diner', 'flashing'),
    ('SAFETY PIN', 'clasp', 'diaper', 'sharp', 'fasten'),
    ('DUCT TAPE', 'sticky', 'silver', 'roll', 'fix-all'),
    ('RUBBER BAND', 'stretch', 'snap', 'ponytail', 'bundle'),
    ('PAPER AIRPLANE', 'fold', 'glide', 'classroom', 'crease'),
    ('SNOW CONE', 'shaved ice', 'syrup', 'paper cup', 'summer'),
    ('BUBBLE GUM', 'chew', 'blow', 'pink', 'pop'),
    ('FIDGET SPINNER', 'twirl', 'fingers', 'classroom', 'distraction'),
    ('WATER BALLOON', 'splash', 'toss', 'summer', 'soaked'),
    ('POGO STICK', 'bounce', 'spring', 'hop', 'sidewalk'),
    ('KAZOO', 'hum', 'buzz', 'plastic', 'silly'),
    ('KALEIDOSCOPE', 'twist', 'colors', 'mirror', 'pattern'),
    ('LOCKET', 'chain', 'photo', 'open', 'heart'),
    ('MAGNIFYING GLASS', 'detective', 'lens', 'enlarge', 'ants'),
    ('MONOCLE', 'eye', 'fancy', 'single lens', 'aristocrat'),
    ('PARASOL', 'shade', 'lace', 'twirl', 'garden'),
    ('TOP HAT', 'magician', 'tall', 'formal', 'rabbit'),
    ('BOW TIE', 'formal', 'neck', 'dapper', 'waiter'),
    ('FANNY PACK', 'waist', 'zip', 'retro', 'tourist'),
    ('RAINCOAT', 'hood', 'puddle', 'yellow', 'drizzle'),
    ('FLIP FLOPS', 'sandy', 'slap', 'summer', 'beach'),
    ('MITTENS', 'cold', 'string', 'snowball', 'cozy'),
    ('EARRINGS', 'dangle', 'pierce', 'sparkle', 'pair'),
    ('SUNGLASSES', 'shade', 'cool', 'lens', 'glare'),
    ('BANDANA', 'knot', 'cowboy', 'wrap', 'headscarf'),
    ('CAPE', 'flowing', 'shoulder', 'dramatic', 'wind'),
    ('LIFEGUARD', 'tower', 'tan', 'rescue', 'float'),
    ('ASTRONAUT', 'suit', 'gravity', 'moonwalk', 'helmet'),
    ('CHEF', 'apron', 'whisk', 'kitchen', 'taste'),
    ('DENTIST', 'drill', 'floss', 'chair', 'checkup'),
    ('POSTAL WORKER', 'route', 'stamp', 'uniform', 'deliver'),
    ('LIBRARIAN', 'shush', 'shelves', 'due date', 'glasses'),
    ('ELECTRICIAN', 'wires', 'sparks', 'outlet', 'ladder'),
    ('PLUMBER', 'wrench', 'pipes', 'leak', 'overalls'),
    ('VETERINARIAN', 'paws', 'checkup', 'clinic', 'gentle'),
    ('ARCHITECT', 'blueprint', 'model', 'design', 'skyline'),
    ('CHESSBOARD', 'squares', 'strategy', 'king', 'checkmate'),
    ('DOMINOES', 'tile', 'chain reaction', 'dots', 'topple'),
    ('RUBIKS CUBE', 'twist', 'colors', 'solve', 'frustrating'),
    ('MARBLES', 'glass', 'roll', 'pouch', 'shooter'),
    ('JUMP ROPE', 'skip', 'playground', 'double dutch', 'swing'),
    ('BOARD GAME', 'dice', 'rules', 'family night', 'pieces'),
    ('ACTION FIGURE', 'pose', 'plastic', 'collect', 'hero'),
    ('STUFFED ANIMAL', 'cuddly', 'button eyes', 'bedtime', 'soft'),
    ('WATER GUN', 'squirt', 'summer', 'refill', 'ambush'),
    ('PLAYING CARDS', 'shuffle', 'deck', 'deal', 'poker'),
    ('KEYCHAIN', 'dangle', 'jingle', 'pocket', 'souvenir'),
    ('ELBOW', 'bend', 'funny bone', 'joint', 'nudge'),
    ('KNEE', 'cap', 'bend', 'scrape', 'wobbly'),
    ('EYEBROW', 'raise', 'arch', 'pencil', 'expression'),
    ('FRECKLE', 'sun', 'dot', 'cheek', 'scatter'),
    ('DIMPLE', 'smile', 'cheek', 'cute', 'chin'),
    ('COWLICK', 'hair', 'stubborn', 'part', 'comb'),
    ('BELLY BUTTON', 'lint', 'innie', 'outie', 'tummy'),
    ('KNUCKLE', 'crack', 'fist', 'ring', 'sandwich'),
    ('EARLOBE', 'pierce', 'dangle', 'tug', 'soft'),
    ('NOSTRIL', 'flare', 'sniff', 'breathe', 'tickle'),
    ('YAWN', 'tired', 'contagious', 'stretch', 'mouth'),
    ('HICCUP', 'startle', 'breath', 'spasm', 'annoying'),
    ('JEALOUSY', 'green', 'envy', 'rival', 'sting'),
    ('NOSTALGIA', 'memory', 'old song', 'bittersweet', 'throwback'),
    ('STAGE FRIGHT', 'nerves', 'spotlight', 'freeze', 'audience'),
    ('DEJA VU', 'familiar', 'glitch', 'repeat', 'strange'),
    ('WRITERS BLOCK', 'blank page', 'stuck', 'stare', 'frustration'),
    ('BUTTERFLIES', 'nervous', 'stomach', 'flutter', 'first date'),
    ('GOOSEBUMPS', 'chill', 'skin', 'spooky', 'arm hair'),
    ('BRAIN FREEZE', 'cold', 'headache', 'ice cream', 'sudden'),
    ('SIDE-EYE', 'glance', 'suspicious', 'judge', 'glare'),
    ('FACEPALM', 'embarrassed', 'forehead', 'groan', 'oops'),
    ('SATURN', 'rings', 'planet', 'gas', 'orbit'),
    ('BLACK HOLE', 'gravity', 'suck in', 'dark', 'warp'),
    ('COMET', 'tail', 'ice', 'streak', 'orbit'),
    ('CONSTELLATION', 'stars', 'connect dots', 'pattern', 'myth'),
    ('ECLIPSE', 'shadow', 'glasses', 'block', 'rare'),
    ('GALAXY', 'spiral', 'stars', 'vast', 'milky'),
    ('ASTEROID', 'rock', 'belt', 'crash', 'space'),
    ('ROCKET', 'launch', 'fuel', 'blast off', 'countdown'),
    ('SPACE STATION', 'orbit', 'floating', 'module', 'astronaut'),
    ('MOON LANDING', 'flag', 'footprint', 'giant leap', '1969'),
    ('JELLYFISH', 'sting', 'float', 'translucent', 'tentacles'),
    ('STARFISH', 'arms', 'regrow', 'tide pool', 'sandy'),
    ('SEAHORSE', 'tiny', 'curled tail', 'coral', 'dad carries eggs'),
    ('SHARK FIN', 'dorsal', 'cut water', 'movie music', 'gray'),
    ('CORAL REEF', 'colorful', 'fragile', 'fish', 'bleaching'),
    ('TIDAL WAVE', 'massive', 'shore', 'warning', 'surge'),
    ('SHIPWRECK', 'sunken', 'treasure', 'rust', 'divers'),
    ('PEARL', 'oyster', 'necklace', 'shine', 'grit'),
    ('SEAWEED', 'slimy', 'green', 'wash up', 'tangled'),
    ('SAND DOLLAR', 'flat', 'beach', 'fragile', 'disc'),
    ('HARPOON', 'whaling', 'spear', 'rope', 'old ship'),
    ('LADYBUG', 'spots', 'luck', 'red', 'garden'),
    ('GRASSHOPPER', 'jump', 'green', 'chirp', 'field'),
    ('CATERPILLAR', 'crawl', 'leaves', 'fuzzy', 'transform'),
    ('CRICKET', 'chirp', 'night', 'jump', 'lucky'),
    ('MANTIS', 'pray', 'green', 'ambush', 'still'),
    ('ANT HILL', 'colony', 'dirt mound', 'picnic', 'tiny'),
    ('MOSQUITO', 'bite', 'buzz', 'itchy', 'repellent'),
    ('TERMITE', 'wood', 'colony', 'damage', 'hidden'),
    ('DUNG BEETLE', 'roll', 'gross', 'strong', 'recycle'),
    ('OWL', 'nocturnal', 'hoot', 'wise', 'swivel'),
    ('EAGLE', 'soar', 'talons', 'patriotic', 'nest'),
    ('WOODPECKER', 'tap', 'drum', 'tree', 'red crest'),
    ('HUMMINGBIRD', 'hover', 'tiny', 'nectar', 'fast wings'),
    ('PELICAN', 'pouch', 'dive', 'beach', 'large bill'),
    ('ROBIN', 'red breast', 'spring', 'worm', 'nest'),
    ('SEAGULL', 'steal fries', 'squawk', 'beach', 'white'),
    ('CROW', 'caw', 'black', 'clever', 'murder'),
    ('CARDINAL', 'red', 'winter', 'feeder', 'whistle'),
    ('OSTRICH', 'bury head', 'tall', 'fast runner', 'egg'),
    ('FOSSIL', 'dig', 'ancient', 'rock', 'imprint'),
    ('AMBER', 'trapped', 'golden', 'resin', 'ancient bug'),
    ('CAVEMAN', 'club', 'fire', 'drawings', 'grunt'),
    ('MAMMOTH', 'tusks', 'frozen', 'hairy', 'extinct'),
    ('DINOSAUR EGG', 'nest', 'hatch', 'giant', 'fossil'),
    ('T-REX', 'tiny arms', 'roar', 'jurassic', 'predator'),
    ('SABER-TOOTH', 'fangs', 'ice age', 'cat', 'prehistoric'),
    ('BARN', 'hay', 'red', 'animals', 'silo'),
    ('SILO', 'grain', 'tall', 'farm', 'tower'),
    ('TRACTOR', 'plow', 'mud', 'farmer', 'wheels'),
    ('HAYRIDE', 'wagon', 'tractor', 'autumn', 'bumpy'),
    ('CHICKEN COOP', 'eggs', 'cluck', 'fence', 'feathers'),
    ('PITCHFORK', 'hay', 'farmer', 'prongs', 'barn'),
    ('MILKING STOOL', 'three-legged', 'barn', 'low', 'cow'),
    ('CORNFIELD', 'rows', 'tall', 'rustle', 'harvest'),
    ('ROOSTER', 'crow', 'sunrise', 'comb', 'farm'),
    ('DUCK POND', 'quack', 'ripple', 'feed', 'park'),
    ('RINGMASTER', 'top hat', 'whip', 'announce', 'spotlight'),
    ('TRAPEZE', 'swing', 'catch', 'high wire', 'net'),
    ('JUGGLER', 'balls', 'toss', 'clown', 'coordination'),
    ('CLOWN', 'red nose', 'big shoes', 'honk', 'makeup'),
    ('CARNIVAL GAME', 'rigged', 'prize', 'ring toss', 'stuffed animal'),
    ('COTTON CANDY', 'fluffy', 'spin', 'pink', 'melt'),
    ('FUNHOUSE MIRROR', 'distort', 'warped', 'laugh', 'reflection'),
    ('STRONGMAN', 'mallet', 'bell', 'muscle', 'tent'),
    ('DRUMSTICK', 'tap', 'rhythm', 'wood', 'beat'),
    ('TRUMPET', 'brass', 'valves', 'blare', 'marching band'),
    ('VIOLIN', 'bow', 'strings', 'orchestra', 'screech'),
    ('HARMONICA', 'blues', 'breathe', 'pocket', 'train sound'),
    ('BAGPIPES', 'scottish', 'wail', 'kilt', 'squeeze'),
    ('TRIANGLE', 'ting', 'metal', 'orchestra', 'simple'),
    ('CYMBALS', 'crash', 'clang', 'drummer', 'shiny'),
    ('HARP', 'strings', 'angel', 'pluck', 'elegant'),
    ('DIDGERIDOO', 'hum', 'long', 'aboriginal', 'breath'),
    ('MARACAS', 'shake', 'rattle', 'latin', 'pair'),
    ('FOG', 'mist', 'low visibility', 'ghostly', 'morning'),
    ('FROST', 'cold', 'window', 'crunch', 'silver'),
    ('HAIL', 'ice', 'dent', 'sudden', 'pellets'),
    ('DEW', 'morning', 'grass', 'droplets', 'glisten'),
    ('HEAT WAVE', 'sweat', 'record', 'shimmer', 'fan'),
    ('BLIZZARD', 'whiteout', 'snowplow', 'howling', 'freezing'),
    ('DROUGHT', 'dry', 'cracked ground', 'water shortage', 'dust'),
    ('MONSOON', 'heavy rain', 'season', 'flood', 'humid'),
    ('CAFETERIA', 'tray', 'lunch line', 'noisy', 'mystery meat'),
    ('YEARBOOK', 'signatures', 'photos', 'memories', 'cover'),
    ('SPELLING BEE', 'microphone', 'nerves', 'buzzer', 'champion'),
    ('SUBSTITUTE TEACHER', 'unfamiliar', 'chaos', 'seating chart', 'note'),
    ('HOMEROOM', 'attendance', 'announcements', 'first bell', 'seat'),
    ('PRINCIPALS OFFICE', 'trouble', 'chair', 'intercom', 'nervous'),
    ('SCHOOL PLAY', 'costume', 'lines', 'curtain', 'nerves'),
    ('BUS STOP', 'wait', 'backpack', 'early morning', 'corner'),
    ('CUBICLE', 'gray', 'walls', 'coffee mug', 'monotony'),
    ('STAPLER', 'click', 'red', 'jam', 'desk'),
    ('PAPER CLIP', 'bend', 'silver', 'holds', 'wire'),
    ('WHITEBOARD', 'marker', 'erase', 'meeting', 'squeak'),
    ('CONFERENCE CALL', 'mute', 'awkward', 'silence', 'dial in'),
    ('WATER COOLER', 'gossip', 'gurgle', 'jug', 'break room'),
    ('NAME TAG', 'convention', 'sticker', 'badge', 'lanyard'),
    ('BREAK ROOM', 'microwave', 'fridge', 'snacks', 'small talk'),
    ('THERMOMETER', 'temperature', 'mercury', 'fever', 'under tongue'),
    ('CRUTCHES', 'hobble', 'cast', 'armpit', 'injury'),
    ('WHEELCHAIR', 'wheels', 'ramp', 'push', 'accessible'),
    ('X-RAY', 'bones', 'radiation', 'vest', 'scan'),
    ('WAITING ROOM', 'magazines', 'nervous', 'clipboard', 'called'),
    ('CAST', 'itchy', 'signatures', 'broken', 'plaster'),
    ('EYE CHART', 'letters', 'blurry', 'doctor', 'memorize'),
    ('PAINTBRUSH', 'bristles', 'canvas', 'dip', 'strokes'),
    ('EASEL', 'canvas', 'stand', 'studio', 'tilt'),
    ('GLUE STICK', 'glitter', 'purple', 'twist up', 'craft'),
    ('SCISSORS', 'cut', 'blades', 'paper', 'sharp'),
    ('CRAYON', 'wax', 'box of 64', 'color outside lines', 'melt'),
    ('CLAY', 'mold', 'squish', 'kiln', 'pottery wheel'),
    ('GLITTER', 'sparkle', 'mess', 'everywhere', 'craft'),
    ('SKETCHBOOK', 'pencil', 'blank pages', 'doodle', 'artist'),
    ('ORIGAMI', 'fold', 'paper', 'crane', 'precise'),
    ('MOSAIC', 'tiles', 'pattern', 'fragments', 'glass'),
    ('ROTARY PHONE', 'dial', 'cord', 'click', 'heavy'),
    ('CASSETTE TAPE', 'rewind', 'walkman', 'ribbon', 'click'),
    ('FLOPPY DISK', 'save icon', 'outdated', 'click', 'storage'),
    ('POLAROID', 'shake', 'instant', 'square', 'develop'),
    ('ARCADE MACHINE', 'quarter', 'joystick', 'high score', 'blinking'),
    ('PAGER', 'beep', 'clip', '90s', 'buzz'),
    ('VHS TAPE', 'rewind', 'rental', 'static', 'tracking'),
    ('DIAL-UP MODEM', 'screech', 'connect', 'slow', '90s'),
    ('WALLET', 'cash', 'cards', 'fold', 'pocket'),
    ('PURSE', 'strap', 'clutter', 'zipper', 'shoulder'),
    ('SUITCASE', 'pack', 'wheels', 'airport', 'handle'),
    ('PASSPORT', 'stamp', 'photo', 'travel', 'booklet'),
    ('BOARDING PASS', 'gate', 'seat number', 'scan', 'airport'),
    ('ELEVATOR', 'buttons', 'floors', 'music', 'ding'),
    ('REVOLVING DOOR', 'spin', 'lobby', 'glass', 'continuous'),
    ('FIRE ESCAPE', 'metal', 'ladder', 'alley', 'emergency'),
    ('STREETLAMP', 'glow', 'night', 'moths', 'pole'),
    ('PARKING METER', 'coins', 'ticket', 'expired', 'curb'),
    ('CROSSWALK', 'stripes', 'signal', 'pedestrian', 'button'),
    ('MANHOLE COVER', 'round', 'steam', 'street', 'heavy'),
    ('FIRE HYDRANT', 'red', 'dog', 'spray', 'curb'),
    ('NEWSPAPER STAND', 'headline', 'coins', 'corner', 'folded'),
    ('PARK BENCH', 'sit', 'pigeons', 'plaque', 'shade'),
    ('GAZEBO', 'park', 'wedding', 'roof', 'octagon'),
    ('SUNDIAL', 'shadow', 'ancient', 'garden', 'time'),
    ('HELMET', 'padding', 'chin strap', 'protect', 'sport'),
    ('SHIN GUARD', 'soccer', 'padding', 'protect', 'kick'),
    ('MOUTHGUARD', 'teeth', 'football', 'protect', 'custom'),
    ('JERSEY', 'number', 'team', 'sweat', 'locker room'),
    ('CLEATS', 'spikes', 'grass', 'soccer', 'traction'),
    ('SCOREKEEPER', 'pencil', 'tally', 'sideline', 'careful'),
    ('BASKETBALL HOOP', 'net', 'rim', 'swish', 'backboard'),
    ('FINISH LINE', 'tape', 'cheer', 'race', 'checkered flag'),
    ('STARTING BLOCKS', 'sprinter', 'crouch', 'race', 'tension'),
    ('VICTORY LAP', 'cheer', 'flag', 'slow down', 'celebrate'),
    ('GREENHOUSE', 'glass', 'plants', 'humid', 'grow'),
    ('FLOWER POT', 'dirt', 'drainage', 'terracotta', 'windowsill'),
    ('RAKE', 'leaves', 'prongs', 'autumn', 'tines'),
    ('SHOVEL', 'dig', 'dirt', 'blade', 'garden'),
    ('SEED PACKET', 'plant', 'envelope', 'instructions', 'sprout'),
    ('COMPOST BIN', 'rot', 'scraps', 'worms', 'recycle'),
    ('BIRDBATH', 'water', 'garden', 'splash', 'statue'),
    ('SLED', 'hill', 'snow', 'slide', 'wooden'),
    ('ICE SKATE', 'blade', 'rink', 'glide', 'cold'),
    ('SNOWBALL', 'pack', 'throw', 'cold', 'fight'),
    ('SNOWPLOW', 'clear', 'street', 'orange', 'heavy'),
    ('ICICLE', 'drip', 'sharp', 'hang', 'melt'),
    ('SNOW SHOVEL', 'driveway', 'heavy', 'clear', 'back-breaking'),
    ('HOT COCOA', 'mug', 'marshmallow', 'warm', 'winter'),
    ('WOOL SCARF', 'wrap', 'itchy', 'neck', 'knit');
