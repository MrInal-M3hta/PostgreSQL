

-- aliases is going to make ur queries shorter and easier to read

-- posts.title 
-- i want to write like this p.title

-- users.name instead u want to do u.name

SELECT
  p.title AS post_title,
  p.status,
  p.views,
  u.name AS author_name,
  c.body AS comment_body
FROM posts AS p
INNER JOIN users AS u
  ON p.user_id = u.id
LEFT JOIN comments AS c
  ON p.id = c.post_id
ORDER BY p.views DESC;



-- Another way to write the same query is to use the table name as an alias instead of using AS keyword

SELECT
  p.title post_title,
  p.status,
  p.views,
  u.name author_name,
  c.body comment_body
FROM posts p
INNER JOIN users u
  ON p.user_id = u.id
LEFT JOIN comments c
  ON p.id = c.post_id
ORDER BY p.views DESC;

/*

 Output:
| -------------------------------|-----------|-------|-------------|----------------------------|
| post_title                     | status    | views | author_name | comment_body               |
| -------------------------------|-----------|-------|-------------|----------------------------|
| Backend APIs with PostgreSQL   | published | 180   | Rahul       | Please add more examples.  |
| PostgreSQL Joins Explained     | published | 100   | Ananya      | Very clear explanation.    |
| Indexes for Beginners          | draft     | 40    | Ananya      | NULL                       |

*/