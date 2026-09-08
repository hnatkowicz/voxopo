-- ============================================================================
-- On the Spectrum: statement bank expansion (batch 2).
--
-- Purely additive -- appends 45 new rows to the table
-- `on_the_spectrum_statements_seed.sql` already created and seeded with 35
-- statements. Does NOT recreate the table or touch any existing row, so
-- it's safe to run against a database that already has the first batch
-- loaded (which production does).
--
-- One statement from the source list ("Most news coverage is biased.") was
-- dropped here because it duplicates a statement from the first batch
-- (already live as row 35) -- see the proofread that produced this file.
-- Two statements had their wording corrected for grammar
-- ("superior than" -> "superior to"; a missing subject on the
-- "brutally honest" line) -- everything else is unchanged from the
-- original draft, including a couple of stylistic choices (an exclamation
-- point, a direct political reference) that were flagged but left as
-- authored calls.
-- ============================================================================

INSERT INTO on_the_spectrum_statements (statement_text) VALUES
    ('Pizza is overrated.'),
    ('Banksy is not a good artist.'),
    ('"67" is cringe.'),
    ('Money can''t buy happiness.'),
    ('Looks matter in a relationship.'),
    ('Autocorrect is ducking great!'),
    ('Baseball is boring.'),
    ('Soccer is boring.'),
    ('Cold pizza is a good breakfast.'),
    ('Cats make better pets than dogs.'),
    ('Trump isn''t THAT bad.'),
    ('Making your bed is a waste of time.'),
    ('The movie is better than the book it was based upon.'),
    ('Reading a book is a vastly superior experience to watching a movie.'),
    ('Concerts are overrated.'),
    ('Autumn is a superior season to spring.'),
    ('A hot dog is structurally a taco.'),
    ('Mustard is better than ketchup on hot dogs.'),
    ('Slightly stale popcorn is better than fresh popcorn.'),
    ('Texting is vastly superior to a phone call.'),
    ('AI-generated art is always "slop."'),
    ('Thick-cut fries are better than McDonald''s fries.'),
    ('Avocados are overrated.'),
    ('Dark chocolate is better than all other chocolates.'),
    ('Public marriage proposals are either manipulative or fake.'),
    ('Creamy peanut butter is better than crunchy.'),
    ('The Beatles are overrated.'),
    ('Small talk is a useful type of conversation.'),
    ('Reality shows are as culturally valuable as documentaries.'),
    ('The fist bump is an acceptable alternative to a handshake.'),
    ('Pirating music is stealing.'),
    ('Theft can be excused if you''re objectively impoverished.'),
    ('Crunchy cookies are vastly superior to chewy cookies.'),
    ('The phrase "blood is thicker than water" is toxic and untrue.'),
    ('Apples are the best fruit.'),
    ('Crocs are a good piece of footwear.'),
    ('A great crust is better than the first bite of an average pizza.'),
    ('Seafood is overrated.'),
    ('Vacationing at Disney as an adult without children is a red flag.'),
    ('Winter is the most beautiful season.'),
    ('Being brutally honest is just being brutal.'),
    ('Pets can be viewed as children.'),
    ('"Love at first sight" is not a ''thing.'''),
    ('Speed limits should always be interpreted as suggestions.'),
    ('High school years were the best years.');
