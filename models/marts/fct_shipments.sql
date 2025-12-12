{{ config(
    materialized='table'
) }}

SELECT
    s.shipment_id,
    s.order_id,
    o.customer_id,
    o.order_date,
    s.shipment_date,
    s.delivery_date,
    s.carrier
FROM {{ ref('stg_shipments') }} s
LEFT JOIN {{ ref('stg_orders') }} o
    ON s.order_id = o.order_id
