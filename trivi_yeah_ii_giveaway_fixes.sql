-- ============================================================================
-- trivi_yeah_ii_giveaway_fixes.sql
--
-- Rewrites 6 Thinking Pants questions whose question text contained its own
-- answer (found by the new content checker, content/build.mjs). Same
-- category, same points, same answer slot; only the wording (and for Miso,
-- the answer) changes:
--   FOOD_AND_DRINK 300       "...used as a base in Japanese miso soup?" -> Natto
--   FAMOUS_KNIGHTS 400       Twelfth Night, now asked via its two knights
--   FICTIONAL_LOCATIONS 400  Rivendell, without naming Rivendell
--   LYRICS 100               Twinkle, Twinkle, Little Star, via its 2nd line
--   LYRICS 100               "Yesterday", without its first word
--   LYRICS 400               "Vincent", without naming van Gogh
--
-- Each UPDATE matches the old question text exactly, so it's safe to re-run:
-- a second run finds nothing to change. Expect UPDATE 1 six times the first
-- time, UPDATE 0 after that.
-- ============================================================================

BEGIN;

-- Natto: fermented soybeans, sticky and strong-smelling, a classic Japanese breakfast.
UPDATE questions
SET question_text = 'What fermented soybean food, famous for its sticky strings and strong smell, is a traditional Japanese breakfast?',
    correct_answer = 'Natto',
    wrong_answers = ARRAY['Miso', 'Tofu', 'Tempeh', 'Soy sauce', 'Edamame', 'Yuba']
WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FOOD_AND_DRINK'
  AND question_text = 'What is the name of the fermented soybean paste used as a base in Japanese miso soup?';

-- Sir Toby Belch and Sir Andrew Aguecheek are both knights in Twelfth Night.
UPDATE questions
SET question_text = 'Sir Toby Belch and Sir Andrew Aguecheek are comic knights in which Shakespeare play?'
WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FAMOUS_KNIGHTS'
  AND question_text = 'Which Shakespeare comedy, named for the twelfth night after Christmas, follows Viola as she disguises herself as a man named Cesario?';

-- The Council of Elrond, where the Fellowship is formed, meets in Rivendell.
UPDATE questions
SET question_text = 'In "The Lord of the Rings," in what hidden Elvish valley, home to Elrond, is the Fellowship of the Ring formed?'
WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FICTIONAL_LOCATIONS'
  AND question_text = 'What is the name of the Elvish city of Rivendell''s hidden valley realm, home to Elrond, in "The Lord of the Rings"?';

UPDATE questions
SET question_text = 'Which nursery rhyme wonders, "Up above the world so high, like a diamond in the sky"?'
WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LYRICS'
  AND question_text = 'What classic children''s lullaby begins with the line "Twinkle, twinkle, little star, how I wonder what you are"?';

UPDATE questions
SET question_text = 'Which Beatles song looks back to a time when "all my troubles seemed so far away"?'
WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LYRICS'
  AND question_text = 'Which Beatles song famously opens with the line "Yesterday, all my troubles seemed so far away"?';

-- The song is named for the painter (Vincent van Gogh), not a painting.
UPDATE questions
SET question_text = 'Which Don McLean song opens with "Starry, starry night, paint your palette blue and grey"?'
WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LYRICS'
  AND question_text = 'Which Don McLean song, named for a Vincent van Gogh painting, opens with "Starry, starry night"?';

COMMIT;

-- Check: should return 6 rows, all with the new wording.
SELECT category, points, question_text, correct_answer
FROM questions
WHERE game_mode = 'TRIVI_YEAH_II'
  AND (correct_answer IN ('Natto', 'Twelfth Night', 'Rivendell', 'Twinkle, Twinkle, Little Star', '"Yesterday"', '"Vincent"'))
ORDER BY category, points;
