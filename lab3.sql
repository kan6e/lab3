-- если товар ни разу не был заказан, осавить пустое место
SELECT
p.product_code,
p.name,
p.color,
oc.order_number,
oc.quantity
FROM products p
LEFT JOIN order_contents oc ON p.product_code = oc.product_code;

-- если был заказ товар. не зарегистрированный в бд, оставив пустое поле

SELECT
p.product_code,
p.name,
p.color,
oc.order_number,
oc.product_code AS order_product_code,
oc.quantity
FROM products p
RIGHT JOIN order_contents oc ON p.product_code = oc.product_code;
