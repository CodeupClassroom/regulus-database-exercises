USE codeup_test_db;


# Truncate is used to delete ALL ROWS OF DATA within a table. Here, we are deleting everything
# so that we do not duplicate any data with our following INSERT command.
TRUNCATE quotes;

# INSERT = Create
# SELECT = Read
# UPDATE = Update
# DELETE = Delete

# INSERT INTO quotes (author_first_name, author_last_name, content)
# VALUES('Douglas', 'Adams', 'Don''t Panic'),
#        ('Steve', 'Maraboli', 'Happiness is not the absence of problems. It''s the ability to deal with them.'),
#        ('Ernest', 'Hemingway', 'The world breaks everyone, and afterward, some are strong at the broken places.'),
#        ('Lou', 'Holtz', 'Virtually nothing is impossible in this world if you just put your mind to it and maintain a positive attitude.');

# SELECT column1, column2 FROM table_name;

# Select the author last name and the content.
# SELECT author_last_name, content FROM quotes;

# WHERE CLAUSE - used to filter our query for data using comparison operators.

# Select the author last name and content where the last name is equal to 'Adams'.
# SELECT author_last_name, content FROM quotes WHERE author_last_name = 'Adams';

# Update the quotes table and set the content to 'Hello World' where the id is equal to 1;
# UPDATE quotes SET content = 'Hello World!' WHERE id = 1;

# You can SET multiple columns to have values separated by a comma.
# UPDATE quotes SET author_first_name = 'Bill', SET author_last_name = 'Gates' WHERE id = 1;

#  **CAUTION**
# DELETE - can delete one or multiple rows that satisfy a WHERE clause.

# !!IMPORTANT!!
# As best practice, write out your WHERE clause FIRST so that you know the correct row will be deleted.

# Delete the record with the ID of 3 from the quotes table.

# DELETE FROM quotes WHERE id = 3;