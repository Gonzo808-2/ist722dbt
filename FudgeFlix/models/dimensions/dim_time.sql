{{ config(materialized='incremental') }}

select
    ab_date as date,
    dayofweek(ab_date) as day_of_week,
    month(ab_date) as month,
    quarter(ab_date) as quarter,
    year(ab_date) as year
from {{ source('fudgeflix_v3', 'ff_account_billing') }}
group by ab_date
