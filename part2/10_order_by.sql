

-- ORDER BY -> “Return rows whose value is NOT in this list.”

SELECT name, price
FROM products
ORDER BY price ASC; -- ASC means ascending order, lowest to highest

SELECT name, price
FROM products
ORDER BY price DESC; -- DESC means descending order, highest to lowest

SELECT name, category, price
FROM products
ORDER BY category ASC, price DESC;