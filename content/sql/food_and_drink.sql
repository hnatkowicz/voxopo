-- ============================================================================
-- content/sql/food_and_drink.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/food_and_drink.csv, the master copy of the
-- Thinking Pants category FOOD_AND_DRINK. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 80 live questions
-- (100: 20, 200: 20, 300: 20, 400: 20), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FOOD_AND_DRINK';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What fruit is traditionally used to make guacamole?', NULL,
        'Avocado', ARRAY['Mango', 'Papaya', 'Kiwi', 'Tomato', 'Lime', 'Pear'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the main ingredient in traditional hummus?', NULL,
        'Chickpeas', ARRAY['Lentils', 'Black beans', 'Kidney beans', 'Fava beans', 'Peanuts', 'Edamame'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What leafy herb, along with tomato and mozzarella, defines a traditional Margherita pizza?', NULL,
        'Basil', ARRAY['Oregano', 'Parsley', 'Thyme', 'Rosemary', 'Mint', 'Cilantro'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What type of drink is "espresso"?', NULL,
        'Coffee', ARRAY['Tea', 'Hot chocolate', 'Cider', 'Chai', 'Matcha', 'Cocoa'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What Japanese dish consists of vinegared rice typically paired with raw fish?', NULL,
        'Sushi', ARRAY['Tempura', 'Ramen', 'Udon', 'Teriyaki', 'Yakitori', 'Onigiri'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which country is the dish "paella" traditionally from?', NULL,
        'Spain', ARRAY['Portugal', 'Italy', 'Mexico', 'Morocco', 'Greece', 'France'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What type of cheese is traditionally used in a classic Greek salad?', NULL,
        'Feta', ARRAY['Mozzarella', 'Gouda', 'Brie', 'Cheddar', 'Parmesan', 'Ricotta'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What vegetable is the main ingredient of coleslaw?', NULL,
        'Cabbage', ARRAY['Lettuce', 'Celery', 'Cucumber', 'Broccoli', 'Onion', 'Kale'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What drink is made by fermenting apple juice?', NULL,
        'Cider', ARRAY['Perry', 'Mead', 'Ginger beer', 'Kvass', 'Shandy', 'Sangria'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which spirit is the base of a classic margarita?', NULL,
        'Tequila', ARRAY['Vodka', 'Rum', 'Gin', 'Whiskey', 'Brandy', 'Cachaca'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Kimchi, a fermented side dish served at nearly every meal, comes from which country?', NULL,
        'Korea', ARRAY['Japan', 'China', 'Vietnam', 'Thailand', 'Mongolia', 'The Philippines'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'A prune is a dried what?', NULL,
        'Plum', ARRAY['Grape', 'Fig', 'Date', 'Apricot', 'Cherry', 'Peach'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Cavendish is the most common variety of which fruit sold in supermarkets?', NULL,
        'Banana', ARRAY['Apple', 'Pear', 'Grape', 'Orange', 'Mango', 'Pineapple'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which creamy sauce is made by slowly whisking oil into egg yolks?', NULL,
        'Mayonnaise', ARRAY['Ketchup', 'Mustard', 'Bechamel', 'Salsa', 'Tahini', 'Gravy'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which drink is made by steeping the leaves of the Camellia sinensis plant?', NULL,
        'Tea', ARRAY['Coffee', 'Hot chocolate', 'Yerba mate', 'Rooibos', 'Chicory', 'Lemonade'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Real Champagne must come from the Champagne region of which country?', NULL,
        'France', ARRAY['Italy', 'Spain', 'Germany', 'Portugal', 'Belgium', 'Switzerland'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What do Americans call the vegetable the British call an aubergine?', NULL,
        'Eggplant', ARRAY['Zucchini', 'Squash', 'Bell pepper', 'Cucumber', 'Okra', 'Sweet potato'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which breakfast food is cooked in a hinged iron that presses a grid pattern into the batter?', NULL,
        'Waffles', ARRAY['Pancakes', 'Crepes', 'French toast', 'Crumpets', 'Muffins', 'Scones'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Besides cocoa, which nut gives the spread Nutella its flavor?', NULL,
        'Hazelnuts', ARRAY['Almonds', 'Peanuts', 'Walnuts', 'Cashews', 'Pecans', 'Macadamias'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which country produces most of the world''s maple syrup?', NULL,
        'Canada', ARRAY['The United States', 'Sweden', 'Norway', 'Finland', 'Russia', 'Switzerland'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice, derived from the Crocus flower, is the most expensive spice by weight?', NULL,
        'Saffron', ARRAY['Cardamom', 'Vanilla', 'Cinnamon', 'Nutmeg', 'Turmeric', 'Paprika'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the name of the French cooking technique of slowly cooking food submerged in its own fat?', NULL,
        'Confit', ARRAY['Braise', 'Saute', 'Poach', 'Flambe', 'Blanch', 'Deglaze'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the main alcohol used in a traditional Mojito cocktail?', NULL,
        'Rum', ARRAY['Vodka', 'Gin', 'Tequila', 'Whiskey', 'Brandy', 'Bourbon'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the name of Japan''s traditional brewed drink, often served warm in small cups?', NULL,
        'Sake', ARRAY['Soju', 'Mirin', 'Shochu', 'Umeshu', 'Awamori', 'Makgeolli'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the name of the French dessert consisting of a baked custard topped with a layer of hardened caramelized sugar?', NULL,
        'Creme brulee', ARRAY['Flan', 'Panna cotta', 'Tiramisu', 'Souffle', 'Mousse', 'Custard tart'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Italian dessert''s name means "pick me up"?', NULL,
        'Tiramisu', ARRAY['Panna cotta', 'Cannoli', 'Gelato', 'Zabaglione', 'Affogato', 'Semifreddo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which nut is ground to make marzipan?', NULL,
        'Almonds', ARRAY['Hazelnuts', 'Pistachios', 'Walnuts', 'Cashews', 'Peanuts', 'Pecans'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which juice is the base of a Bloody Mary cocktail?', NULL,
        'Tomato juice', ARRAY['Cranberry juice', 'Orange juice', 'Carrot juice', 'Grapefruit juice', 'Beet juice', 'Pineapple juice'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which nuts go into classic Italian pesto?', NULL,
        'Pine nuts', ARRAY['Walnuts', 'Almonds', 'Cashews', 'Pistachios', 'Hazelnuts', 'Macadamias'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which grain is malted to make most beer?', NULL,
        'Barley', ARRAY['Wheat', 'Rye', 'Oats', 'Rice', 'Millet', 'Sorghum'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'In Belgium, mussels are classically served with what?', NULL,
        'Fries', ARRAY['Bread', 'Rice', 'Waffles', 'Mashed potatoes', 'Salad', 'Pasta'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What is the Italian name for dry-cured ham sliced paper-thin?', NULL,
        'Prosciutto', ARRAY['Pancetta', 'Salami', 'Mortadella', 'Bresaola', 'Coppa', 'Guanciale'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Italian polenta is made by boiling what?', NULL,
        'Cornmeal', ARRAY['Semolina', 'Rice flour', 'Chickpea flour', 'Oats', 'Barley', 'Potato flakes'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which sauce of butter, egg yolks and lemon juice tops eggs Benedict?', NULL,
        'Hollandaise', ARRAY['Bearnaise', 'Mornay', 'Bechamel', 'Veloute', 'Aioli', 'Beurre blanc'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which bright yellow spice gives many curries their golden color?', NULL,
        'Turmeric', ARRAY['Paprika', 'Cumin', 'Cinnamon', 'Cardamom', 'Coriander', 'Ginger'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Pierogi, filled dumplings, are most closely tied to which country''s cuisine?', NULL,
        'Poland', ARRAY['Russia', 'Hungary', 'Czech Republic', 'Germany', 'Austria', 'Romania'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Spanish soup is made from raw tomatoes and vegetables and served cold?', NULL,
        'Gazpacho', ARRAY['Vichyssoise', 'Minestrone', 'Borscht', 'Bisque', 'Pozole', 'Caldo verde'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'The Indian dish dal is made mainly from what?', NULL,
        'Lentils', ARRAY['Rice', 'Potatoes', 'Spinach', 'Paneer', 'Cauliflower', 'Wheat flour'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'In a restaurant, what is a sommelier''s job?', NULL,
        'Choosing and serving the wine', ARRAY['Baking the bread', 'Plating the desserts', 'Seating the guests', 'Running the cheese board', 'Handling the bill', 'Making the coffee'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which creamy Italian rice dish is made by stirring in hot broth a ladle at a time?', NULL,
        'Risotto', ARRAY['Paella', 'Pilaf', 'Biryani', 'Arancini', 'Jambalaya', 'Congee'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'The croissant grew out of the kipferl, a crescent-shaped roll from which country?', NULL,
        'Austria', ARRAY['Germany', 'Switzerland', 'Belgium', 'Hungary', 'Poland', 'Netherlands'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which chili pepper was named the world''s hottest by Guinness World Records in 2013?', NULL,
        'Carolina Reaper', ARRAY['Ghost Pepper', 'Habanero', 'Scotch Bonnet', 'Scorpion Pepper', 'Jalapeno', 'Serrano'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which pasta''s name means "little tongues" in Italian?', NULL,
        'Linguine', ARRAY['Spaghetti', 'Fettuccine', 'Tagliatelle', 'Penne', 'Fusilli', 'Vermicelli'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'The most prized mozzarella in Italy is made from the milk of which animal?', NULL,
        'Water buffalo', ARRAY['Cow', 'Goat', 'Sheep', 'Yak', 'Camel', 'Donkey'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which "fifth taste," named by a Japanese chemist in 1908, describes the savory flavor of broth, soy sauce and Parmesan?', NULL,
        'Umami', ARRAY['Kokumi', 'Dashi', 'Mirin', 'Shiso', 'Miso', 'Yuzu'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'In a professional kitchen, what does "mise en place" mean?', NULL,
        'Having everything prepped and in place before cooking', ARRAY['A fancy table setting', 'The main course', 'Plating food artistically', 'A type of French stew', 'Cooking everything in one pan', 'The chef''s signature dish'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Port wine traditionally comes from which country''s Douro Valley?', NULL,
        'Portugal', ARRAY['Spain', 'Italy', 'France', 'Greece', 'Hungary', 'Croatia'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'By U.S. law, bourbon must be made from at least 51% of which grain?', NULL,
        'Corn', ARRAY['Rye', 'Wheat', 'Barley', 'Oats', 'Rice', 'Sorghum'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What does the Italian cooking term "al dente" literally mean?', NULL,
        'To the tooth', ARRAY['In the pot', 'With the salt', 'To the heat', 'On the tongue', 'In the water', 'To the plate'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Most of the green "wasabi" paste served in restaurants outside Japan is actually mostly what?', NULL,
        'Horseradish', ARRAY['Green tea powder', 'Mustard greens', 'Avocado', 'Spinach', 'Seaweed', 'Green chili'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What is ghee, used widely in Indian cooking?', NULL,
        'Clarified butter', ARRAY['Coconut oil', 'Mustard oil', 'Yogurt', 'Paneer', 'Sesame oil', 'Cream'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which North African dish is named after the clay pot with a cone-shaped lid it is cooked in?', NULL,
        'Tagine', ARRAY['Couscous', 'Harira', 'Pastilla', 'Shakshuka', 'Kefta', 'Mechoui'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What type of pastry is used to make eclairs and profiteroles?', NULL,
        'Choux pastry', ARRAY['Puff pastry', 'Filo pastry', 'Shortcrust pastry', 'Hot water crust', 'Rough puff', 'Brioche dough'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which smoky Mexican spirit is made from agave hearts roasted in underground pits?', NULL,
        'Mezcal', ARRAY['Pisco', 'Cachaca', 'Aguardiente', 'Grappa', 'Ouzo', 'Raki'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Peruvian dish is raw fish "cooked" in citrus juice?', NULL,
        'Ceviche', ARRAY['Poke', 'Sashimi', 'Crudo', 'Tartare', 'Carpaccio', 'Gravlax'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which berry gives gin its main flavor?', NULL,
        'Juniper', ARRAY['Elderberry', 'Blackcurrant', 'Cranberry', 'Rowan', 'Goji', 'Allspice'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Spanish bar snacks get their name from the word for "lid" or "cover"?', NULL,
        'Tapas', ARRAY['Pintxos', 'Churros', 'Croquetas', 'Empanadas', 'Patatas bravas', 'Raciones'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which spice is the dried inner bark of a tree?', NULL,
        'Cinnamon', ARRAY['Nutmeg', 'Allspice', 'Ginger', 'Mace', 'Star anise', 'Bay leaf'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Japanese noodles are made mainly from buckwheat flour?', NULL,
        'Soba', ARRAY['Udon', 'Ramen', 'Somen', 'Shirataki', 'Rice vermicelli', 'Glass noodles'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What is the name of the cylindrical clay oven in which naan is traditionally baked?', NULL,
        'Tandoor', ARRAY['Tawa', 'Karahi', 'Handi', 'Chulha', 'Sigri', 'Degchi'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'What fermented soybean food, famous for its sticky strings and strong smell, is a traditional Japanese breakfast?', NULL,
        'Natto', ARRAY['Miso', 'Tofu', 'Tempeh', 'Soy sauce', 'Edamame', 'Yuba'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which small fish gives traditional Worcestershire sauce its savory depth?', NULL,
        'Anchovies', ARRAY['Sardines', 'Mackerel', 'Herring', 'Tuna', 'Shrimp paste', 'Oysters'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice comes from the dried flower buds of a tropical evergreen tree native to Indonesia''s Maluku Islands?', NULL,
        'Cloves', ARRAY['Allspice', 'Star anise', 'Cardamom', 'Nutmeg', 'Mace', 'Peppercorn'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which blue cheese, made from sheep''s milk, must be aged in the caves of Mont Combalou?', NULL,
        'Roquefort', ARRAY['Gorgonzola', 'Stilton', 'Danish Blue', 'Cambozola', 'Bleu d''Auvergne', 'Cabrales'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which grape makes almost all of Burgundy''s red wines?', NULL,
        'Pinot Noir', ARRAY['Merlot', 'Cabernet Sauvignon', 'Syrah', 'Grenache', 'Malbec', 'Tempranillo'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'New Zealand''s Marlborough region is world famous for wine from which white grape?', NULL,
        'Sauvignon Blanc', ARRAY['Chardonnay', 'Riesling', 'Pinot Grigio', 'Chenin Blanc', 'Viognier', 'Gewurztraminer'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Italian spirit is distilled from the skins, seeds and stems left over from winemaking?', NULL,
        'Grappa', ARRAY['Limoncello', 'Sambuca', 'Amaretto', 'Frangelico', 'Fernet', 'Strega'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'At a Japanese restaurant, what term means you let the chef choose what you eat?', NULL,
        'Omakase', ARRAY['Itadakimasu', 'Kampai', 'Izakaya', 'Bento', 'Teppanyaki', 'Kaiseki'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which dish, whose name means "mixed rice," is a bowl topped with vegetables, a fried egg and gochujang chili paste?', NULL,
        'Bibimbap', ARRAY['Bulgogi', 'Japchae', 'Tteokbokki', 'Donburi', 'Nasi goreng', 'Loco moco'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which spongy, sour flatbread made from teff flour is the base of most Ethiopian meals?', NULL,
        'Injera', ARRAY['Naan', 'Pita', 'Lavash', 'Roti', 'Chapati', 'Arepa'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which French term for a tiny appetizer sent out by the chef literally means "mouth amuser"?', NULL,
        'Amuse-bouche', ARRAY['Hors d''oeuvre', 'Canape', 'Entree', 'Petit four', 'Digestif', 'Aperitif'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which cocktail mixes equal parts gin, Campari and sweet vermouth?', NULL,
        'Negroni', ARRAY['Aperol Spritz', 'Americano', 'Bellini', 'Martini', 'Manhattan', 'Rossini'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which Swiss dish is a block of cheese melted and scraped onto potatoes?', NULL,
        'Raclette', ARRAY['Fondue', 'Rosti', 'Tartiflette', 'Aligot', 'Poutine', 'Gratin dauphinois'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Tapioca is made from the starch of which root?', NULL,
        'Cassava', ARRAY['Taro', 'Yam', 'Sweet potato', 'Potato', 'Jicama', 'Lotus root'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'Which spirit is the base of Brazil''s national cocktail, the caipirinha?', NULL,
        'Cachaca', ARRAY['Tequila', 'Pisco', 'Vodka', 'Gin', 'Mezcal', 'Grappa'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'FOOD_AND_DRINK_BATCH_1', NULL,
        'What is the French name for flour cooked in fat, used to thicken sauces like gravy and bechamel?', NULL,
        'Roux', ARRAY['Slurry', 'Liaison', 'Mirepoix', 'Bouquet garni', 'Fond', 'Duxelles'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which prized Spanish cured ham comes from black pigs that fatten on acorns in oak forests?', NULL,
        'Jamon iberico', ARRAY['Jamon serrano', 'Prosciutto di Parma', 'Speck', 'Bayonne ham', 'Black Forest ham', 'Westphalian ham'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which sweet Hungarian dessert wine is made from grapes shriveled by "noble rot"?', NULL,
        'Tokaji', ARRAY['Sauternes', 'Ice wine', 'Marsala', 'Madeira', 'Retsina', 'Bull''s Blood'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which spice from the ginger family is sold as small green pods and flavors Indian chai and Scandinavian sweet buns?', NULL,
        'Cardamom', ARRAY['Fenugreek', 'Coriander', 'Cumin', 'Fennel seed', 'Star anise', 'Allspice'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'FOOD_AND_DRINK', 'ORIGINAL', NULL,
        'Which Scottish soup is made from smoked haddock, potatoes and onions?', NULL,
        'Cullen skink', ARRAY['Cock-a-leekie', 'Scotch broth', 'Partan bree', 'Bouillabaisse', 'Clam chowder', 'Mulligatawny'], 400);

COMMIT;

-- Check: should return 80.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'FOOD_AND_DRINK';
