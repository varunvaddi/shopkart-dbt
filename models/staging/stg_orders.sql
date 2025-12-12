{{ config(
    materialized='view'
) }}

SELECT
    order_id,
    customer_id,
    order_date,
    order_amount
FROM RAW.ORDERS
