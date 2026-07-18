-- like - case sensitive pattern match
-- ilike - case insensitive pattern match
-- % means any number of chars
-- _ means exactly one char

-- the % after wireless means anything can come after it
SELECT name, price
FROM products
WHERE name LIKE 'Wireless%';

-- Desk, desk, DESK
SELECT name, category, price
FROM products
WHERE name ILIKE '%desk%'
-- Anything before
--     desk, Desk, DESK
-- Anything after

SELECT name, category, description
FROM products
WHERE name ILIKE '%chair%'
    OR description ILIKE '%chair%';