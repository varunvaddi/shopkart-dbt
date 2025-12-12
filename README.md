**📦 ShopKart Analytics – dbt Project**

A production-ready dbt (Data Build Tool) project for transforming raw e-commerce data from Snowflake into clean, analytics-ready dimensional models.
This project includes staging models, marts (facts/dimensions), data quality tests, and documentation.

**🚀 Project Overview**

The goal of this project is to build a clean, scalable analytics layer on top of raw ShopKart data using dbt.
It follows a modern data stack approach:

Raw data → ingested into Snowflake

Staging models → clean + standardize source tables

Dimensional models → dim_customers, dim_products

Fact models → fct_orders, fct_shipments

Tests → unique + not-null tests for data quality

Documentation via dbt docs site

(Upcoming) Incremental models + Airflow orchestration


**🗂 Project Structure**
shopkart/
├── models/
│   ├── staging/
│   │   ├── stg_customers.sql
│   │   ├── stg_orders.sql
│   │   ├── stg_order_items.sql
│   │   ├── stg_products.sql
│   │   ├── stg_shipments.sql
│   ├── marts/
│   │   ├── dim/
│   │   │   ├── dim_customers.sql
│   │   │   ├── dim_products.sql
│   │   ├── fct/
│   │   │   ├── fct_orders.sql
│   │   │   ├── fct_shipments.sql
│   │   ├── schema.yml
│   ├── example/   # dbt demo models (optional)
├── snapshots/
├── tests/
├── macros/
└── profiles.yml

**🔧 How to Run This Project**

pip install dbt-snowflake

source dbt-env/bin/activate

dbt debug

dbt run

dbt test

dbt docs generate
dbt docs serve

**🔜 Planned Enhancements**

The next upgrades coming to the project:

**✅ Incremental Models**

We will convert:

fct_orders

fct_shipments

into incremental models using:\
{{ config(materialized='incremental',
          unique_key='order_id') }}


**Advanced Tests**

Relationships

Accepted values

Freshness testing

**🕒 Airflow Orchestration**

We will schedule:

dbt run

dbt test

dbt docs generate

using an Airflow DAG.


