
-- group by creates groups of rows
-- WHERE -> filters normal rows before grouping
-- HAVING filters groups after grouping

-- find authors who have written atleast 2 posts

SELECT 
  u.name AS author_name,
  COUNT(p.id) AS total_posts,
  SUM(p.views) AS total_views
FROM users AS u
LEFT JOIN posts as p
   ON u.id = p.user_id
GROUP BY u.id, u.name
HAVING COUNT(p.id) >= 2
ORDER BY total_posts DESC;


/*


“Why didn’t we write WHERE COUNT(p.id) >= 2?”

Because of the order in which SQL is logically processed.

The logical order is:

1. FROM
2. JOIN
3. WHERE
4. GROUP BY
5. Aggregate functions (COUNT, SUM, etc.)
6. HAVING
7. SELECT
8. ORDER BY

When WHERE runs, the groups don’t exist yet, so COUNT(p.id) hasn’t been calculated.

HAVING runs after GROUP BY and after the aggregates are computed, so it can filter based on values like COUNT() or SUM().


*/