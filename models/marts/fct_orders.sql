{{ config(
    materialized='table'
) }}

SELECT
    o.ORDER_ID,
    o.CUSTOMER_ID,
    c.CUSTOMER_NAME,
    o.ORDER_DATE,
    o.ORDER_AMOUNT,
    oi.PRODUCT_ID,
    p.PRODUCT_NAME,
    p.CATEGORY,
    oi.QUANTITY,
    oi.PRICE AS ITEM_PRICE
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ ref('stg_customers') }} c
    ON o.CUSTOMER_ID = c.CUSTOMER_ID
LEFT JOIN {{ ref('stg_order_items') }} oi
    ON o.ORDER_ID = oi.ORDER_ID
LEFT JOIN {{ ref('stg_products') }} p
    ON oi.PRODUCT_ID = p.PRODUCT_ID
