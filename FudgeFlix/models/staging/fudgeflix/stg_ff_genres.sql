with cleaned as (
  select
    zip_code,
    zip_city,
    zip_state
  from {{ source('fudgeflix_v3', 'ff_zipcodes') }}
)
select * from cleaned;
