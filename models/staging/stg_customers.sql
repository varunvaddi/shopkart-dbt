{{ config(
    materialized='view'
) }}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    CITY
FROM RAW.CUSTOMERS
