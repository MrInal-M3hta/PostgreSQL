

-- null - missing/unknown value
-- u should not check null using = null
-- Instead use IS NULL or IS NOT NULL to check for null values.


SELECT name, description
FROM products
WHERE description IS NULL;


SELECT name, description
FROM products
WHERE description IS NOT NULL;

SELECT name, category, is_active, description
FROM products
WHERE is_active = TRUE
   AND description IS NULL;