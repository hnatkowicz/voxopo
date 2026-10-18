-- ============================================================================
-- content/sql/literature.sql -- GENERATED, don't edit by hand.
-- Made by content/build.mjs from content/literature.csv, the master copy of the
-- Thinking Pants category LITERATURE. To change a question, change the
-- spreadsheet and rebuild.
--
-- Replaces the WHOLE category with the spreadsheet's 122 live questions
-- (100: 30, 200: 32, 300: 30, 400: 30), inside a transaction. Safe to re-run.
-- ============================================================================

BEGIN;

DELETE FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LITERATURE';


-- 100 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the play "Romeo and Juliet"?', NULL,
        'William Shakespeare', ARRAY['Christopher Marlowe', 'Ben Jonson', 'John Milton', 'Geoffrey Chaucer', 'Oscar Wilde', 'Charles Dickens'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote "The Chronicles of Narnia" series?', NULL,
        'C.S. Lewis', ARRAY['J.R.R. Tolkien', 'Roald Dahl', 'Lewis Carroll', 'Philip Pullman', 'Madeleine L''Engle', 'E.B. White'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'What is the name of the sea captain who hunts the white whale in "Moby-Dick"?', NULL,
        'Captain Ahab', ARRAY['Captain Nemo', 'Captain Hook', 'Long John Silver', 'Captain Flint', 'Ishmael', 'Starbuck'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the novel "Pride and Prejudice"?', NULL,
        'Jane Austen', ARRAY['Charlotte Bronte', 'Emily Bronte', 'George Eliot', 'Virginia Woolf', 'Louisa May Alcott', 'Edith Wharton'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the dystopian novel "1984"?', NULL,
        'George Orwell', ARRAY['Aldous Huxley', 'Ray Bradbury', 'H.G. Wells', 'Kurt Vonnegut', 'Franz Kafka', 'Yevgeny Zamyatin'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Lord of the Rings" and "The Hobbit"?', NULL,
        'J.R.R. Tolkien', ARRAY['C.S. Lewis', 'George R.R. Martin', 'Terry Pratchett', 'Ursula K. Le Guin', 'Philip Pullman', 'T.H. White'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote the "Harry Potter" series?', NULL,
        'J.K. Rowling', ARRAY['Suzanne Collins', 'Stephenie Meyer', 'Rick Riordan', 'Cornelia Funke', 'Philip Pullman', 'Lemony Snicket'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Charlie and the Chocolate Factory" and "Matilda"?', NULL,
        'Roald Dahl', ARRAY['Dr. Seuss', 'Beverly Cleary', 'Lewis Carroll', 'E.B. White', 'Judy Blume', 'Shel Silverstein'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which horror author wrote "It," "The Shining" and "Carrie"?', NULL,
        'Stephen King', ARRAY['Dean Koontz', 'Anne Rice', 'R.L. Stine', 'Clive Barker', 'Peter Straub', 'Shirley Jackson'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Where the Wild Things Are"?', NULL,
        'Maurice Sendak', ARRAY['Dr. Seuss', 'Eric Carle', 'Shel Silverstein', 'Chris Van Allsburg', 'Mo Willems', 'Tomie dePaola'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Hunger Games" trilogy?', NULL,
        'Suzanne Collins', ARRAY['Veronica Roth', 'Stephenie Meyer', 'J.K. Rowling', 'Lois Lowry', 'James Dashner', 'Cassandra Clare'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Twilight"?', NULL,
        'Stephenie Meyer', ARRAY['Anne Rice', 'Suzanne Collins', 'Cassandra Clare', 'Charlaine Harris', 'Veronica Roth', 'L.J. Smith'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Diary of a Wimpy Kid"?', NULL,
        'Jeff Kinney', ARRAY['Dav Pilkey', 'Rick Riordan', 'Lincoln Peirce', 'Rachel Renée Russell', 'Jon Scieszka', 'Louis Sachar'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What classic novel follows four sisters, Meg, Jo, Beth and Amy, growing up during the Civil War?', NULL,
        'Little Women', ARRAY['Pride and Prejudice', 'Anne of Green Gables', 'Sense and Sensibility', 'Jane Eyre', 'The Secret Garden', 'Gone with the Wind'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What comic strip follows a mischievous boy and his stuffed tiger?', NULL,
        'Calvin and Hobbes', ARRAY['Peanuts', 'Dennis the Menace', 'Garfield', 'The Far Side', 'Bloom County', 'Family Circus'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What prize, named after a Swedish inventor, has been given for literature since 1901?', NULL,
        'The Nobel Prize', ARRAY['The Pulitzer Prize', 'The Booker Prize', 'The Newbery Medal', 'The Hugo Award', 'The National Book Award', 'The Caldecott Medal'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "The Cat in the Hat"?', NULL,
        'Dr. Seuss', ARRAY['Shel Silverstein', 'Eric Carle', 'Beverly Cleary', 'P.D. Eastman', 'Richard Scarry', 'Arnold Lobel'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'In "A Christmas Carol," what is the name of the miser visited by three ghosts?', NULL,
        'Ebenezer Scrooge', ARRAY['Jacob Marley', 'Bob Cratchit', 'Mr. Fezziwig', 'Silas Marner', 'Uriah Heep', 'Mr. Bumble'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'What is the name of the boy who never grows up in J.M. Barrie''s play?', NULL,
        'Peter Pan', ARRAY['Christopher Robin', 'Tom Thumb', 'Pinocchio', 'Huckleberry Finn', 'Hansel', 'Robin Hood'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'What kind of animal is Winnie-the-Pooh?', NULL,
        'A bear', ARRAY['A pig', 'A rabbit', 'A donkey', 'A tiger', 'A kangaroo', 'An owl'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'What is the name of the pig in "Charlotte''s Web"?', NULL,
        'Wilbur', ARRAY['Babe', 'Templeton', 'Napoleon', 'Piglet', 'Arnold', 'Porky'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote the "Little House on the Prairie" books?', NULL,
        'Laura Ingalls Wilder', ARRAY['Louisa May Alcott', 'L.M. Montgomery', 'Beverly Cleary', 'Judy Blume', 'Pearl S. Buck', 'Willa Cather'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'In "Alice''s Adventures in Wonderland," what does Alice follow down the hole?', NULL,
        'A white rabbit', ARRAY['A black cat', 'A March hare', 'A dormouse', 'A caterpillar', 'A dodo', 'A playing card'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "The Very Hungry Caterpillar"?', NULL,
        'Eric Carle', ARRAY['Dr. Seuss', 'Beatrix Potter', 'Margaret Wise Brown', 'Leo Lionni', 'Mo Willems', 'Arnold Lobel'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which author created Peter Rabbit?', NULL,
        'Beatrix Potter', ARRAY['A.A. Milne', 'Kenneth Grahame', 'Lewis Carroll', 'Richard Scarry', 'Margery Williams', 'Kate Greenaway'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'What happens to Pinocchio''s nose when he lies?', NULL,
        'It grows longer', ARRAY['It turns red', 'It shrinks', 'It twitches', 'It glows', 'It falls off', 'It squeaks'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which poet wrote "The Raven," with its line "Quoth the Raven, Nevermore"?', NULL,
        'Edgar Allan Poe', ARRAY['Walt Whitman', 'Robert Frost', 'Henry Wadsworth Longfellow', 'Emily Dickinson', 'Lord Byron', 'Ralph Waldo Emerson'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which fairy-tale girl lets down her long hair from a tower?', NULL,
        'Rapunzel', ARRAY['Cinderella', 'Snow White', 'Sleeping Beauty', 'Gretel', 'Thumbelina', 'Little Red Riding Hood'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'What is the name of Harry Potter''s owl?', NULL,
        'Hedwig', ARRAY['Errol', 'Pigwidgeon', 'Hermes', 'Fawkes', 'Crookshanks', 'Buckbeak'], 100);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'What is the name of the lion in "The Lion, the Witch and the Wardrobe"?', NULL,
        'Aslan', ARRAY['Mufasa', 'Reepicheep', 'Tumnus', 'Caspian', 'Leo', 'Elsa'], 100);

-- 200 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the "Sherlock Holmes" detective stories?', NULL,
        'Arthur Conan Doyle', ARRAY['Agatha Christie', 'Edgar Allan Poe', 'Wilkie Collins', 'G.K. Chesterton', 'Raymond Chandler', 'Dashiell Hammett'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'What is the name of the hobbit who carries the One Ring in "The Lord of the Rings"?', NULL,
        'Frodo Baggins', ARRAY['Bilbo Baggins', 'Samwise Gamgee', 'Peregrin Took', 'Meriadoc Brandybuck', 'Gollum', 'Aragorn'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the American novel "To Kill a Mockingbird"?', NULL,
        'Harper Lee', ARRAY['Flannery O''Connor', 'Toni Morrison', 'Carson McCullers', 'Eudora Welty', 'Zora Neale Hurston', 'Willa Cather'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'In Greek literature, who is credited with writing the epic poems "The Iliad" and "The Odyssey"?', NULL,
        'Homer', ARRAY['Hesiod', 'Sophocles', 'Euripides', 'Virgil', 'Ovid', 'Aeschylus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote "The Adventures of Huckleberry Finn"?', NULL,
        'Mark Twain', ARRAY['Nathaniel Hawthorne', 'Herman Melville', 'Jack London', 'Washington Irving', 'O. Henry', 'Stephen Crane'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'What is the name of the title character, a Danish prince, in Shakespeare''s famous tragedy?', NULL,
        'Hamlet', ARRAY['Macbeth', 'Othello', 'King Lear', 'Prospero', 'Laertes', 'Horatio'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Great Gatsby"?', NULL,
        'F. Scott Fitzgerald', ARRAY['Ernest Hemingway', 'John Steinbeck', 'William Faulkner', 'Sinclair Lewis', 'Edith Wharton', 'Theodore Dreiser'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Jurassic Park," later a Spielberg film?', NULL,
        'Michael Crichton', ARRAY['Tom Clancy', 'Dean Koontz', 'Stephen King', 'John Grisham', 'Robin Cook', 'Clive Cussler'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Da Vinci Code"?', NULL,
        'Dan Brown', ARRAY['John Grisham', 'James Patterson', 'Tom Clancy', 'David Baldacci', 'Steve Berry', 'Brad Meltzer'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Fault in Our Stars"?', NULL,
        'John Green', ARRAY['Nicholas Sparks', 'Jojo Moyes', 'Rainbow Rowell', 'Jay Asher', 'David Levithan', 'Stephen Chbosky'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of Sherlock Holmes''s loyal companion, who tells most of his stories?', NULL,
        'Dr. Watson', ARRAY['Inspector Lestrade', 'Mycroft Holmes', 'Mrs. Hudson', 'Professor Moriarty', 'Captain Hastings', 'Inspector Japp'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What sport, played on flying broomsticks, is popular at Hogwarts?', NULL,
        'Quidditch', ARRAY['Quaffleball', 'Bludger', 'Snitchball', 'Gobstones', 'Broomball', 'Skyball'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'In which novel does a boy trick his friends into whitewashing a fence for him?', NULL,
        'The Adventures of Tom Sawyer', ARRAY['The Adventures of Huckleberry Finn', 'Treasure Island', 'Oliver Twist', 'Little Women', 'The Prince and the Pauper', 'Peter Pan'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Alice''s Adventures in Wonderland"?', NULL,
        'Lewis Carroll', ARRAY['C.S. Lewis', 'J.M. Barrie', 'Edward Lear', 'Kenneth Grahame', 'L. Frank Baum', 'George MacDonald'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Charlotte''s Web" and "Stuart Little"?', NULL,
        'E.B. White', ARRAY['Beverly Cleary', 'Roald Dahl', 'A.A. Milne', 'Kate DiCamillo', 'Robert C. O''Brien', 'Dick King-Smith'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Catcher in the Rye"?', NULL,
        'J.D. Salinger', ARRAY['John Updike', 'Jack Kerouac', 'Kurt Vonnegut', 'Truman Capote', 'Philip Roth', 'Ken Kesey'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Of Mice and Men" and "The Grapes of Wrath"?', NULL,
        'John Steinbeck', ARRAY['William Faulkner', 'Ernest Hemingway', 'Upton Sinclair', 'Sinclair Lewis', 'John Dos Passos', 'Erskine Caldwell'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote the "Percy Jackson" series?', NULL,
        'Rick Riordan', ARRAY['J.K. Rowling', 'Christopher Paolini', 'Eoin Colfer', 'Lemony Snicket', 'Brandon Mull', 'Suzanne Collins'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author created secret agent James Bond?', NULL,
        'Ian Fleming', ARRAY['John le Carré', 'Tom Clancy', 'Robert Ludlum', 'Len Deighton', 'Frederick Forsyth', 'Graham Greene'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What kind of story teaches a moral lesson, often with talking animals?', NULL,
        'A fable', ARRAY['A sonnet', 'An epic', 'A limerick', 'A memoir', 'A satire', 'A haiku'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which mystery author created the detective Hercule Poirot?', NULL,
        'Agatha Christie', ARRAY['Dorothy L. Sayers', 'Arthur Conan Doyle', 'P.D. James', 'Ngaio Marsh', 'Ruth Rendell', 'G.K. Chesterton'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What London street does Sherlock Holmes live on?', NULL,
        'Baker Street', ARRAY['Downing Street', 'Fleet Street', 'Abbey Road', 'Oxford Street', 'Bond Street', 'Carnaby Street'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Who wrote "Moby-Dick"?', NULL,
        'Herman Melville', ARRAY['Nathaniel Hawthorne', 'Mark Twain', 'Jack London', 'James Fenimore Cooper', 'Washington Irving', 'Edgar Allan Poe'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What novel follows a boy stranded on a lifeboat with a Bengal tiger named Richard Parker?', NULL,
        'Life of Pi', ARRAY['The Old Man and the Sea', 'Robinson Crusoe', 'The Jungle Book', 'Cast Away', 'Swiss Family Robinson', 'Hatchet'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What adventure novel follows pirates hunting buried treasure, told by young Jim Hawkins?', NULL,
        'Treasure Island', ARRAY['Peter Pan', 'Robinson Crusoe', 'Kidnapped', 'The Count of Monte Cristo', 'Swiss Family Robinson', 'Captain Blood'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What novel follows an orphan who is punished for asking for "more" gruel in a workhouse?', NULL,
        'Oliver Twist', ARRAY['David Copperfield', 'Great Expectations', 'Nicholas Nickleby', 'Hard Times', 'Little Dorrit', 'Bleak House'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who is the hero of "The Odyssey," trying to sail home from Troy?', NULL,
        'Odysseus', ARRAY['Achilles', 'Hector', 'Aeneas', 'Agamemnon', 'Jason', 'Perseus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which Shakespeare play has three witches chanting "Double, double toil and trouble"?', NULL,
        'Macbeth', ARRAY['Hamlet', 'King Lear', 'The Tempest', 'Othello', 'A Midsummer Night''s Dream', 'Julius Caesar'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "The Jungle Book"?', NULL,
        'Rudyard Kipling', ARRAY['Robert Louis Stevenson', 'Jack London', 'H. Rider Haggard', 'Edgar Rice Burroughs', 'Kenneth Grahame', 'E.M. Forster'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which ancient Greek storyteller is credited with "The Tortoise and the Hare"?', NULL,
        'Aesop', ARRAY['Homer', 'Plato', 'Ovid', 'Hesiod', 'Sophocles', 'Herodotus'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which novel opens, "It was the best of times, it was the worst of times"?', NULL,
        'A Tale of Two Cities', ARRAY['Great Expectations', 'Les Misérables', 'Oliver Twist', 'David Copperfield', 'Bleak House', 'The Count of Monte Cristo'], 200);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'In the 1818 novel "Frankenstein," who is Frankenstein?', NULL,
        'The scientist who makes the creature', ARRAY['The creature', 'The creature''s bride', 'A village doctor', 'The scientist''s assistant, Igor', 'The ship captain who finds them', 'The castle''s owner'], 200);

-- 300 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the dystopian novel "Brave New World"?', NULL,
        'Aldous Huxley', ARRAY['George Orwell', 'Ray Bradbury', 'H.G. Wells', 'Kurt Vonnegut', 'Anthony Burgess', 'Margaret Atwood'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the Russian novel "War and Peace"?', NULL,
        'Leo Tolstoy', ARRAY['Fyodor Dostoevsky', 'Anton Chekhov', 'Ivan Turgenev', 'Nikolai Gogol', 'Boris Pasternak', 'Vladimir Nabokov'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'What is the pen name of author Mary Ann Evans, who wrote "Middlemarch"?', NULL,
        'George Eliot', ARRAY['George Sand', 'Currer Bell', 'Ellis Bell', 'Acton Bell', 'George Orwell', 'Mark Twain'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the gothic novel "Dracula," published in 1897?', NULL,
        'Bram Stoker', ARRAY['Mary Shelley', 'Robert Louis Stevenson', 'Sheridan Le Fanu', 'H.P. Lovecraft', 'M.R. James', 'Wilkie Collins'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Jaws," later a Spielberg film?', NULL,
        'Peter Benchley', ARRAY['Michael Crichton', 'Stephen King', 'Clive Cussler', 'Alistair MacLean', 'Robert Ludlum', 'Ira Levin'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Godfather," later a Coppola film?', NULL,
        'Mario Puzo', ARRAY['Elmore Leonard', 'Dennis Lehane', 'Don DeLillo', 'Nicholas Pileggi', 'E.L. Doctorow', 'Gay Talese'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "Gone Girl"?', NULL,
        'Gillian Flynn', ARRAY['Paula Hawkins', 'Tana French', 'Ruth Ware', 'Lisa Jewell', 'Liane Moriarty', 'Kate Atkinson'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'What is the name of the nation where "The Hunger Games" is set?', NULL,
        'Panem', ARRAY['District 12', 'Gilead', 'Oceania', 'Capitol City', 'Erudite', 'Westeros'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'In "Lord of the Flies," what object, blown to call meetings, stands for order?', NULL,
        'A conch shell', ARRAY['A bugle', 'A whistle', 'A drum', 'A bell', 'A pair of glasses', 'A ram''s horn'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "A Wrinkle in Time"?', NULL,
        'Madeleine L''Engle', ARRAY['Lois Lowry', 'Ursula K. Le Guin', 'Katherine Paterson', 'Natalie Babbitt', 'Lloyd Alexander', 'Susan Cooper'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Giver," about a boy named Jonas in a world without color or memory?', NULL,
        'Lois Lowry', ARRAY['Madeleine L''Engle', 'Katherine Paterson', 'Gary Paulsen', 'Jerry Spinelli', 'Louis Sachar', 'Kate DiCamillo'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Outsiders" as a teenager?', NULL,
        'S.E. Hinton', ARRAY['Judy Blume', 'Robert Cormier', 'Paul Zindel', 'Lois Duncan', 'Beverly Cleary', 'Katherine Paterson'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Kite Runner"?', NULL,
        'Khaled Hosseini', ARRAY['Salman Rushdie', 'Yann Martel', 'Orhan Pamuk', 'Rohinton Mistry', 'Arundhati Roy', 'Jhumpa Lahiri'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "The Alchemist"?', NULL,
        'Paulo Coelho', ARRAY['Gabriel García Márquez', 'Isabel Allende', 'Jorge Luis Borges', 'Carlos Ruiz Zafón', 'Mario Vargas Llosa', 'Khalil Gibran'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'In "The Da Vinci Code," the mystery centers on what legendary object?', NULL,
        'The Holy Grail', ARRAY['The Ark of the Covenant', 'The Spear of Destiny', 'The Shroud of Turin', 'Excalibur', 'The Philosopher''s Stone', 'The Golden Fleece'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'In L. Frank Baum''s original book, what color are Dorothy''s magic shoes?', NULL,
        'Silver', ARRAY['Ruby red', 'Gold', 'Emerald green', 'Glass', 'Blue', 'White'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who is Sherlock Holmes''s archenemy, the "Napoleon of crime"?', NULL,
        'Professor Moriarty', ARRAY['Irene Adler', 'Colonel Moran', 'Charles Augustus Milverton', 'Mycroft Holmes', 'Dr. Grimesby Roylott', 'Inspector Lestrade'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Great Expectations" and "Bleak House"?', NULL,
        'Charles Dickens', ARRAY['William Makepeace Thackeray', 'Thomas Hardy', 'Anthony Trollope', 'Wilkie Collins', 'George Eliot', 'Elizabeth Gaskell'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which girl detective, first published in 1930, solves mysteries in River Heights?', NULL,
        'Nancy Drew', ARRAY['Trixie Belden', 'Harriet the Spy', 'Pippi Longstocking', 'Encyclopedia Brown', 'Veronica Mars', 'Judy Bolton'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "The Old Man and the Sea"?', NULL,
        'Ernest Hemingway', ARRAY['William Faulkner', 'John Steinbeck', 'F. Scott Fitzgerald', 'Jack London', 'Herman Melville', 'John Dos Passos'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Jane Eyre"?', NULL,
        'Charlotte Brontë', ARRAY['Emily Brontë', 'Anne Brontë', 'Jane Austen', 'George Eliot', 'Elizabeth Gaskell', 'Mary Shelley'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who narrates "The Great Gatsby"?', NULL,
        'Nick Carraway', ARRAY['Jay Gatsby', 'Tom Buchanan', 'Daisy Buchanan', 'Jordan Baker', 'George Wilson', 'Meyer Wolfsheim'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which Shakespeare play features the line "Et tu, Brute?"', NULL,
        'Julius Caesar', ARRAY['Antony and Cleopatra', 'Coriolanus', 'Titus Andronicus', 'Macbeth', 'King Lear', 'Richard III'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'In Ray Bradbury''s "Fahrenheit 451," what is a fireman''s job?', NULL,
        'Burning books', ARRAY['Putting out house fires', 'Guarding the library', 'Hunting robots', 'Rescuing books from fires', 'Censoring television', 'Running the power plant'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which poet wrote "The Road Not Taken"?', NULL,
        'Robert Frost', ARRAY['Walt Whitman', 'Emily Dickinson', 'Carl Sandburg', 'Langston Hughes', 'Henry Wadsworth Longfellow', 'Wallace Stevens'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which poet, who rarely left her home in Amherst, wrote "Because I could not stop for Death"?', NULL,
        'Emily Dickinson', ARRAY['Sylvia Plath', 'Elizabeth Bishop', 'Christina Rossetti', 'Edna St. Vincent Millay', 'Anne Bradstreet', 'Elizabeth Barrett Browning'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Les Misérables"?', NULL,
        'Victor Hugo', ARRAY['Alexandre Dumas', 'Gustave Flaubert', 'Émile Zola', 'Honoré de Balzac', 'Jules Verne', 'Stendhal'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Twenty Thousand Leagues Under the Sea"?', NULL,
        'Jules Verne', ARRAY['H.G. Wells', 'Alexandre Dumas', 'Arthur Conan Doyle', 'Robert Louis Stevenson', 'Victor Hugo', 'Edgar Rice Burroughs'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "The Three Musketeers" and "The Count of Monte Cristo"?', NULL,
        'Alexandre Dumas', ARRAY['Victor Hugo', 'Jules Verne', 'Gustave Flaubert', 'Honoré de Balzac', 'Émile Zola', 'Stendhal'], 300);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Frankenstein" (1818)?', NULL,
        'Mary Shelley', ARRAY['Bram Stoker', 'Ann Radcliffe', 'Percy Bysshe Shelley', 'Lord Byron', 'Emily Brontë', 'Horace Walpole'], 300);

-- 400 points
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the epic poem "Paradise Lost"?', NULL,
        'John Milton', ARRAY['William Blake', 'Geoffrey Chaucer', 'Edmund Spenser', 'John Dryden', 'Alexander Pope', 'Samuel Johnson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Which Russian author wrote "Crime and Punishment"?', NULL,
        'Fyodor Dostoevsky', ARRAY['Leo Tolstoy', 'Anton Chekhov', 'Ivan Turgenev', 'Nikolai Gogol', 'Maxim Gorky', 'Alexander Pushkin'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote the satirical novel "Gulliver''s Travels"?', NULL,
        'Jonathan Swift', ARRAY['Daniel Defoe', 'Henry Fielding', 'Laurence Sterne', 'Samuel Richardson', 'Alexander Pope', 'Tobias Smollett'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'ORIGINAL', NULL,
        'Who wrote "The Canterbury Tales," a landmark work of Middle English literature?', NULL,
        'Geoffrey Chaucer', ARRAY['William Langland', 'John Gower', 'Thomas Malory', 'John Milton', 'Edmund Spenser', 'William Shakespeare'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'POP_CULTURE_FOLD_1', NULL,
        'Which author wrote "One Flew Over the Cuckoo''s Nest"?', NULL,
        'Ken Kesey', ARRAY['Jack Kerouac', 'Joseph Heller', 'Kurt Vonnegut', 'Tom Wolfe', 'Allen Ginsberg', 'Hunter S. Thompson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'What is the name of Don Quixote''s horse?', NULL,
        'Rocinante', ARRAY['Bucephalus', 'Babieca', 'Marengo', 'Shadowfax', 'Black Beauty', 'Tornado'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "One Hundred Years of Solitude"?', NULL,
        'Gabriel García Márquez', ARRAY['Jorge Luis Borges', 'Isabel Allende', 'Pablo Neruda', 'Mario Vargas Llosa', 'Julio Cortázar', 'Carlos Fuentes'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Ulysses" (1922), set in Dublin over a single day?', NULL,
        'James Joyce', ARRAY['Samuel Beckett', 'Oscar Wilde', 'W.B. Yeats', 'Virginia Woolf', 'D.H. Lawrence', 'Joseph Conrad'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Mrs Dalloway" and "To the Lighthouse"?', NULL,
        'Virginia Woolf', ARRAY['Edith Wharton', 'E.M. Forster', 'Katherine Mansfield', 'D.H. Lawrence', 'Iris Murdoch', 'Doris Lessing'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'In Dante''s "Inferno," which Roman poet guides Dante through Hell?', NULL,
        'Virgil', ARRAY['Ovid', 'Homer', 'Horace', 'Cicero', 'Lucretius', 'Seneca'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Things Fall Apart" (1958)?', NULL,
        'Chinua Achebe', ARRAY['Wole Soyinka', 'Ngũgĩ wa Thiong''o', 'Chimamanda Ngozi Adichie', 'Ben Okri', 'Nadine Gordimer', 'J.M. Coetzee'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote the plays "The Cherry Orchard" and "Uncle Vanya"?', NULL,
        'Anton Chekhov', ARRAY['Ivan Turgenev', 'Nikolai Gogol', 'Maxim Gorky', 'Henrik Ibsen', 'Alexander Pushkin', 'Leo Tolstoy'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which Norwegian playwright wrote "A Doll''s House"?', NULL,
        'Henrik Ibsen', ARRAY['August Strindberg', 'Anton Chekhov', 'George Bernard Shaw', 'Hans Christian Andersen', 'Knut Hamsun', 'Bjørnstjerne Bjørnson'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Waiting for Godot"?', NULL,
        'Samuel Beckett', ARRAY['Harold Pinter', 'Eugène Ionesco', 'Jean-Paul Sartre', 'Albert Camus', 'Tom Stoppard', 'James Joyce'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "The Metamorphosis," in which Gregor Samsa wakes up as a giant insect?', NULL,
        'Franz Kafka', ARRAY['Hermann Hesse', 'Thomas Mann', 'Albert Camus', 'Robert Musil', 'Rainer Maria Rilke', 'Günter Grass'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which French author wrote "The Stranger" (1942)?', NULL,
        'Albert Camus', ARRAY['Jean-Paul Sartre', 'André Gide', 'Marcel Proust', 'Simone de Beauvoir', 'Gustave Flaubert', 'Victor Hugo'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Madame Bovary"?', NULL,
        'Gustave Flaubert', ARRAY['Honoré de Balzac', 'Émile Zola', 'Stendhal', 'Guy de Maupassant', 'Victor Hugo', 'George Sand'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which poet wrote "Leaves of Grass"?', NULL,
        'Walt Whitman', ARRAY['Emily Dickinson', 'Ralph Waldo Emerson', 'Henry David Thoreau', 'Robert Frost', 'Carl Sandburg', 'Edgar Allan Poe'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Walden," about two years living by a pond in Massachusetts?', NULL,
        'Henry David Thoreau', ARRAY['Ralph Waldo Emerson', 'Walt Whitman', 'John Muir', 'Nathaniel Hawthorne', 'Herman Melville', 'Aldo Leopold'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "The Scarlet Letter"?', NULL,
        'Nathaniel Hawthorne', ARRAY['Herman Melville', 'Edgar Allan Poe', 'Washington Irving', 'James Fenimore Cooper', 'Henry James', 'Louisa May Alcott'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Beloved," which won the 1988 Pulitzer Prize for Fiction?', NULL,
        'Toni Morrison', ARRAY['Alice Walker', 'Maya Angelou', 'Zora Neale Hurston', 'Gwendolyn Brooks', 'Octavia Butler', 'Gloria Naylor'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which Old English epic poem features the monster Grendel?', NULL,
        'Beowulf', ARRAY['The Canterbury Tales', 'Sir Gawain and the Green Knight', 'Le Morte d''Arthur', 'The Faerie Queene', 'Paradise Lost', 'The Song of Roland'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'In "Animal Farm," which pig takes over the farm as a dictator?', NULL,
        'Napoleon', ARRAY['Snowball', 'Squealer', 'Old Major', 'Boxer', 'Benjamin', 'Mollie'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which author invented Yoknapatawpha County, Mississippi, as the setting for many of his novels?', NULL,
        'William Faulkner', ARRAY['Eudora Welty', 'Flannery O''Connor', 'Tennessee Williams', 'Cormac McCarthy', 'Thomas Wolfe', 'Robert Penn Warren'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Which Brontë sister wrote "Wuthering Heights"?', NULL,
        'Emily', ARRAY['Charlotte', 'Anne', 'Branwell'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "The Picture of Dorian Gray"?', NULL,
        'Oscar Wilde', ARRAY['Bram Stoker', 'Robert Louis Stevenson', 'Henry James', 'Thomas Hardy', 'George Bernard Shaw', 'Arthur Conan Doyle'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Heart of Darkness"?', NULL,
        'Joseph Conrad', ARRAY['Rudyard Kipling', 'E.M. Forster', 'Graham Greene', 'H. Rider Haggard', 'Robert Louis Stevenson', 'Ford Madox Ford'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'In Shakespeare''s "The Tempest," what is the name of the sorcerer stranded on an island?', NULL,
        'Prospero', ARRAY['Oberon', 'Caliban', 'Ariel', 'Puck', 'Merlin', 'Antonio'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Catch-22"?', NULL,
        'Joseph Heller', ARRAY['Kurt Vonnegut', 'Norman Mailer', 'Thomas Pynchon', 'Philip Roth', 'Ken Kesey', 'J.D. Salinger'], 400);
INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, points)
VALUES ((SELECT COALESCE(MAX(question_number), 0) + 1 FROM questions), 'TRIVI_YEAH_II', 'LITERATURE', 'LITERATURE_BATCH_1', NULL,
        'Who wrote "Slaughterhouse-Five"?', NULL,
        'Kurt Vonnegut', ARRAY['Joseph Heller', 'Norman Mailer', 'Thomas Pynchon', 'Philip K. Dick', 'Ray Bradbury', 'John Updike'], 400);

COMMIT;

-- Check: should return 122.
SELECT COUNT(*) FROM questions WHERE game_mode = 'TRIVI_YEAH_II' AND category = 'LITERATURE';
