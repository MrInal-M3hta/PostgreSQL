


-- calculate one result from many rows 
-- COUNT() -> number of rows 
-- SUM() -> total value
-- AVG() -> average value
-- MIN() -> smallest value
-- MAX() -> largest/max value
-- FILTER() -> The FILTER keyword in PostgreSQL is used with aggregate functions to calculate values only for rows that satisfy a condition.



-- admin dashboard, reports, analytics, admin panels in these kind of scenarios we use aggregate functions


SELECT 
  COUNT(*) AS total_posts,
  COUNT(*) FILTER (WHERE status = 'published') AS published_posts,
  COUNT(*) FILTER (WHERE status = 'draft') AS draft_posts,
  SUM(views) AS total_views,
  AVG(views) AS average_views,
  MIN(views) AS lowest_views,
  MAX(views) AS highest_views
FROM posts;