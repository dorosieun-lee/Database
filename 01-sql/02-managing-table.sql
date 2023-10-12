CREATE TABLE examples (
    ExamId INTEGER PRIMARY KEY AUTOINCREMENT,
    LastName VARCHAR(50) NOT NULL, 
    FirstName VARCHAR(50) NOT NULL
    );

PRAGMA table_info('examples');

ALTER TABLE
    examples
ADD COLUMN
    Email VARCHAR(50);

ALTER TABLE
    examples
ADD COLUMN
    AGE INTEGER NOT NULL DEFAULT 0;

ALTER TABLE
    examples
RENAME COLUMN
    Address TO PostCode;

CREATE TABLE re_examples 
AS SELECT ExamId, LastName, FirstName, AGE
FROM examples;

DROP TABLE new_examples;

ALTER TABLE re_examples RENAME TO examples;

ALTER TABLE 
    examples
DROP COLUMN
    AGE;

DROP TABLE articles;

CREATE TABLE articles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(10) NOT NULL,
    content VARCHAR(255) NOT NULL,
    createAt DATE NOT NULL
    );

INSERT INTO articles (title, content, createAt)
VALUES ('hello', 'world', '2000-01-01');

INSERT INTO articles (title, content, createAt)
VALUES
    ('hello', 'world', '2000-01-02'),
    ('hello', 'world', '2000-01-03'),
    ('hello', 'world', '2000-01-04');

    
INSERT INTO articles (title, content, createAt)
VALUES ('mytitle', 'mycontent', DATE());

UPDATE articles
SET content = 'change';

UPDATE articles
SET title = 'hello'
WHERE id < 3;

UPDATE articles
SET 
title = '바뀌나?',
content = '두 개를 동시에?!'
WHERE id = 1;

UPDATE articles
SET 
    title = 'update title',
    content = 'update content'
WHERE id = 3;

SELECT *
FROM articles
ORDER BY id DESC;

DELETE FROM articles
WHERE id > 3;

DELETE FROM albums
WHERE AlbumId = 5;

DELETE FROM articles
WHERE id IN (
    SELECT id
    FROM articles
    ORDER BY createAt ASC
    LIMIT 2);


