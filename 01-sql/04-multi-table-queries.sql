CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
    );


CREATE TABLE articles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(50) NOT NULL,
    content VARCHAR(100) NOT NULL,
    userId INTEGER NOT NULL,
    FOREIGN KEY (userId)
        REFERENCES users (id)
);

PRAGMA table_info(articles);

INSERT INTO users (name)
VALUES 
    ('하석주'),
    ('송윤미'),
    ('유하선');

INSERT INTO articles (title, content, userId)
VALUES 
    ('제목1', '내용1', 1),
    ('제목2', '내용2', 2),
    ('제목3', '내용3', 1),
    ('제목4', '내용4', 4),
    ('제목5', '내용5', 1);

--JOIN
SELECT * FROM articles
INNER JOIN users
    ON articles.userId = users.id; 


SELECT title, name 
FROM 
(SELECT * FROM articles
INNER JOIN users
ON articles.userId = users.id)
WHERE userId = 1;