with cleaned as (
  select
    at_id,
    at_account_id,
    at_title_id,
    at_queue_date,
    at_shipped_date,
    at_returned_date,
    at_rating
  from {{ source('fudgeflix_v3', 'ff_account_titles') }}
)
select * from cleaned;
