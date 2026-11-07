-- letter_rip_puzzles.sql
-- Letter Rip (working name; Randy, Nov 2026): the puzzles for the letter
-- race mode. Each row is one puzzle: a phrase players solve, and the
-- category shown above the board as its clue.
--
-- A game plays 6 puzzles, each from a different category, and a room
-- doesn't repeat a puzzle until it has played them all. 102 puzzles in 17
-- categories of 6.
--
-- Writing your own: capital letters, spaces, apostrophes and hyphens only
-- (no digits). Apostrophes and hyphens show on the board from the start.
-- The category names are our own (not a game show's), and a phrase never
-- repeats a real word of its own category (no "PARTY HATS" under "Party
-- Time").
--
-- Safe to re-run: creates the table if needed, then deletes and re-inserts
-- every row, in one transaction. Touches nothing else.

BEGIN;

CREATE TABLE IF NOT EXISTS letter_rip_puzzles (
    id        SERIAL PRIMARY KEY,
    category  TEXT NOT NULL,
    phrase    TEXT NOT NULL UNIQUE
);

DELETE FROM letter_rip_puzzles;

INSERT INTO letter_rip_puzzles (category, phrase) VALUES
('Around the House',  'KITCHEN SINK'),
('Around the House',  'LAUNDRY BASKET'),
('Around the House',  'COFFEE TABLE'),
('Around the House',  'FRONT PORCH SWING'),
('Around the House',  'CEILING FAN'),
('Around the House',  'WELCOME MAT'),
('In the Kitchen',    'ROLLING PIN'),
('In the Kitchen',    'CAST IRON SKILLET'),
('In the Kitchen',    'MEASURING CUPS'),
('In the Kitchen',    'CUTTING BOARD'),
('In the Kitchen',    'SLOW COOKER'),
('In the Kitchen',    'SPATULA AND WHISK'),
('On the Map',        'GRAND CANYON'),
('On the Map',        'NIAGARA FALLS'),
('On the Map',        'ROCKY MOUNTAINS'),
('On the Map',        'LAKE TAHOE'),
('On the Map',        'GREAT BARRIER REEF'),
('On the Map',        'MOUNT KILIMANJARO'),
('At the Ballpark',   'SEVENTH INNING STRETCH'),
('At the Ballpark',   'TAKE ME OUT TO THE BALLGAME'),
('At the Ballpark',   'HOME RUN DERBY'),
('At the Ballpark',   'GRAND SLAM'),
('At the Ballpark',   'DOUBLE PLAY'),
('At the Ballpark',   'STOLEN BASE'),
('Things People Say', 'BETTER LATE THAN NEVER'),
('Things People Say', 'EASY AS PIE'),
('Things People Say', 'BREAK A LEG'),
('Things People Say', 'HOLD YOUR HORSES'),
('Things People Say', 'CROSS YOUR FINGERS'),
('Things People Say', 'PIECE OF CAKE'),
('Out in Nature',     'BABBLING BROOK'),
('Out in Nature',     'SUNFLOWER FIELD'),
('Out in Nature',     'PINE FOREST'),
('Out in Nature',     'AUTUMN LEAVES'),
('Out in Nature',     'WILDFLOWER MEADOW'),
('Out in Nature',     'FALLING ACORNS'),
('On the Road',       'CRUISE CONTROL'),
('On the Road',       'SPEED BUMP'),
('On the Road',       'TRAFFIC JAM'),
('On the Road',       'GAS STATION'),
('On the Road',       'SCENIC ROUTE'),
('On the Road',       'FLAT TIRE'),
('Classic Movies',    'THE WIZARD OF OZ'),
('Classic Movies',    'JURASSIC PARK'),
('Classic Movies',    'BACK TO THE FUTURE'),
('Classic Movies',    'THE SOUND OF MUSIC'),
('Classic Movies',    'STAR WARS'),
('Classic Movies',    'TOY STORY'),
('Famous Pairs',      'SALT AND PEPPER'),
('Famous Pairs',      'PEANUT BUTTER AND JELLY'),
('Famous Pairs',      'BACON AND EGGS'),
('Famous Pairs',      'CATS AND DOGS'),
('Famous Pairs',      'ROCK AND ROLL'),
('Famous Pairs',      'MACARONI AND CHEESE'),
('On the Bookshelf',  'TREASURE ISLAND'),
('On the Bookshelf',  'CHARLOTTE''S WEB'),
('On the Bookshelf',  'LITTLE WOMEN'),
('On the Bookshelf',  'THE HOBBIT'),
('On the Bookshelf',  'MOBY DICK'),
('On the Bookshelf',  'PRIDE AND PREJUDICE'),
('Animal Kingdom',    'BALD EAGLE'),
('Animal Kingdom',    'GIANT PANDA'),
('Animal Kingdom',    'KILLER WHALE'),
('Animal Kingdom',    'POLAR BEAR'),
('Animal Kingdom',    'HUMMINGBIRD'),
('Animal Kingdom',    'BOTTLENOSE DOLPHIN'),
('Out of This World', 'MILKY WAY'),
('Out of This World', 'SOLAR ECLIPSE'),
('Out of This World', 'BLACK HOLE'),
('Out of This World', 'NORTHERN LIGHTS'),
('Out of This World', 'SHOOTING STAR'),
('Out of This World', 'ROCKET LAUNCH'),
('Sweet Treats',      'CHOCOLATE CHIP COOKIE'),
('Sweet Treats',      'BANANA SPLIT'),
('Sweet Treats',      'COTTON CANDY'),
('Sweet Treats',      'APPLE PIE A LA MODE'),
('Sweet Treats',      'HOT FUDGE SUNDAE'),
('Sweet Treats',      'STRAWBERRY SHORTCAKE'),
('Party Time',        'BIRTHDAY CAKE'),
('Party Time',        'BALLOON ANIMALS'),
('Party Time',        'PIN THE TAIL ON THE DONKEY'),
('Party Time',        'MUSICAL CHAIRS'),
('Party Time',        'GOODY BAGS'),
('Party Time',        'CONFETTI CANNON'),
('Weather Report',    'PARTLY CLOUDY'),
('Weather Report',    'THUNDERSTORM WARNING'),
('Weather Report',    'HEAT WAVE'),
('Weather Report',    'BLIZZARD CONDITIONS'),
('Weather Report',    'SCATTERED SHOWERS'),
('Weather Report',    'MORNING FOG'),
('Back to School',    'PERMISSION SLIP'),
('Back to School',    'POP QUIZ'),
('Back to School',    'LUNCH TRAY'),
('Back to School',    'FIELD TRIP'),
('Back to School',    'SPELLING BEE'),
('Back to School',    'HALL PASS'),
('Game Night',        'FULL HOUSE'),
('Game Night',        'ROLL THE DICE'),
('Game Night',        'CHECKMATE'),
('Game Night',        'HIDE AND SEEK'),
('Game Night',        'TIC TAC TOE'),
('Game Night',        'JIGSAW PUZZLE');

COMMIT;

-- Check: should return 102.
SELECT COUNT(*) FROM letter_rip_puzzles;
