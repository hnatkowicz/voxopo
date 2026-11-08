-- ============================================================================
-- on_the_spectrum_statements_batch_3.sql
-- On the Spectrum: 119 more statements (Randy, Nov 2026: "Number of
-- statements in spectrum too low. Seeing duplicates."). The bank goes from
-- 80 to about 200. Food, manners, home life, school, sports, pop culture,
-- tech, the odd and the unexplained, and a few civic ones (politics stays
-- in on purpose for this mode).
--
-- Safe to re-run: each line adds its statement only if that exact wording
-- isn't already in the table. Touches nothing else, except step 2 below,
-- which is commented out until you've looked at step 1.
-- ============================================================================

-- STEP 1 -- find the "Randy is too meta" statement Randy asked to drop.
-- It isn't in any SQL file in the repo, so it was added by hand in Neon.
-- This shows every statement that mentions Randy:
SELECT id, statement_text FROM on_the_spectrum_statements WHERE statement_text ILIKE '%randy%';

-- STEP 2 -- once STEP 1 shows only the one to drop, remove the two dashes
-- in front of the next line and run it (or delete by its id instead):
-- DELETE FROM on_the_spectrum_statements WHERE statement_text ILIKE '%randy%';

-- STEP 3 -- the new statements.
BEGIN;

INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Breakfast for dinner is the best dinner.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Breakfast for dinner is the best dinner.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Ranch dressing goes with everything.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Ranch dressing goes with everything.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Ketchup on scrambled eggs is perfectly acceptable.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Ketchup on scrambled eggs is perfectly acceptable.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Candy corn is delicious.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Candy corn is delicious.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Fruitcake deserves its bad reputation.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Fruitcake deserves its bad reputation.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The best part of Thanksgiving is the leftovers.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The best part of Thanksgiving is the leftovers.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Hot sauce makes almost everything better.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Hot sauce makes almost everything better.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Raisins in cookies are a betrayal.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Raisins in cookies are a betrayal.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Pancakes are better than waffles.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Pancakes are better than waffles.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Gas station food is underrated.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Gas station food is underrated.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Leftover takeout tastes better the next day.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Leftover takeout tastes better the next day.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Popcorn counts as a meal.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Popcorn counts as a meal.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Sushi is overrated.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Sushi is overrated.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Black licorice is delicious.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Black licorice is delicious.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Coffee smells better than it tastes.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Coffee smells better than it tastes.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Well-done steak is ruined steak.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Well-done steak is ruined steak.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Chocolate milk is better than plain milk.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Chocolate milk is better than plain milk.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Grilled cheese is incomplete without tomato soup.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Grilled cheese is incomplete without tomato soup.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Socks with sandals is a valid fashion choice.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Socks with sandals is a valid fashion choice.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'It''s okay to recline your seat on an airplane.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'It''s okay to recline your seat on an airplane.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The middle seat gets both armrests.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The middle seat gets both armrests.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Shoes should come off inside the house.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Shoes should come off inside the house.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Leaving a voicemail is outdated.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Leaving a voicemail is outdated.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Replying "k" to a text is rude.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Replying "k" to a text is rude.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Emojis make text messages better.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Emojis make text messages better.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Board games are better than video games.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Board games are better than video games.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Naps are a waste of a good day.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Naps are a waste of a good day.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Mornings are the best part of the day.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Mornings are the best part of the day.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'It''s fine to wear pajamas to the grocery store.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'It''s fine to wear pajamas to the grocery store.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Christmas decorations shouldn''t go up before Thanksgiving.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Christmas decorations shouldn''t go up before Thanksgiving.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Gift cards are a thoughtful gift.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Gift cards are a thoughtful gift.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Re-gifting is perfectly fine.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Re-gifting is perfectly fine.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Surprise parties are more stressful than fun.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Surprise parties are more stressful than fun.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Camping counts as a vacation.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Camping counts as a vacation.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'A clean car says a lot about a person.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'A clean car says a lot about a person.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Ironing clothes is a waste of time.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Ironing clothes is a waste of time.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Paper books beat e-readers.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Paper books beat e-readers.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Audiobooks count as reading.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Audiobooks count as reading.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Spoilers don''t ruin a good movie.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Spoilers don''t ruin a good movie.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Rewatching a favorite show beats starting a new one.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Rewatching a favorite show beats starting a new one.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Laugh tracks make sitcoms worse.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Laugh tracks make sitcoms worse.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Movie sequels are usually worse than the original.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Movie sequels are usually worse than the original.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Superhero movies have run their course.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Superhero movies have run their course.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Holiday music should only play in December.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Holiday music should only play in December.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Karaoke is fun even if you can''t sing.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Karaoke is fun even if you can''t sing.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Country music is underrated.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Country music is underrated.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Vinyl records sound better than streaming.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Vinyl records sound better than streaming.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The ''80s had the best music.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The ''80s had the best music.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Halloween is the best holiday.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Halloween is the best holiday.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Fireworks are worth the noise.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Fireworks are worth the noise.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Golf is a real sport.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Golf is a real sport.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Bowling is a real sport.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Bowling is a real sport.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Video game competitions are real sports.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Video game competitions are real sports.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Fantasy football ruins friendships.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Fantasy football ruins friendships.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'College sports are more fun to watch than the pros.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'College sports are more fun to watch than the pros.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Participation trophies are a good idea.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Participation trophies are a good idea.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Kids should get paid for doing chores.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Kids should get paid for doing chores.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Elementary schools shouldn''t give homework.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Elementary schools shouldn''t give homework.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Cursive should still be taught in school.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Cursive should still be taught in school.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'School uniforms are a good idea.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'School uniforms are a good idea.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Every kid should learn to play an instrument.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Every kid should learn to play an instrument.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Summer break is too long.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Summer break is too long.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Dogs understand most of what we say.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Dogs understand most of what we say.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Cats are secretly plotting against us.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Cats are secretly plotting against us.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Goldfish make good pets.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Goldfish make good pets.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Zoos do more good than harm.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Zoos do more good than harm.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Daylight saving time should be abolished.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Daylight saving time should be abolished.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Hot weather is better than cold weather.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Hot weather is better than cold weather.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The sound of rain is the most relaxing sound there is.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The sound of rain is the most relaxing sound there is.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'City life is better than country life.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'City life is better than country life.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Working from home is better than working at an office.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Working from home is better than working at an office.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Everyone should work in a restaurant at least once.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Everyone should work in a restaurant at least once.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Self-checkout is better than a cashier.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Self-checkout is better than a cashier.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Tipping has gotten out of hand.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Tipping has gotten out of hand.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Smartphones have made us less smart.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Smartphones have made us less smart.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Kids shouldn''t have a smartphone before high school.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Kids shouldn''t have a smartphone before high school.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Artificial intelligence will do more good than harm.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Artificial intelligence will do more good than harm.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Self-driving cars will be safer than human drivers.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Self-driving cars will be safer than human drivers.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Aliens have visited Earth.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Aliens have visited Earth.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Bigfoot could be real.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Bigfoot could be real.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Ghosts are real.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Ghosts are real.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Everything happens for a reason.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Everything happens for a reason.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Pay is the most important thing in choosing a job.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Pay is the most important thing in choosing a job.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Being early is the same as being on time.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Being early is the same as being on time.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Five minutes late is basically on time.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Five minutes late is basically on time.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'White lies are sometimes necessary.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'White lies are sometimes necessary.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Friends should always split the check evenly.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Friends should always split the check evenly.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Whoever does the inviting should pay.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Whoever does the inviting should pay.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Small weddings are better than big ones.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Small weddings are better than big ones.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Married couples should share one bank account.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Married couples should share one bank account.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Social media influencers have real jobs.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Social media influencers have real jobs.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Reality TV is mostly staged.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Reality TV is mostly staged.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Award shows are boring.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Award shows are boring.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The Super Bowl commercials are better than the game.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The Super Bowl commercials are better than the game.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'New Year''s resolutions are pointless.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'New Year''s resolutions are pointless.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'A hug is a better greeting than a handshake.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'A hug is a better greeting than a handshake.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Pickup trucks are the best vehicles.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Pickup trucks are the best vehicles.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Minivans are secretly cool.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Minivans are secretly cool.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Cars with a stick shift are more fun to drive.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Cars with a stick shift are more fun to drive.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Road trips beat flying.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Road trips beat flying.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Beach vacations are better than mountain vacations.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Beach vacations are better than mountain vacations.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Cruises are overrated.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Cruises are overrated.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Theme parks are worth the money.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Theme parks are worth the money.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Voting should be required by law.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Voting should be required by law.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The voting age should be lowered to 16.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The voting age should be lowered to 16.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The president should be chosen by the popular vote alone.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The president should be chosen by the popular vote alone.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Members of Congress should have term limits.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Members of Congress should have term limits.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Nuclear power is the answer to climate change.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Nuclear power is the answer to climate change.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The government should stay out of business.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The government should stay out of business.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Space exploration is worth the money.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Space exploration is worth the money.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Sports stars are paid too much.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Sports stars are paid too much.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'A good teacher matters more than a good school.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'A good teacher matters more than a good school.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Everyone should know how to change a tire.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Everyone should know how to change a tire.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Kids today are too protected.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Kids today are too protected.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'The best years of your life come after 40.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'The best years of your life come after 40.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Breakfast is the most important meal of the day.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Breakfast is the most important meal of the day.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Waking up without an alarm is the greatest luxury.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Waking up without an alarm is the greatest luxury.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'A messy desk is the sign of a creative mind.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'A messy desk is the sign of a creative mind.');
INSERT INTO on_the_spectrum_statements (statement_text) SELECT 'Pop songs today all sound the same.' WHERE NOT EXISTS (SELECT 1 FROM on_the_spectrum_statements WHERE statement_text = 'Pop songs today all sound the same.');
COMMIT;

-- Check: how many statements there are now (about 200, less any you deleted).
SELECT COUNT(*) FROM on_the_spectrum_statements;
