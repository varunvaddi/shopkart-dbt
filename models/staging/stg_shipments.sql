{{ config(
    materialized='view'
) }}

SELECT
    shipment_id,
    order_id,
    shipment_date,
    delivery_date,
    carrier
FROM RAW.SHIPMENTS
