

-- UPDATE : is used to modify existing data in a table.

/*
Basic syntax of UPDATE statement is as follows:
    UPDATE table_name
    SET column_name = value1, column_name = value2, ...
    WHERE condition;

Think of it like this:

    UPDATE
    ↓
    Which table?

    SET
    ↓
    What do you want to change?

    WHERE
    ↓
    Which row(s)?

*/


SELECT name, price, stock, sku
FROM products
WHERE sku = 'ELEC-KEY-001';

UPDATE products
SET price = 1199.50,
    stock = 23
WHERE sku = 'ELEC-KEY-001';

SELECT name, price, stock, sku
FROM products
WHERE sku = 'ELEC-KEY-001';

-- ⚠️ Very Important: Never Forget WHERE