/*

What is a Subquery?

A subquery is simply a query inside another query.

Think of it like this:

The inner query runs first, and its result is used by the outer query.

Syntax:
  SELECT ...
  FROM ...
  WHERE column = (
      SELECT ...
  );

So you have :

  Outer Query
      │
      ▼
  Needs some value
      │
      ▼
  Runs the Inner Query
      │
      ▼
  Gets the result
      │
      ▼
  Continues the Outer Query

*/


-- which posts are performing better than average

SELECT 
  title,
  status,
  views
FROM posts
WHERE views > (
    SELECT AVG(views)
    FROM posts
)
ORDER BY views DESC;




-- Another example : Find the posts that are tagged with 'sql'

SELECT
    title,
    status,
    views
FROM posts
WHERE id IN (
    SELECT post_id
    FROM post_tags AS pt
    LEFT JOIN tags AS t
        ON pt.tag_id = t.id
    WHERE t.name = 'sql'
)
ORDER BY views DESC;



-- Another example : Find all posts written by 'Rahul'

SELECT *
FROM posts
WHERE user_id = (
    SELECT id
    FROM users
    WHERE name = 'Rahul'
);