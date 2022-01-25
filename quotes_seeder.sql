USE codeup_test_db;

TRUNCATE quotes;

INSERT INTO quotes (author_first_name, author_last_name, content)
VALUES('Douglas', 'Adams', 'Don''t Panic'),
       ('Steve', 'Maraboli', 'Happiness is not the absence of problems. It''s the ability to deal with them.'),
       ('Ernest', 'Hemingway', 'The world breaks everyone, and afterward, some are strong at the broken places.'),
       ('Lou', 'Holtz', 'Virtually nothing is impossible in this world if you just put your mind to it and maintain a positive attitude.');
