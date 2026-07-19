

-- one post can have multiple tags
-- one tag can be associated with multiple posts

-- posts.id === post_tags.post_id
-- tags.id === post_tags.tag_id


-- Example: Show me every post with it's tag

SELECT 
   posts.title AS post_title,
   tags.name AS tag_name
FROM posts
INNER JOIN post_tags
  ON posts.id = post_tags.post_id
INNER JOIN tags
  ON post_tags.tag_id = tags.id
ORDER BY posts.title, tags.name;


/*

 Visual Diagram


posts
----------------------------------
id |        title                 | 
----------------------------------
P1 | PostgreSQL Joins Explained   |
P2 | Indexes for Beginners        |
P3 | Backend APIs with PostgreSQL |

        │
        │ JOIN
        ▼

post_tags
-----------------
post_id | tag_id
P1      | T1
P2      | T1
P3      | T2

        │
        │ JOIN
        ▼

tags
-----------------
id | name
T1 | sql
T2 | backend

After both joins, PostgreSQL can produce:
|----------------------------------------------|
|post_title                     | tag_name     |
|-------------------------------|--------------|
|PostgreSQL Joins Explained     |  sql         |
|Indexes for Beginners          |  sql         |
|Backend APIs with PostgreSQL   |  backend     |
|----------------------------------------------|

Then ORDER BY sorts those rows alphabetically by the title.
*/



-- Example: show Author + Post + Tag
-- Now we need to join the users table to the posts table, and then join the post_tags table, and finally join the tags table to get the tag names.

SELECT 
   users.name AS user_name,
   posts.title AS post_title,
   tags.name AS tag_name
FROM users
INNER JOIN posts
  ON users.id = posts.user_id
INNER JOIN post_tags
  ON posts.id = post_tags.post_id
INNER JOIN tags
  ON post_tags.tag_id = tags.id
ORDER BY users.name, posts.title, tags.name;

-- Remember, this is a many-to-many relationship because one post can have multiple tags, and one tag can be associated with multiple posts.




-- Example: Show all tags used by Rahul

SELECT 
   users.name AS user_name,
   tags.name AS tag_name
FROM users
INNER JOIN posts
  ON users.id = posts.user_id
INNER JOIN post_tags
  ON posts.id = post_tags.post_id
INNER JOIN tags
  ON post_tags.tag_id = tags.id
WHERE users.name = 'Rahul'
ORDER BY tags.name;

-- Output:
-- user_name | tag_name
-- ----------+----------
-- Rahul     | backend