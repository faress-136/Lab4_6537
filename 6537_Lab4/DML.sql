SELECT
    customer_name
FROM
    `customer`
WHERE
    `customer_name` LIKE 'Ma%';

    





SELECT
    order_item.order_id,
    COUNT(order_item.item_id),
    order_item.quantity *(
    SELECT
        item.item_id
    FROM
        item
    WHERE
        order_item.order_id = item.item_id
)
FROM
    order_item
GROUP BY
    order_item.order_id;







SELECT
    order.order_id,warehouse.warehouse_city
FROM
    warehouse,
    shipment,
    order
WHERE
    warehouse.warehouse_id = shipment.warehouse_id AND shipment.order_id =.order_id AND warehouse.warehouse_city = 'Arica'






CREATE VIEW order_numbers AS SELECT
    order.order_id
FROM
    shipment,
    order
WHERE
    shipment.order_id = order.order_id AND shipment.warehouse_id = 8



SELECT
    order_item.quantity * item.unit_price
FROM
    order_numbers,
    order_item,
    item
WHERE
    order_numbers.order_id = order_item.order_id AND order_item.item_id = item.item_id
GROUP BY
    order_numbers.order_id;









   SELECT
    warehouse.warehouse_id,
    warehouse.warehouse_city,
    COUNT(shipment.order_id)
FROM
    warehouse
LEFT JOIN shipment ON warehouse.warehouse_id = shipment.warehouse_id
GROUP BY
    warehouse.warehouse_id;





    SELECT
    customer.customer_name,
    customer.customer_id,
    COUNT(order.order_id)
FROM
    customer
LEFT JOIN order ON customer.customer_id = order.customer_id
GROUP BY
    customer.customer_name
ORDER BY
    customer.customer_id ASC;



    SELECT
    item.item_id
FROM
    item
WHERE
    item.item_id NOT IN(
    SELECT
        item.item_id
    FROM
        item,
        order_item
    WHERE
        item.item_id = order_item.item_id
);





