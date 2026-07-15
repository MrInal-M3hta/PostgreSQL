

-- SELECT name, category, price, is_active
-- FROM products
-- WHERE category = 'stationery';

-- UPDATE products
-- SET price = ROUND(price * 1.10, 2)
-- WHERE category = 'stationery';

-- SELECT name, category, price, is_active
-- FROM products
-- WHERE category = 'stationery';

UPDATE products
SET is_active = FALSE
WHERE stock = 0;

SELECT name, stock, is_active
FROM products
WHERE is_active = FALSE;

UPDATE products
SET is_active = TRUE
WHERE sku IN (SELECT sku FROM products WHERE price > 1001);

UPDATE products
SET stock = 0
WHERE category IN (
    -- This subquery returns ('furniture') because the Standing Desk is 15999.00
    SELECT category FROM products WHERE price > 10000 
);

SELECT  stock, is_active
FROM products
WHERE is_active = TRUE AND stock = 0;