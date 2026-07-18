

-- inner join returns only the matching rows from both tables


SELECT 
  users.name AS author_name,
  posts.title AS post_title,
  posts.status,
  posts.views
FROM posts
INNER JOIN users 
   ON posts.user_id = users.id    -- matching rule  
WHERE posts.status = 'published'
ORDER BY posts.views DESC;


/*

The logical processing order is:

1. FROM posts
2. INNER JOIN users ON posts.user_id = users.id
3. WHERE posts.status = 'published'
4. SELECT the requested columns
5. ORDER BY posts.views DESC

*/