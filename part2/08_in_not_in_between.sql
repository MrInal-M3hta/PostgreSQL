
-- IN -> value must match one item from the list. OR “Return rows whose value is in this list.”
-- NOT IN -> value must not match any time from the list. OR “Return rows whose value is NOT in this list.”
-- BETWEEN -> value must be inside a range. OR “Return rows whose value is between this range.”


SELECT name, category, price 
FROM products
WHERE category IN ('stationery', 'furniture');

SELECT name, category
FROM products
WHERE category NOT IN ('electronics', 'furniture');

SELECT name, price
FROM products
WHERE price BETWEEN 100 AND 2000; -- It will include 100 and 2000 as well.


SELECT name, category, price, stock
FROM products
WHERE category IN ('electronics', 'stationery')
   AND price BETWEEN 10 AND 1499;