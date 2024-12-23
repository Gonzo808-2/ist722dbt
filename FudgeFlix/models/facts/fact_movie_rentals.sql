{{ config(materialized='incremental') }}

select
    at.at_id as rental_id,
    at.at_title_id as title_id,
    at.at_account_id as account_id,
    at.at_shipped_date as rental_date,
    at.at_returned_date as return_date,
    datediff(day, at.at_shipped_date, at.at_returned_date) as rental_duration
from {{ source('fudgeflix_v3', 'ff_account_titles') }} at
where at.at_shipped_date is not null and at.at_returned_date is not null
