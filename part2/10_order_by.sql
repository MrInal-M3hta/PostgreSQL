

-- ORDER BY -> “Return rows whose value is NOT in this list.”

SELECT name, price
FROM products
ORDER BY price ASC;

SELECT name, price
FROM products
ORDER BY price DESC;

SELECT name, category, price
FROM products
ORDER BY category ASC, price DESC;