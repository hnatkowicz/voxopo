-- ============================================================================
-- On the Spectrum (agree/disagree slider-guessing mode): statement bank.
--
-- A NEW, dedicated table, not squeezed into `questions` -- there's no
-- multiple choice, no correct answer, and no distractor sourcing here, just
-- a single opinion statement rated on a 0-100 agree/disagree scale.
--
-- spice_flag is intentionally unused right now (every row defaults false).
-- It costs nothing to have sitting there, and it means a future "keep it
-- tame" filter is a WHERE clause and some UPDATEs away instead of a schema
-- migration, if that's ever needed.
-- ============================================================================

CREATE TABLE IF NOT EXISTS on_the_spectrum_statements (
    id SERIAL PRIMARY KEY,
    statement_text TEXT NOT NULL,
    spice_flag BOOLEAN NOT NULL DEFAULT false,
    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

INSERT INTO on_the_spectrum_statements (statement_text) VALUES
    ('Mayonnaise is a good condiment.'),
    ('Pineapple belongs on pizza.'),
    ('The toilet paper roll should hang over, not under.'),
    ('Hip-hop is just as sophisticated as classical music.'),
    ('"Stairway to Heaven" is a better song than "Free Bird."'),
    ('Cereal is a soup.'),
    ('A hot dog is a sandwich.'),
    ('Bill Clinton was a good president.'),
    ('Jimmy Carter was a good president.'),
    ('Ronald Reagan was a good president.'),
    ('McDonald''s fries are better than Burger King''s.'),
    ('Bananas are the best fruit.'),
    ('Going 10 mph over the speed limit should just be legal.'),
    ('LeBron James is the greatest basketball player of all time.'),
    ('Tom Brady is the greatest quarterback of all time.'),
    ('It''s rude to answer a phone call on speakerphone in public.'),
    ('You should tip at least 20%, no matter the service.'),
    ('Astrology has some truth to it.'),
    ('Kids today have it easier than previous generations did.'),
    ('The customer is always right.'),
    ('Multitasking makes you less productive, not more.'),
    ('Most self-help advice is common sense repackaged.'),
    ('Handwriting says something real about a person''s character.'),
    ('The customer service you get is worse than it was 20 years ago.'),
    ('Most people are worse drivers than they think they are.'),
    ('The wealthy should be taxed at a much higher rate.'),
    ('A four-day work week would be better for society.'),
    ('College should be free for everyone.'),
    ('Social media does more harm than good.'),
    ('Being patriotic means supporting your country even when it''s wrong.'),
    ('"Political correctness" has gone too far.'),
    ('Capitalism does more good than harm.'),
    ('Labor unions are good for workers.'),
    ('Religion should have no role in public policy.'),
    ('Most news coverage is biased.');
