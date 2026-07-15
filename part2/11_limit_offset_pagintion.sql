

-- limit -> how many rows you want to return || “Return only this many rows.”
-- offset -> how many rows we want to skip || “Skip this many rows before returning the rows.”

SELECT name, price
FROM products
ORDER BY price DESC
LIMIT 5;


SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 0;


SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 5;

-- Pagination formula:
--  OFFSET = (Page Number - 1) × LIMIT
-- (3 - 1) * 5 -> 10

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 10;
