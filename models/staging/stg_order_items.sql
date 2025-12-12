{{ config(
    materialized='view'
) }}

SELECT
    order_item_id,
    order_id,
    product_id,
    quantity,
    price
FROM RAW.ORDER_ITEMS
