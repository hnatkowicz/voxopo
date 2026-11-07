-- ============================================================================
-- content/sql/letter_rip.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/letter_rip.csv, the master copy of Letter
-- Rip's puzzles. To change a puzzle, change the spreadsheet and rebuild.
--
-- Replaces EVERY Letter Rip puzzle with the spreadsheet's 600 live ones
-- (30 categories), inside a transaction. Creates the table if needed.
-- Safe to re-run. Touches nothing else.
-- ============================================================================

BEGIN;

CREATE TABLE IF NOT EXISTS letter_rip_puzzles (
    id        SERIAL PRIMARY KEY,
    category  TEXT NOT NULL,
    phrase    TEXT NOT NULL UNIQUE
);

DELETE FROM letter_rip_puzzles;


-- Animal Kingdom (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'BALD EAGLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'GIANT PANDA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'KILLER WHALE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'POLAR BEAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'HUMMINGBIRD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'BOTTLENOSE DOLPHIN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'GIRAFFE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'KANGAROO');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'ARCTIC FOX');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'SNOW LEOPARD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'KOMODO DRAGON');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'PRAIRIE DOG');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'SEA OTTER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'GRIZZLY BEAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'RED PANDA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'HONEY BADGER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'BARN OWL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'TIMBER WOLF');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'MOUNTAIN GOAT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Animal Kingdom', 'PEACOCK');

-- At the Ballpark (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'SEVENTH INNING STRETCH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'TAKE ME OUT TO THE BALLGAME');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'HOME RUN DERBY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'GRAND SLAM');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'DOUBLE PLAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'STOLEN BASE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'HOT DOG VENDOR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'PITCHER''S MOUND');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'BULLPEN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'FOUL BALL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'CURVEBALL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'HOME PLATE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'DUGOUT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'BASES LOADED');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'RAIN DELAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'BOTTOM OF THE NINTH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'WALK-OFF HOMER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'STRIKE THREE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'CATCHER''S MITT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('At the Ballpark', 'SACRIFICE FLY');

-- Back to School (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'PERMISSION SLIP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'POP QUIZ');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'LUNCH TRAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'FIELD TRIP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'SPELLING BEE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'HALL PASS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'RECESS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'HOMEWORK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'PENCIL SHARPENER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'REPORT CARD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'SCIENCE FAIR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'LOCKER COMBINATION');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'CHALKBOARD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'GOLD STAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'SHOW AND TELL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'CAFETERIA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'BACKPACK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'CLASS PICTURE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'CRAYONS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Back to School', 'LIBRARY CARD');

-- Beach Day (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SANDCASTLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SUNSCREEN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'FLIP-FLOPS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SEASHELLS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'BOOGIE BOARD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'LIFEGUARD TOWER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SURF''S UP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'TIDE POOLS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'BOARDWALK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SAND DOLLAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SALTWATER TAFFY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SUNGLASSES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'PICNIC COOLER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SNORKEL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SEAGULLS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'KITE FLYING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'BUCKET AND SHOVEL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'SUN HAT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'OCEAN BREEZE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Beach Day', 'HERMIT CRAB');

-- Camp Out (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'SLEEPING BAG');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'TENT STAKES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'S''MORES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'FLASHLIGHT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'GHOST STORIES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'BUG SPRAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'CANOE PADDLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'ROASTING MARSHMALLOWS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'COMPASS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'HIKING BOOTS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'FISHING POLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'LANTERN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'BEAR TRACKS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'STARRY SKY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'POCKET KNIFE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'FOLDING CHAIR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'TRAIL MAP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'CHOPPING FIREWOOD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'MOSQUITO BITES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Camp Out', 'PITCH THE TENT');

-- City Lights (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'TIMES SQUARE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'GOLDEN GATE BRIDGE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'EIFFEL TOWER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'BIG BEN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'STATUE OF LIBERTY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'EMPIRE STATE BUILDING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'CENTRAL PARK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'LAS VEGAS STRIP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'HOLLYWOOD SIGN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'SPACE NEEDLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'GATEWAY ARCH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'BOURBON STREET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'LONDON BRIDGE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'BROADWAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'PICCADILLY CIRCUS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'COLOSSEUM');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'LEANING TOWER OF PISA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'SYDNEY OPERA HOUSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'NAVY PIER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('City Lights', 'FISHERMAN''S WHARF');

-- Classic Movies (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'THE WIZARD OF OZ');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'JURASSIC PARK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'BACK TO THE FUTURE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'THE SOUND OF MUSIC');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'STAR WARS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'TOY STORY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'CASABLANCA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'GONE WITH THE WIND');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'THE GODFATHER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'JAWS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'ROCKY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'TITANIC');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'FORREST GUMP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'THE LION KING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'GHOSTBUSTERS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'RAIDERS OF THE LOST ARK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'CITIZEN KANE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'MARY POPPINS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'IT''S A WONDERFUL LIFE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Classic Movies', 'THE PRINCESS BRIDE');

-- Dinner Is Served (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'POT ROAST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'SPAGHETTI AND MEATBALLS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'FRIED CHICKEN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'CHICKEN POT PIE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'BEEF STEW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'TACO TUESDAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'GRILLED CHEESE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'MEATLOAF');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'LASAGNA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'SHEPHERD''S PIE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'BAKED POTATO');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'CORN ON THE COB');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'CAESAR SALAD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'FRENCH ONION SOUP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'STUFFED PEPPERS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'PORK CHOPS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'SLOPPY JOES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'CHILI CON CARNE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'GARLIC BREAD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Dinner Is Served', 'STIR FRY');

-- Fairground (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'FERRIS WHEEL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'CORN DOGS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'FUNNEL CAKE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'BUMPER CARS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'MERRY-GO-ROUND');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'ROLLER COASTER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'BLUE RIBBON');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'PIG RACES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'PETTING ZOO');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'RING TOSS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'FUN HOUSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'CARAMEL CORN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'DUNK TANK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'TICKET BOOTH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'PIE EATING CONTEST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'HAY RIDE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'BALLOON DARTS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'GIANT PUMPKIN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'DEMOLITION DERBY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Fairground', 'SHOOTING GALLERY');

-- Famous Pairs (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'SALT AND PEPPER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'PEANUT BUTTER AND JELLY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'BACON AND EGGS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'CATS AND DOGS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'ROCK AND ROLL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'MACARONI AND CHEESE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'BREAD AND BUTTER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'COOKIES AND MILK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'FISH AND CHIPS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'LOCK AND KEY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'NEEDLE AND THREAD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'BOW AND ARROW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'THUNDER AND LIGHTNING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'SHOES AND SOCKS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'KNIFE AND FORK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'CUP AND SAUCER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'HUGS AND KISSES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'PEN AND PAPER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'HAMMER AND NAILS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Famous Pairs', 'SUN AND MOON');

-- Game Day (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'TOUCHDOWN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'SLAM DUNK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'HAT TRICK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'HOLE IN ONE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'FIELD GOAL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'PENALTY KICK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'PHOTO FINISH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'OVERTIME');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'HALFTIME SHOW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'BUZZER BEATER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'TAILGATE PARTY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'CHEERLEADERS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'FREE THROW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'HAIL MARY PASS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'FIRST DOWN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'POWER PLAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'GOLD MEDAL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'FACE PAINT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'VICTORY LAP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Day', 'SUDDEN DEATH');

-- Game Night (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'FULL HOUSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'ROLL THE DICE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'CHECKMATE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'HIDE AND SEEK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'TIC TAC TOE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'JIGSAW PUZZLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'SHUFFLE THE DECK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'CROSSWORD PUZZLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'DOMINOES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'SNAKES AND LADDERS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'GO FISH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'CHARADES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'POKER FACE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'KING ME');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'WILD CARD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'BINGO');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'PLAYING CARDS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'HANGMAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'THUMB WAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Game Night', 'TWENTY QUESTIONS');

-- Garden Variety (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'TOMATO PLANTS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'WATERING CAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'VEGETABLE PATCH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'ROSE BUSHES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'SCARECROW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'WHEELBARROW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'SPRINKLER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'PULLING WEEDS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'COMPOST PILE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'BIRD FEEDER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'FLOWER BED');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'SEED PACKETS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'PICKET FENCE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'STEPPING STONES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'TULIP BULBS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'LAWN MOWER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'GREENHOUSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'POTTING SOIL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'PRUNING SHEARS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Garden Variety', 'EARTHWORMS');

-- Holiday Spirit (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'TRICK OR TREAT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'CANDY CANES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'STOCKING STUFFERS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'FIREWORKS SHOW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'EASTER EGG HUNT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'NEW YEAR''S RESOLUTION');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'CARVED PUMPKIN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'MISTLETOE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'TURKEY AND STUFFING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'BOX OF CHOCOLATES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'GINGERBREAD HOUSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'LIGHTING THE MENORAH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'POT OF GOLD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'MARDI GRAS PARADE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'HAUNTED HOUSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'CHRISTMAS LIGHTS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'COUNTDOWN TO MIDNIGHT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'PUMPKIN PIE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'UGLY SWEATER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Holiday Spirit', 'FOURTH OF JULY');

-- In the Kitchen (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'ROLLING PIN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'CAST IRON SKILLET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'MEASURING CUPS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'CUTTING BOARD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'SLOW COOKER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'SPATULA AND WHISK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'CAN OPENER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'OVEN MITTS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'BLENDER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'TOASTER OVEN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'MIXING BOWL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'CHEESE GRATER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'BAKING SHEET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'FRYING PAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'TEA KETTLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'SALAD SPINNER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'POTATO PEELER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'ICE CUBE TRAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'COFFEE MAKER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('In the Kitchen', 'SPICE RACK');

-- Kid Stuff (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'JUMP ROPE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'HOPSCOTCH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'SANDBOX');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'TEDDY BEAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'PILLOW FORT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'FINGER PAINTING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'SIDEWALK CHALK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'TRAMPOLINE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'TREE HOUSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'BUBBLE BATH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'LEMONADE STAND');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'KICKBALL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'WATER BALLOONS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'MONKEY BARS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'TRICYCLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'PEEKABOO');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'NAP TIME');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'ROCKING HORSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'PAPER AIRPLANE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Kid Stuff', 'TRAINING WHEELS');

-- On the Bookshelf (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'TREASURE ISLAND');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'CHARLOTTE''S WEB');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'LITTLE WOMEN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'THE HOBBIT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'MOBY DICK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'PRIDE AND PREJUDICE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'GREAT EXPECTATIONS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'THE GREAT GATSBY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'TO KILL A MOCKINGBIRD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'WAR AND PEACE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'ROBINSON CRUSOE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'BLACK BEAUTY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'JANE EYRE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'THE ODYSSEY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'OLIVER TWIST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'FRANKENSTEIN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'DRACULA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'THE SECRET GARDEN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'ANNE OF GREEN GABLES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Bookshelf', 'THE CALL OF THE WILD');

-- On the Job (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'FIREFIGHTER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'MAIL CARRIER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'ZOOKEEPER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'DENTAL HYGIENIST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'AIRLINE PILOT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'SCHOOL TEACHER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'CONSTRUCTION WORKER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'PASTRY CHEF');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'VETERINARIAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'LIFEGUARD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'ELECTRICIAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'LIBRARIAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'FLORIST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'TRUCK DRIVER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'POLICE OFFICER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'ASTRONAUT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'NEWS ANCHOR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'PLUMBER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'PARK RANGER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Job', 'HAIRDRESSER');

-- On the Map (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'GRAND CANYON');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'NIAGARA FALLS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'ROCKY MOUNTAINS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'LAKE TAHOE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'GREAT BARRIER REEF');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'MOUNT KILIMANJARO');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'MOUNT EVEREST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'AMAZON RAINFOREST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'SAHARA DESERT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'DEAD SEA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'STRAIT OF GIBRALTAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'MISSISSIPPI RIVER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'GREAT LAKES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'YELLOWSTONE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'CAPE COD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'VICTORIA FALLS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'PANAMA CANAL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'ANDES MOUNTAINS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'DEATH VALLEY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Map', 'FLORIDA KEYS');

-- On the Road (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'CRUISE CONTROL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'SPEED BUMP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'TRAFFIC JAM');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'GAS STATION');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'SCENIC ROUTE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'FLAT TIRE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'RUSH HOUR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'TOLL BOOTH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'REST STOP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'HIGHWAY EXIT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'CAR WASH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'PARALLEL PARKING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'LEFT TURN SIGNAL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'ROUNDABOUT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'DETOUR AHEAD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'POTHOLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'MILE MARKER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'ARE WE THERE YET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'BACKSEAT DRIVER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('On the Road', 'FENDER BENDER');

-- Out in Nature (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'BABBLING BROOK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'SUNFLOWER FIELD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'PINE FOREST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'AUTUMN LEAVES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'WILDFLOWER MEADOW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'FALLING ACORNS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'MOSSY ROCKS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'MOUNTAIN STREAM');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'BIRDS SINGING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'MORNING DEW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'ROLLING HILLS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'CATTAIL MARSH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'PINECONES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'SPIDER WEB');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'FIREFLIES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'TALL GRASS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'HIKING TRAIL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'WATERFALL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'TREE STUMP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out in Nature', 'SANDY RIVERBANK');

-- Out of This World (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'MILKY WAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'SOLAR ECLIPSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'BLACK HOLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'NORTHERN LIGHTS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'SHOOTING STAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'ROCKET LAUNCH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'SPACE SHUTTLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'FULL MOON');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'RINGS OF SATURN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'BIG DIPPER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'ASTEROID BELT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'INTERNATIONAL SPACE STATION');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'HALLEY''S COMET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'RED PLANET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'MOON LANDING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'METEOR SHOWER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'LUNAR ROVER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'SPACEWALK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'MISSION CONTROL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Out of This World', 'ORION''S BELT');

-- Party Time (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'BIRTHDAY CAKE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'BALLOON ANIMALS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'PIN THE TAIL ON THE DONKEY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'MUSICAL CHAIRS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'GOODY BAGS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'CONFETTI CANNON');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'PINATA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'BLOW OUT THE CANDLES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'DANCE FLOOR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'KARAOKE MACHINE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'PUNCH BOWL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'PAPER PLATES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'COSTUME CONTEST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'GIFT WRAP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'PIZZA DELIVERY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'FREEZE DANCE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'CONGA LINE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'THANK YOU NOTES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'DISCO BALL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Party Time', 'SLEEPOVER');

-- Sing Along (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'TWINKLE TWINKLE LITTLE STAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'OLD MACDONALD HAD A FARM');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'ROW ROW ROW YOUR BOAT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'HAPPY BIRTHDAY TO YOU');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'JINGLE BELLS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'AMAZING GRACE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'YANKEE DOODLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'YOU ARE MY SUNSHINE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'HOME ON THE RANGE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'THIS LAND IS YOUR LAND');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'AMERICA THE BEAUTIFUL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'SWEET CAROLINE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'BOHEMIAN RHAPSODY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'HOTEL CALIFORNIA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'YELLOW SUBMARINE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'HEY JUDE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'PIANO MAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'LEAN ON ME');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'STAND BY ME');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sing Along', 'RESPECT');

-- Snack Attack (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'POTATO CHIPS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'BUTTERED POPCORN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'TRAIL MIX');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'SOFT PRETZEL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'CHEESE AND CRACKERS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'CELERY STICKS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'GUACAMOLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'BEEF JERKY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'NACHOS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'PIGS IN A BLANKET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'APPLE SLICES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'GRANOLA BAR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'ANTS ON A LOG');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'STRING CHEESE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'DEVILED EGGS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'FRUIT CUP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'ROASTED PEANUTS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'SPINACH DIP');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'RICE CAKES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Snack Attack', 'ONION RINGS');

-- Sweet Treats (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'CHOCOLATE CHIP COOKIE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'BANANA SPLIT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'COTTON CANDY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'APPLE PIE A LA MODE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'HOT FUDGE SUNDAE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'STRAWBERRY SHORTCAKE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'LEMON MERINGUE PIE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'ROCKY ROAD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'CARAMEL APPLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'PEPPERMINT BARK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'GINGERBREAD MAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'BOSTON CREAM PIE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'ROOT BEER FLOAT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'CHOCOLATE FONDUE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'KEY LIME PIE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'CINNAMON ROLL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'PEANUT BRITTLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'JELLY DONUT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'ICE CREAM SANDWICH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Sweet Treats', 'BLUEBERRY MUFFIN');

-- Tall Tales (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'LITTLE RED RIDING HOOD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'GOLDILOCKS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'JACK AND THE BEANSTALK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'HANSEL AND GRETEL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'THE TORTOISE AND THE HARE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'SLEEPING BEAUTY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'CINDERELLA');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'RAPUNZEL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'THE THREE LITTLE PIGS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'THE BOY WHO CRIED WOLF');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'JOHNNY APPLESEED');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'PAUL BUNYAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'RIP VAN WINKLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'THE UGLY DUCKLING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'SNOW WHITE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'PUSS IN BOOTS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'ROBIN HOOD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'KING ARTHUR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'THE GOLDEN GOOSE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Tall Tales', 'THE PIED PIPER');

-- Things People Say (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'BETTER LATE THAN NEVER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'EASY AS PIE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'BREAK A LEG');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'HOLD YOUR HORSES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'CROSS YOUR FINGERS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'PIECE OF CAKE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'TIME FLIES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'NO PAIN NO GAIN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'ACTIONS SPEAK LOUDER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'BITE THE BULLET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'ONCE IN A BLUE MOON');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'SPILL THE BEANS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'UNDER THE WEATHER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'THE BALL IS IN YOUR COURT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'HIT THE SACK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'BEAT AROUND THE BUSH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'COLD FEET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'ON CLOUD NINE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'BURN THE MIDNIGHT OIL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Things People Say', 'LET THE CAT OUT OF THE BAG');

-- Under One Roof (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'KITCHEN SINK');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'LAUNDRY BASKET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'COFFEE TABLE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'FRONT PORCH SWING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'CEILING FAN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'WELCOME MAT');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'LIVING ROOM COUCH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'LINEN CLOSET');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'BUNK BEDS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'SMOKE DETECTOR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'GARAGE DOOR OPENER');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'BATHROOM SCALE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'DOORBELL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'BRICK CHIMNEY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'ATTIC STAIRS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'THROW PILLOWS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'SCREEN DOOR');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'MAILBOX');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'SHOWER CURTAIN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Under One Roof', 'WINDOW BLINDS');

-- Weather Report (20)
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'PARTLY CLOUDY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'THUNDERSTORM WARNING');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'HEAT WAVE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'BLIZZARD CONDITIONS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'SCATTERED SHOWERS');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'MORNING FOG');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'RAINBOW');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'HAILSTORM');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'TORNADO WATCH');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'HUMIDITY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'SNOW DAY');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'FLASH FLOOD');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'BLUE SKIES');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'WIND CHILL');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'FREEZING RAIN');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'LIGHTNING STRIKE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'FIRST FROST');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'BLACK ICE');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'HURRICANE SEASON');
INSERT INTO letter_rip_puzzles (category, phrase) VALUES ('Weather Report', 'DRIZZLE');

COMMIT;

-- Check: should return 600.
SELECT COUNT(*) FROM letter_rip_puzzles;
