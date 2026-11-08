-- ============================================================================
-- content/sql/food_and_drink.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/food_and_drink.csv, the master copy of the
-- Thinking Pants category FOOD_AND_DRINK. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 200 live questions
-- (100: 50, 200: 50, 300: 50, 400: 50), inside a transaction. Safe to re-run.
-- ============================================================================

-- The facts column (shown on the TV after the answer) is added the first
-- time any category file runs; after that this line does nothing.
ALTER TABLE questions ADD COLUMN IF NOT EXISTS facts TEXT;

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FOOD_AND_DRINK';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What fruit is traditionally used to make guacamole?', NULL,
        'Avocado', ARRAY['Mango', 'Papaya', 'Kiwi', 'Tomato', 'Lime', 'Pear'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the main ingredient in traditional hummus?', NULL,
        'Chickpeas', ARRAY['Lentils', 'Black beans', 'Kidney beans', 'Fava beans', 'Peanuts', 'Edamame'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What leafy herb, along with tomato and mozzarella, defines a traditional Margherita pizza?', NULL,
        'Basil', ARRAY['Oregano', 'Parsley', 'Thyme', 'Rosemary', 'Mint', 'Cilantro'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What type of drink is "espresso"?', NULL,
        'Coffee', ARRAY['Tea', 'Hot chocolate', 'Cider', 'Chai', 'Matcha', 'Cocoa'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What Japanese dish consists of vinegared rice typically paired with raw fish?', NULL,
        'Sushi', ARRAY['Tempura', 'Ramen', 'Udon', 'Teriyaki', 'Yakitori', 'Onigiri'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which country is the dish "paella" traditionally from?', NULL,
        'Spain', ARRAY['Portugal', 'Italy', 'Mexico', 'Morocco', 'Greece', 'France'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What type of cheese is traditionally used in a classic Greek salad?', NULL,
        'Feta', ARRAY['Mozzarella', 'Gouda', 'Brie', 'Cheddar', 'Parmesan', 'Ricotta'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What vegetable is the main ingredient of coleslaw?', NULL,
        'Cabbage', ARRAY['Lettuce', 'Celery', 'Cucumber', 'Broccoli', 'Onion', 'Kale'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What drink is made by fermenting apple juice?', NULL,
        'Cider', ARRAY['Perry', 'Mead', 'Ginger beer', 'Kvass', 'Shandy', 'Sangria'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which spirit is the base of a classic margarita?', NULL,
        'Tequila', ARRAY['Vodka', 'Rum', 'Gin', 'Whiskey', 'Brandy', 'Cachaca'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Kimchi, a fermented side dish served at nearly every meal, comes from which country?', NULL,
        'Korea', ARRAY['Japan', 'China', 'Vietnam', 'Thailand', 'Mongolia', 'The Philippines'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'A prune is a dried what?', NULL,
        'Plum', ARRAY['Grape', 'Fig', 'Date', 'Apricot', 'Cherry', 'Peach'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Cavendish is the most common variety of which fruit sold in supermarkets?', NULL,
        'Banana', ARRAY['Apple', 'Pear', 'Grape', 'Orange', 'Mango', 'Pineapple'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which creamy sauce is made by slowly whisking oil into egg yolks?', NULL,
        'Mayonnaise', ARRAY['Ketchup', 'Mustard', 'Bechamel', 'Salsa', 'Tahini', 'Gravy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which drink is made by steeping the leaves of the Camellia sinensis plant?', NULL,
        'Tea', ARRAY['Coffee', 'Hot chocolate', 'Yerba mate', 'Rooibos', 'Chicory', 'Lemonade'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Real Champagne must come from the Champagne region of which country?', NULL,
        'France', ARRAY['Italy', 'Spain', 'Germany', 'Portugal', 'Belgium', 'Switzerland'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What do Americans call the vegetable the British call an aubergine?', NULL,
        'Eggplant', ARRAY['Zucchini', 'Squash', 'Bell pepper', 'Cucumber', 'Okra', 'Sweet potato'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which breakfast food is cooked in a hinged iron that presses a grid pattern into the batter?', NULL,
        'Waffles', ARRAY['Pancakes', 'Crepes', 'French toast', 'Crumpets', 'Muffins', 'Scones'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Besides cocoa, which nut gives the spread Nutella its flavor?', NULL,
        'Hazelnuts', ARRAY['Almonds', 'Peanuts', 'Walnuts', 'Cashews', 'Pecans', 'Macadamias'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which country produces most of the world''s maple syrup?', NULL,
        'Canada', ARRAY['The United States', 'Sweden', 'Norway', 'Finland', 'Russia', 'Switzerland'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Raisins are dried what?', NULL,
        'Grapes', ARRAY['Plums', 'Figs', 'Cherries', 'Dates', 'Cranberries', 'Apricots'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Italian city gave the world the classic pizza?', NULL,
        'Naples', ARRAY['Rome', 'Milan', 'Venice', 'Florence', 'Turin', 'Bologna'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Tofu is made from which beans?', NULL,
        'Soybeans', ARRAY['Chickpeas', 'Lentils', 'Black beans', 'Kidney beans', 'Fava beans', 'Peanuts'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which leafy green vegetable makes the cartoon sailor Popeye strong?', NULL,
        'Spinach', ARRAY['Kale', 'Broccoli', 'Lettuce', 'Cabbage', 'Collard greens', 'Peas'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What kind of food is a Granny Smith?', NULL,
        'An apple', ARRAY['A pear', 'A plum', 'A grape', 'A potato', 'A peach', 'A tomato'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which yellow hot dog topping is made from the crushed seeds of a plant in the cabbage family?', NULL,
        'Mustard', ARRAY['Relish', 'Ketchup', 'Mayonnaise', 'Horseradish', 'Wasabi', 'Aioli'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which crop failed when blight struck Ireland in the 1840s, causing the Great Famine?', NULL,
        'The potato', ARRAY['Wheat', 'Cabbage', 'The turnip', 'Corn', 'Oats', 'The carrot'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Besides coconut, which fruit goes into a classic piña colada?', NULL,
        'Pineapple', ARRAY['Mango', 'Banana', 'Lime', 'Orange', 'Papaya', 'Strawberry'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which baked breakfast treat, often studded with blueberries, rises in a cup-shaped pan?', NULL,
        'A muffin', ARRAY['A scone', 'A crumpet', 'A bagel', 'A croissant', 'A doughnut', 'A biscuit'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Hot cocoa and chocolate are made from the beans of which plant?', NULL,
        'Cacao', ARRAY['Coffee', 'Vanilla', 'Carob', 'Coconut', 'Kola', 'Chicory'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What does a baker add to bread dough to make it rise?', NULL,
        'Yeast', ARRAY['Salt', 'Sugar', 'Flour', 'Vinegar', 'Gelatin', 'Cornstarch'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What do you get when you churn cream long enough?', NULL,
        'Butter', ARRAY['Cheese', 'Yogurt', 'Whey', 'Ice cream', 'Sour cream', 'Milk'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Mexican dish is a folded tortilla wrapped around a filling, sometimes in a crunchy shell?', NULL,
        'A taco', ARRAY['A burrito', 'An enchilada', 'A tamale', 'A tostada', 'A fajita', 'A chimichanga'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which deep-red root vegetable gives the soup borscht its color?', NULL,
        'Beets', ARRAY['Red cabbage', 'Eggplant', 'Red onion', 'Radishes', 'Purple carrots', 'Turnips'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What color is the flesh of a ripe cantaloupe?', NULL,
        'Orange', ARRAY['Green', 'Red', 'Yellow', 'White', 'Pink', 'Purple'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'The burger takes its full name from which German port city?', NULL,
        'Hamburg', ARRAY['Frankfurt', 'Berlin', 'Munich', 'Cologne', 'Dresden', 'Bremen'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'How many cups are in a quart?', NULL,
        'Four', ARRAY['Two', 'Three', 'Six', 'Eight', 'Ten', 'Sixteen'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which orange squash fills a classic Thanksgiving pie?', NULL,
        'Pumpkin', ARRAY['Butternut squash', 'Acorn squash', 'Carrot', 'Spaghetti squash', 'Apricot', 'Cantaloupe'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What do the French call a very thin pancake?', NULL,
        'A crêpe', ARRAY['A blini', 'A waffle', 'A beignet', 'A soufflé', 'A brioche', 'A flapjack'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which sour yellow fruit goes into a classic meringue pie?', NULL,
        'Lemon', ARRAY['Lime', 'Banana', 'Pineapple', 'Mango', 'Grapefruit', 'Orange'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Granola is mostly made from toasted what?', NULL,
        'Oats', ARRAY['Wheat', 'Rice', 'Barley', 'Corn', 'Quinoa', 'Rye'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Lox, served on bagels with cream cheese, is cured what?', NULL,
        'Salmon', ARRAY['Tuna', 'Cod', 'Trout', 'Herring', 'Mackerel', 'Halibut'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What do you get when you heat sugar until it melts and turns golden brown?', NULL,
        'Caramel', ARRAY['Fudge', 'Nougat', 'Marshmallow', 'Licorice', 'Gumdrops', 'Taffy'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which green vegetable looks like a little tree?', NULL,
        'Broccoli', ARRAY['Cauliflower', 'Asparagus', 'Kale', 'Brussels sprouts', 'Artichoke', 'Celery'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which rich holiday drink is made with milk, cream, sugar and beaten eggs?', NULL,
        'Eggnog', ARRAY['Hot toddy', 'Wassail', 'Mulled wine', 'Cider', 'Hot chocolate', 'Glogg'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which shellfish is Maine famous for, served with melted butter?', NULL,
        'Lobster', ARRAY['Crab', 'Shrimp', 'Clams', 'Oysters', 'Scallops', 'Crawfish'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Japanese soup is made with a fermented soybean paste?', NULL,
        'Miso soup', ARRAY['Ramen', 'Udon', 'Pho', 'Tom yum', 'Wonton soup', 'Egg drop soup'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the main ingredient in ketchup?', NULL,
        'Tomatoes', ARRAY['Red peppers', 'Beets', 'Carrots', 'Strawberries', 'Cranberries', 'Paprika'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spicy dried sausage is America''s favorite pizza topping?', NULL,
        'Pepperoni', ARRAY['Salami', 'Chorizo', 'Bacon', 'Ham', 'Italian sausage', 'Kielbasa'], 100, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which fruit has fuzzy brown skin and bright green flesh dotted with tiny black seeds?', NULL,
        'Kiwi', ARRAY['Passion fruit', 'Fig', 'Guava', 'Avocado', 'Lime', 'Gooseberry'], 100, NULL);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice, derived from the Crocus flower, is the most expensive spice by weight?', NULL,
        'Saffron', ARRAY['Cardamom', 'Vanilla', 'Cinnamon', 'Nutmeg', 'Turmeric', 'Paprika'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the name of the French cooking technique of slowly cooking food submerged in its own fat?', NULL,
        'Confit', ARRAY['Braise', 'Saute', 'Poach', 'Flambe', 'Blanch', 'Deglaze'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the main alcohol used in a traditional Mojito cocktail?', NULL,
        'Rum', ARRAY['Vodka', 'Gin', 'Tequila', 'Whiskey', 'Brandy', 'Bourbon'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the name of Japan''s traditional brewed drink, often served warm in small cups?', NULL,
        'Sake', ARRAY['Soju', 'Mirin', 'Shochu', 'Umeshu', 'Awamori', 'Makgeolli'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the name of the French dessert consisting of a baked custard topped with a layer of hardened caramelized sugar?', NULL,
        'Creme brulee', ARRAY['Flan', 'Panna cotta', 'Tiramisu', 'Souffle', 'Mousse', 'Custard tart'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Italian dessert''s name means "pick me up"?', NULL,
        'Tiramisu', ARRAY['Panna cotta', 'Cannoli', 'Gelato', 'Zabaglione', 'Affogato', 'Semifreddo'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which nut is ground to make marzipan?', NULL,
        'Almonds', ARRAY['Hazelnuts', 'Pistachios', 'Walnuts', 'Cashews', 'Peanuts', 'Pecans'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which juice is the base of a Bloody Mary cocktail?', NULL,
        'Tomato juice', ARRAY['Cranberry juice', 'Orange juice', 'Carrot juice', 'Grapefruit juice', 'Beet juice', 'Pineapple juice'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which nuts go into classic Italian pesto?', NULL,
        'Pine nuts', ARRAY['Walnuts', 'Almonds', 'Cashews', 'Pistachios', 'Hazelnuts', 'Macadamias'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which grain is malted to make most beer?', NULL,
        'Barley', ARRAY['Wheat', 'Rye', 'Oats', 'Rice', 'Millet', 'Sorghum'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'In Belgium, mussels are classically served with what?', NULL,
        'Fries', ARRAY['Bread', 'Rice', 'Waffles', 'Mashed potatoes', 'Salad', 'Pasta'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What is the Italian name for dry-cured ham sliced paper-thin?', NULL,
        'Prosciutto', ARRAY['Pancetta', 'Salami', 'Mortadella', 'Bresaola', 'Coppa', 'Guanciale'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Italian polenta is made by boiling what?', NULL,
        'Cornmeal', ARRAY['Semolina', 'Rice flour', 'Chickpea flour', 'Oats', 'Barley', 'Potato flakes'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which sauce of butter, egg yolks and lemon juice tops eggs Benedict?', NULL,
        'Hollandaise', ARRAY['Bearnaise', 'Mornay', 'Bechamel', 'Veloute', 'Aioli', 'Beurre blanc'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which bright yellow spice gives many curries their golden color?', NULL,
        'Turmeric', ARRAY['Paprika', 'Cumin', 'Cinnamon', 'Cardamom', 'Coriander', 'Ginger'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Pierogi, filled dumplings, are most closely tied to which country''s cuisine?', NULL,
        'Poland', ARRAY['Russia', 'Hungary', 'Czech Republic', 'Germany', 'Austria', 'Romania'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Spanish soup is made from raw tomatoes and vegetables and served cold?', NULL,
        'Gazpacho', ARRAY['Vichyssoise', 'Minestrone', 'Borscht', 'Bisque', 'Pozole', 'Caldo verde'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'The Indian dish dal is made mainly from what?', NULL,
        'Lentils', ARRAY['Rice', 'Potatoes', 'Spinach', 'Paneer', 'Cauliflower', 'Wheat flour'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'In a restaurant, what is a sommelier''s job?', NULL,
        'Choosing and serving the wine', ARRAY['Baking the bread', 'Plating the desserts', 'Seating the guests', 'Running the cheese board', 'Handling the bill', 'Making the coffee'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which creamy Italian rice dish is made by stirring in hot broth a ladle at a time?', NULL,
        'Risotto', ARRAY['Paella', 'Pilaf', 'Biryani', 'Arancini', 'Jambalaya', 'Congee'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which popular "nut" is actually a legume, related to beans and peas?', NULL,
        'The peanut', ARRAY['The almond', 'The cashew', 'The walnut', 'The pecan', 'The pistachio', 'The hazelnut'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which bread is boiled before it''s baked, giving it a chewy crust and a hole in the middle?', NULL,
        'A bagel', ARRAY['A doughnut', 'A pretzel', 'A croissant', 'An English muffin', 'A bialy', 'A kaiser roll'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which soda flavor is named for a caffeine-rich nut from West Africa?', NULL,
        'Cola', ARRAY['Root beer', 'Ginger ale', 'Cream soda', 'Sarsaparilla', 'Birch beer', 'Orange soda'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the colorful outer layer of citrus peel, grated for flavor, called?', NULL,
        'Zest', ARRAY['Pith', 'Pulp', 'Juice', 'Segment', 'Seed', 'Membrane'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which coffee is made from roughly equal parts espresso, steamed milk and milk foam?', NULL,
        'A cappuccino', ARRAY['A latte', 'An americano', 'A mocha', 'A flat white', 'A cortado', 'An affogato'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Greek tzatziki is made mainly from cucumber, garlic and what?', NULL,
        'Yogurt', ARRAY['Feta', 'Sour cream', 'Mayonnaise', 'Olive oil', 'Tahini', 'Cream cheese'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spiky Southeast Asian fruit is so smelly it''s banned on Singapore''s trains?', NULL,
        'Durian', ARRAY['Jackfruit', 'Rambutan', 'Lychee', 'Mangosteen', 'Dragon fruit', 'Breadfruit'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Mexican sauce gets its deep color from chilies and chocolate?', NULL,
        'Mole', ARRAY['Salsa verde', 'Pico de gallo', 'Adobo', 'Enchilada sauce', 'Chimichurri', 'Sofrito'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Vietnamese noodle soup''s name sounds roughly like "fuh"?', NULL,
        'Pho', ARRAY['Ramen', 'Udon', 'Laksa', 'Bun cha', 'Banh mi', 'Soba'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Indian yogurt drink is often blended with mango?', NULL,
        'Lassi', ARRAY['Chai', 'Kulfi', 'Raita', 'Kefir', 'Ayran', 'Horchata'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Middle Eastern fried balls are made from ground chickpeas or fava beans?', NULL,
        'Falafel', ARRAY['Hummus', 'Kibbeh', 'Kofta', 'Dolma', 'Shawarma', 'Baba ganoush'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which cut of beef, the most tender of all, gives us filet mignon?', NULL,
        'Tenderloin', ARRAY['Sirloin', 'Ribeye', 'Brisket', 'Flank', 'Chuck', 'Round'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the Japanese name for seafood and vegetables dipped in light batter and deep-fried?', NULL,
        'Tempura', ARRAY['Teriyaki', 'Tonkatsu', 'Yakitori', 'Gyoza', 'Sashimi', 'Karaage'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Greek dish layers eggplant and spiced meat under a creamy white sauce?', NULL,
        'Moussaka', ARRAY['Lasagna', 'Spanakopita', 'Souvlaki', 'Pastitsio', 'Gyro', 'Dolmades'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Swiss dish is a shared pot of melted cheese that you dip bread into?', NULL,
        'Fondue', ARRAY['Raclette', 'Rösti', 'Gratin', 'Welsh rarebit', 'Queso', 'Soufflé'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What do we call cooking food quickly in a little hot fat in a shallow pan?', NULL,
        'Sautéing', ARRAY['Braising', 'Poaching', 'Steaming', 'Broiling', 'Blanching', 'Roasting'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which "king of cheeses" must come from a set zone around Parma and Reggio Emilia?', NULL,
        'Parmigiano-Reggiano', ARRAY['Pecorino Romano', 'Grana Padano', 'Asiago', 'Gorgonzola', 'Provolone', 'Fontina'], 200, 'A wheel weighs about 80 pounds and must age at least 12 months.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'A mimosa is sparkling wine mixed with which juice?', NULL,
        'Orange juice', ARRAY['Cranberry juice', 'Grapefruit juice', 'Pineapple juice', 'Peach juice', 'Apple juice', 'Tomato juice'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice of dried, ground red peppers is a staple of Hungarian cooking?', NULL,
        'Paprika', ARRAY['Cayenne', 'Chili powder', 'Turmeric', 'Sumac', 'Cumin', 'Allspice'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Japanese mochi is made from pounded what?', NULL,
        'Rice', ARRAY['Wheat', 'Potato', 'Tapioca', 'Barley', 'Millet', 'Soybeans'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which fizzy fermented tea is brewed with a rubbery culture called a SCOBY?', NULL,
        'Kombucha', ARRAY['Kefir', 'Matcha', 'Chai', 'Kvass', 'Boba', 'Yerba mate'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which long, thin French bread earned its own UNESCO listing in 2022?', NULL,
        'The baguette', ARRAY['Brioche', 'Ciabatta', 'Focaccia', 'The boule', 'The croissant', 'Pain de mie'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Japanese green tea is ground into a fine, bright powder?', NULL,
        'Matcha', ARRAY['Sencha', 'Gyokuro', 'Genmaicha', 'Oolong', 'Hojicha', 'Earl Grey'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which country became the world''s biggest coffee grower in the 1800s, on vast plantations around São Paulo and Rio?', NULL,
        'Brazil', ARRAY['Colombia', 'Vietnam', 'Ethiopia', 'Indonesia', 'Kenya', 'Costa Rica'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'In the U.S., what do we call the leaves of the coriander plant?', NULL,
        'Cilantro', ARRAY['Parsley', 'Basil', 'Dill', 'Chervil', 'Tarragon', 'Mint'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which American city is famous for deep-dish pizza?', NULL,
        'Chicago', ARRAY['New York', 'Detroit', 'St. Louis', 'Philadelphia', 'Boston', 'New Haven'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which city is home to the cheesesteak, thin-sliced beef and melted cheese on a long roll?', NULL,
        'Philadelphia', ARRAY['Pittsburgh', 'Baltimore', 'Boston', 'Chicago', 'New York', 'Cleveland'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Key lime pie is the official pie of which state?', NULL,
        'Florida', ARRAY['California', 'Hawaii', 'Georgia', 'Texas', 'Louisiana', 'Arizona'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Gumbo and jambalaya are signature dishes of which state?', NULL,
        'Louisiana', ARRAY['Mississippi', 'Texas', 'Georgia', 'Alabama', 'South Carolina', 'Florida'], 200, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What kind of food is mascarpone?', NULL,
        'A soft Italian cream cheese', ARRAY['A cured sausage', 'A pasta shape', 'A sweet wine', 'A pastry', 'A coffee drink', 'A biscuit'], 200, NULL);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'The croissant grew out of the kipferl, a crescent-shaped roll from which country?', NULL,
        'Austria', ARRAY['Germany', 'Switzerland', 'Belgium', 'Hungary', 'Poland', 'Netherlands'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which chili pepper was named the world''s hottest by Guinness World Records in 2013?', NULL,
        'Carolina Reaper', ARRAY['Ghost Pepper', 'Habanero', 'Scotch Bonnet', 'Scorpion Pepper', 'Jalapeno', 'Serrano'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which pasta''s name means "little tongues" in Italian?', NULL,
        'Linguine', ARRAY['Spaghetti', 'Fettuccine', 'Tagliatelle', 'Penne', 'Fusilli', 'Vermicelli'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'The most prized mozzarella in Italy is made from the milk of which animal?', NULL,
        'Water buffalo', ARRAY['Cow', 'Goat', 'Sheep', 'Yak', 'Camel', 'Donkey'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which "fifth taste," named by a Japanese chemist in 1908, describes the savory flavor of broth, soy sauce and Parmesan?', NULL,
        'Umami', ARRAY['Kokumi', 'Dashi', 'Mirin', 'Shiso', 'Miso', 'Yuzu'], 300, 'Kikunae Ikeda found it in kombu seaweed broth, and went on to patent MSG.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'In a professional kitchen, what does "mise en place" mean?', NULL,
        'Having everything prepped and in place before cooking', ARRAY['A fancy table setting', 'The main course', 'Plating food artistically', 'A type of French stew', 'Cooking everything in one pan', 'The chef''s signature dish'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Port wine traditionally comes from which country''s Douro Valley?', NULL,
        'Portugal', ARRAY['Spain', 'Italy', 'France', 'Greece', 'Hungary', 'Croatia'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'By U.S. law, bourbon must be made from at least 51% of which grain?', NULL,
        'Corn', ARRAY['Rye', 'Wheat', 'Barley', 'Oats', 'Rice', 'Sorghum'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What does the Italian cooking term "al dente" literally mean?', NULL,
        'To the tooth', ARRAY['In the pot', 'With the salt', 'To the heat', 'On the tongue', 'In the water', 'To the plate'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Most of the green "wasabi" paste served in restaurants outside Japan is actually mostly what?', NULL,
        'Horseradish', ARRAY['Green tea powder', 'Mustard greens', 'Avocado', 'Spinach', 'Seaweed', 'Green chili'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What is ghee, used widely in Indian cooking?', NULL,
        'Clarified butter', ARRAY['Coconut oil', 'Mustard oil', 'Yogurt', 'Paneer', 'Sesame oil', 'Cream'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which North African dish is named after the clay pot with a cone-shaped lid it is cooked in?', NULL,
        'Tagine', ARRAY['Couscous', 'Harira', 'Pastilla', 'Shakshuka', 'Kefta', 'Mechoui'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What type of pastry is used to make eclairs and profiteroles?', NULL,
        'Choux pastry', ARRAY['Puff pastry', 'Filo pastry', 'Shortcrust pastry', 'Hot water crust', 'Rough puff', 'Brioche dough'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which smoky Mexican spirit is made from agave hearts roasted in underground pits?', NULL,
        'Mezcal', ARRAY['Pisco', 'Cachaca', 'Aguardiente', 'Grappa', 'Ouzo', 'Raki'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Peruvian dish is raw fish "cooked" in citrus juice?', NULL,
        'Ceviche', ARRAY['Poke', 'Sashimi', 'Crudo', 'Tartare', 'Carpaccio', 'Gravlax'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which berry gives gin its main flavor?', NULL,
        'Juniper', ARRAY['Elderberry', 'Blackcurrant', 'Cranberry', 'Rowan', 'Goji', 'Allspice'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Spanish bar snacks get their name from the word for "lid" or "cover"?', NULL,
        'Tapas', ARRAY['Pintxos', 'Churros', 'Croquetas', 'Empanadas', 'Patatas bravas', 'Raciones'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which spice is the dried inner bark of a tree?', NULL,
        'Cinnamon', ARRAY['Nutmeg', 'Allspice', 'Ginger', 'Mace', 'Star anise', 'Bay leaf'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Japanese noodles are made mainly from buckwheat flour?', NULL,
        'Soba', ARRAY['Udon', 'Ramen', 'Somen', 'Shirataki', 'Rice vermicelli', 'Glass noodles'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the name of the cylindrical clay oven in which naan is traditionally baked?', NULL,
        'Tandoor', ARRAY['Tawa', 'Karahi', 'Handi', 'Chulha', 'Sigri', 'Degchi'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Argentine green sauce of parsley, garlic, oil and vinegar is spooned over grilled steak?', NULL,
        'Chimichurri', ARRAY['Pesto', 'Salsa verde', 'Gremolata', 'Mojo', 'Sofrito', 'Pistou'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Vietnamese sandwich is served on a crusty French-style roll with pickled vegetables?', NULL,
        'Banh mi', ARRAY['Pho', 'Bun cha', 'Cubano', 'Torta', 'Gyro', 'Muffuletta'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which South American drink is sipped through a metal straw from a hollow gourd?', NULL,
        'Yerba mate', ARRAY['Horchata', 'Chicha', 'Guarana', 'Rooibos', 'Pisco', 'Cascara'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Briefly boiling vegetables, then plunging them into ice water, is called what?', NULL,
        'Blanching', ARRAY['Poaching', 'Searing', 'Braising', 'Steaming', 'Scalding', 'Basting'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which nuts are now a standard part of the Waldorf salad, first served at a New York hotel?', NULL,
        'Walnuts', ARRAY['Pecans', 'Almonds', 'Cashews', 'Pine nuts', 'Pistachios', 'Hazelnuts'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Legend says a goat herder named Kaldi discovered coffee in which country?', NULL,
        'Ethiopia', ARRAY['Yemen', 'Brazil', 'Colombia', 'Turkey', 'Kenya', 'Egypt'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Boston baked beans are traditionally made with which small white bean?', NULL,
        'Navy beans', ARRAY['Kidney beans', 'Pinto beans', 'Black beans', 'Lima beans', 'Garbanzo beans', 'Fava beans'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What do the Japanese call thin slices of raw fish served without rice?', NULL,
        'Sashimi', ARRAY['Sushi', 'Nigiri', 'Maki', 'Temaki', 'Tataki', 'Poke'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which meringue dessert topped with cream and fruit is named after a Russian ballerina?', NULL,
        'Pavlova', ARRAY['Eton mess', 'Baked Alaska', 'Peach Melba', 'Charlotte russe', 'Floating island', 'Vacherin'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Indian spice blend''s name means "warm mixture"?', NULL,
        'Garam masala', ARRAY['Curry powder', 'Ras el hanout', 'Za''atar', 'Tandoori masala', 'Chaat masala', 'Five-spice'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Dutch cheese is famous for its ball shape and red wax coat?', NULL,
        'Edam', ARRAY['Gouda', 'Gruyère', 'Leerdammer', 'Havarti', 'Muenster', 'Brie'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Australian spread is made from leftover brewer''s yeast?', NULL,
        'Vegemite', ARRAY['Marmite', 'Nutella', 'Bovril', 'Kaya', 'Dulce de leche', 'Lemon curd'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Hungarian beef stew takes its name from the word for cattle herdsmen?', NULL,
        'Goulash', ARRAY['Borscht', 'Stroganoff', 'Bigos', 'Cassoulet', 'Stifado', 'Pörkölt'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Beef Stroganoff is named after a noble family from which country?', NULL,
        'Russia', ARRAY['France', 'Germany', 'Austria', 'Poland', 'Hungary', 'Sweden'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which French vegetable stew of eggplant, zucchini and tomatoes shares its name with a 2007 Pixar film?', NULL,
        'Ratatouille', ARRAY['Bouillabaisse', 'Cassoulet', 'Pot-au-feu', 'Coq au vin', 'Niçoise', 'Tian'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What are the thick, chewy Japanese noodles made from wheat flour called?', NULL,
        'Udon', ARRAY['Ramen', 'Somen', 'Glass noodles', 'Rice noodles', 'Shirataki', 'Lo mein'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Italian treat is a scoop of ice cream "drowned" in a shot of hot espresso?', NULL,
        'Affogato', ARRAY['Frappé', 'Cortado', 'Macchiato', 'Granita', 'Gelato', 'Semifreddo'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which part of a chili pepper holds most of its heat?', NULL,
        'The pale inner ribs', ARRAY['The seeds', 'The tip', 'The stem', 'The skin', 'The juice', 'The leaves'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which compound makes chili peppers taste hot?', NULL,
        'Capsaicin', ARRAY['Caffeine', 'Piperine', 'Allicin', 'Menthol', 'Gingerol', 'Tannin'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which scale measures how hot a chili pepper is?', NULL,
        'The Scoville scale', ARRAY['The Brix scale', 'The Richter scale', 'The Beaufort scale', 'The Kelvin scale', 'The Mohs scale', 'The pH scale'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which fortified wine comes from the area around Jerez, in southern Spain?', NULL,
        'Sherry', ARRAY['Port', 'Madeira', 'Marsala', 'Vermouth', 'Muscat', 'Cava'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Indian bread is deep-fried until it puffs up like a balloon?', NULL,
        'Puri', ARRAY['Naan', 'Chapati', 'Paratha', 'Roti', 'Dosa', 'Papadum'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which thin, crispy South Indian crepe is made from a fermented rice and lentil batter?', NULL,
        'Dosa', ARRAY['Naan', 'Uttapam', 'Paratha', 'Appam', 'Chapati', 'Puri'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Korean barbecue dish''s name means "fire meat"?', NULL,
        'Bulgogi', ARRAY['Galbi', 'Japchae', 'Tteokbokki', 'Samgyeopsal', 'Kimbap', 'Jjigae'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spicy Spanish pork sausage gets its deep red color from pimentón?', NULL,
        'Chorizo', ARRAY['Salami', 'Kielbasa', 'Andouille', 'Bratwurst', 'Morcilla', 'Linguica'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Italian cured pork comes from the belly, like an unsmoked bacon?', NULL,
        'Pancetta', ARRAY['Prosciutto', 'Guanciale', 'Salami', 'Mortadella', 'Speck', 'Coppa'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which layered French pastry has a name meaning "a thousand leaves"?', NULL,
        'Mille-feuille', ARRAY['Croissant', 'Éclair', 'Profiterole', 'Palmier', 'Madeleine', 'Pain au chocolat'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Tahini is a paste made from which seeds?', NULL,
        'Sesame seeds', ARRAY['Sunflower seeds', 'Pumpkin seeds', 'Chia seeds', 'Flax seeds', 'Poppy seeds', 'Hemp seeds'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which vodka cocktail with ginger beer and lime is served in a copper mug?', NULL,
        'Moscow Mule', ARRAY['Dark ''n'' Stormy', 'Cosmopolitan', 'Screwdriver', 'Bloody Mary', 'Gimlet', 'Sea Breeze'], 300, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'A chipotle is a smoked, dried version of which pepper?', NULL,
        'The jalapeño', ARRAY['The habanero', 'The poblano', 'The serrano', 'The cayenne', 'The bell pepper', 'The Anaheim'], 300, NULL);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What fermented soybean food, famous for its sticky strings and strong smell, is a traditional Japanese breakfast?', NULL,
        'Natto', ARRAY['Miso', 'Tofu', 'Tempeh', 'Soy sauce', 'Edamame', 'Yuba'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which small fish gives traditional Worcestershire sauce its savory depth?', NULL,
        'Anchovies', ARRAY['Sardines', 'Mackerel', 'Herring', 'Tuna', 'Shrimp paste', 'Oysters'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice comes from the dried flower buds of a tropical evergreen tree native to Indonesia''s Maluku Islands?', NULL,
        'Cloves', ARRAY['Allspice', 'Star anise', 'Cardamom', 'Nutmeg', 'Mace', 'Peppercorn'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which blue cheese, made from sheep''s milk, must be aged in the caves of Mont Combalou?', NULL,
        'Roquefort', ARRAY['Gorgonzola', 'Stilton', 'Danish Blue', 'Cambozola', 'Bleu d''Auvergne', 'Cabrales'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which grape makes almost all of Burgundy''s red wines?', NULL,
        'Pinot Noir', ARRAY['Merlot', 'Cabernet Sauvignon', 'Syrah', 'Grenache', 'Malbec', 'Tempranillo'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'New Zealand''s Marlborough region is world famous for wine from which white grape?', NULL,
        'Sauvignon Blanc', ARRAY['Chardonnay', 'Riesling', 'Pinot Grigio', 'Chenin Blanc', 'Viognier', 'Gewurztraminer'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Italian spirit is distilled from the skins, seeds and stems left over from winemaking?', NULL,
        'Grappa', ARRAY['Limoncello', 'Sambuca', 'Amaretto', 'Frangelico', 'Fernet', 'Strega'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'At a Japanese restaurant, what term means you let the chef choose what you eat?', NULL,
        'Omakase', ARRAY['Itadakimasu', 'Kampai', 'Izakaya', 'Bento', 'Teppanyaki', 'Kaiseki'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which dish, whose name means "mixed rice," is a bowl topped with vegetables, a fried egg and gochujang chili paste?', NULL,
        'Bibimbap', ARRAY['Bulgogi', 'Japchae', 'Tteokbokki', 'Donburi', 'Nasi goreng', 'Loco moco'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which spongy, sour flatbread made from teff flour is the base of most Ethiopian meals?', NULL,
        'Injera', ARRAY['Naan', 'Pita', 'Lavash', 'Roti', 'Chapati', 'Arepa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which French term for a tiny appetizer sent out by the chef literally means "mouth amuser"?', NULL,
        'Amuse-bouche', ARRAY['Hors d''oeuvre', 'Canape', 'Entree', 'Petit four', 'Digestif', 'Aperitif'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which cocktail mixes equal parts gin, Campari and sweet vermouth?', NULL,
        'Negroni', ARRAY['Aperol Spritz', 'Americano', 'Bellini', 'Martini', 'Manhattan', 'Rossini'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Swiss dish is a block of cheese melted and scraped onto potatoes?', NULL,
        'Raclette', ARRAY['Fondue', 'Rosti', 'Tartiflette', 'Aligot', 'Poutine', 'Gratin dauphinois'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Tapioca is made from the starch of which root?', NULL,
        'Cassava', ARRAY['Taro', 'Yam', 'Sweet potato', 'Potato', 'Jicama', 'Lotus root'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which spirit is the base of Brazil''s national cocktail, the caipirinha?', NULL,
        'Cachaca', ARRAY['Tequila', 'Pisco', 'Vodka', 'Gin', 'Mezcal', 'Grappa'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What is the French name for flour cooked in fat, used to thicken sauces like gravy and bechamel?', NULL,
        'Roux', ARRAY['Slurry', 'Liaison', 'Mirepoix', 'Bouquet garni', 'Fond', 'Duxelles'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which prized Spanish cured ham comes from black pigs that fatten on acorns in oak forests?', NULL,
        'Jamon iberico', ARRAY['Jamon serrano', 'Prosciutto di Parma', 'Speck', 'Bayonne ham', 'Black Forest ham', 'Westphalian ham'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which sweet Hungarian dessert wine is made from grapes shriveled by "noble rot"?', NULL,
        'Tokaji', ARRAY['Sauternes', 'Ice wine', 'Marsala', 'Madeira', 'Retsina', 'Bull''s Blood'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice from the ginger family is sold as small green pods and flavors Indian chai and Scandinavian sweet buns?', NULL,
        'Cardamom', ARRAY['Fenugreek', 'Coriander', 'Cumin', 'Fennel seed', 'Star anise', 'Allspice'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Scottish soup is made from smoked haddock, potatoes and onions?', NULL,
        'Cullen skink', ARRAY['Cock-a-leekie', 'Scotch broth', 'Partan bree', 'Bouillabaisse', 'Clam chowder', 'Mulligatawny'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Moroccan spice blend''s name means "head of the shop"?', NULL,
        'Ras el hanout', ARRAY['Harissa', 'Za''atar', 'Baharat', 'Dukkah', 'Berbere', 'Chermoula'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Middle Eastern spice blend mixes dried thyme, sumac and sesame seeds?', NULL,
        'Za''atar', ARRAY['Ras el hanout', 'Baharat', 'Dukkah', 'Harissa', 'Garam masala', 'Berbere'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Chianti is made mostly from which red grape?', NULL,
        'Sangiovese', ARRAY['Nebbiolo', 'Barbera', 'Merlot', 'Montepulciano', 'Primitivo', 'Tempranillo'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which slow-cooked stew of white beans, sausage and duck comes from southwest France?', NULL,
        'Cassoulet', ARRAY['Bouillabaisse', 'Pot-au-feu', 'Coq au vin', 'Ratatouille', 'Daube', 'Garbure'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What does "macchiato" mean in Italian?', NULL,
        'Stained', ARRAY['Small', 'Strong', 'Foamy', 'Morning', 'Sweet', 'Short'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Japanese dipping sauce is made with citrus juice, often blended with soy sauce?', NULL,
        'Ponzu', ARRAY['Teriyaki', 'Tare', 'Mirin', 'Tsuyu', 'Yuzu kosho', 'Tonkatsu sauce'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'The sweet orange is a cross between a pomelo and which other citrus fruit?', NULL,
        'The mandarin', ARRAY['The lemon', 'The lime', 'The grapefruit', 'The citron', 'The kumquat', 'The tangelo'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which cured pork cheek is the traditional meat in a Roman carbonara?', NULL,
        'Guanciale', ARRAY['Pancetta', 'Prosciutto', 'Speck', 'Lardo', 'Coppa', 'Bresaola'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which upside-down caramelized apple tart is named for the two French sisters who served it at their hotel?', NULL,
        'Tarte Tatin', ARRAY['Clafoutis', 'Galette des rois', 'Tarte au citron', 'Far breton', 'Kouign-amann', 'Pithivier'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which little shell-shaped sponge cake, dipped in tea, set off Marcel Proust''s flood of memories?', NULL,
        'The madeleine', ARRAY['The financier', 'The macaron', 'The canelé', 'The palmier', 'The éclair', 'The petit four'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Japanese dashi broth is made from kombu seaweed and flakes of which dried, smoked fish?', NULL,
        'Bonito', ARRAY['Mackerel', 'Sardine', 'Tuna belly', 'Eel', 'Salmon', 'Anchovy'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which creamy soup of leeks and potatoes is traditionally served cold?', NULL,
        'Vichyssoise', ARRAY['Bisque', 'Gazpacho', 'Velouté', 'Chowder', 'Borscht', 'Consommé'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice is the seed of a tree whose lacy red seed covering is sold separately as mace?', NULL,
        'Nutmeg', ARRAY['Allspice', 'Cloves', 'Cardamom', 'Star anise', 'Cinnamon', 'Coriander'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Brazil''s national dish is a stew of black beans and pork called what?', NULL,
        'Feijoada', ARRAY['Moqueca', 'Churrasco', 'Vatapá', 'Coxinha', 'Acarajé', 'Picanha'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Filipino dish braises meat in vinegar, soy sauce, garlic and bay leaves?', NULL,
        'Adobo', ARRAY['Sinigang', 'Kare-kare', 'Sisig', 'Lechon', 'Pancit', 'Lumpia'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Indonesian dish''s name simply means "fried rice"?', NULL,
        'Nasi goreng', ARRAY['Mie goreng', 'Nasi lemak', 'Rendang', 'Satay', 'Gado-gado', 'Soto'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spicy coconut noodle soup is a favorite in Malaysia and Singapore?', NULL,
        'Laksa', ARRAY['Tom kha', 'Pho', 'Ramen', 'Khao soi', 'Mohinga', 'Mee goreng'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which pastry of phyllo, chopped nuts and syrup did Ottoman sultans send to their soldiers in a Ramadan parade?', NULL,
        'Baklava', ARRAY['Kunafa', 'Halva', 'Lokum', 'Börek', 'Basbousa', 'Revani'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which salty Italian sheep''s-milk cheese was part of the rations of Roman legionaries?', NULL,
        'Pecorino Romano', ARRAY['Parmigiano-Reggiano', 'Grana Padano', 'Asiago', 'Ricotta salata', 'Provolone', 'Manchego'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which sheep''s-milk cheese comes from La Mancha, the land of Don Quixote?', NULL,
        'Manchego', ARRAY['Pecorino', 'Idiazabal', 'Mahón', 'Cabrales', 'Roncal', 'Feta'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which red grape became Argentina''s signature wine after arriving from France?', NULL,
        'Malbec', ARRAY['Carménère', 'Tannat', 'Merlot', 'Syrah', 'Bonarda', 'Grenache'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which white grape is Germany''s most famous wine?', NULL,
        'Riesling', ARRAY['Chardonnay', 'Grüner Veltliner', 'Gewürztraminer', 'Sauvignon Blanc', 'Pinot Grigio', 'Chenin Blanc'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which fortified wine from a Portuguese island is deliberately heated as it ages?', NULL,
        'Madeira', ARRAY['Port', 'Sherry', 'Marsala', 'Vin santo', 'Malaga', 'Commandaria'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which anise-flavored spirit, nicknamed "the green fairy," was banned in much of Europe in the early 1900s?', NULL,
        'Absinthe', ARRAY['Ouzo', 'Pastis', 'Sambuca', 'Chartreuse', 'Arak', 'Pernod'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'In French cooking, what is mirepoix?', NULL,
        'Diced onion, carrot and celery', ARRAY['A thick tomato paste', 'Butter mixed with flour', 'Chopped parsley and garlic', 'A bundle of herbs', 'Slow-cooked onions', 'A clear stock'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Cajun cooking''s "holy trinity" is onion, celery and what?', NULL,
        'Bell pepper', ARRAY['Garlic', 'Carrot', 'Okra', 'Tomato', 'Cayenne', 'Green onion'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which nut grows hanging beneath a fleshy fruit called an "apple," inside a shell holding a skin-burning oil?', NULL,
        'The cashew', ARRAY['The almond', 'The pistachio', 'The macadamia', 'The Brazil nut', 'The pecan', 'The walnut'], 400, 'Cashews are never sold in the shell, which holds an irritating oil related to poison ivy''s.');
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice, the dried berry of a Caribbean tree, tastes like cinnamon, nutmeg and cloves at once?', NULL,
        'Allspice', ARRAY['Juniper', 'Pink peppercorn', 'Star anise', 'Cardamom', 'Mace', 'Sumac'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which ancient Andean seed did the Incas call the "mother grain"?', NULL,
        'Quinoa', ARRAY['Amaranth', 'Chia', 'Millet', 'Barley', 'Teff', 'Buckwheat'], 400, NULL);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points, facts)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the French term for a dish set on fire with liquor at the table, like cherries jubilee?', NULL,
        'Flambé', ARRAY['Brûlée', 'Glacé', 'Sauté', 'Gratiné', 'Confit', 'Poêlé'], 400, NULL);

COMMIT;

-- Check: should return 200.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FOOD_AND_DRINK';
