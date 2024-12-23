with cleaned as (
  select
    people_id,
    people_name
  from {{ source('fudgeflix_v3', 'ff_people') }}
)
select * from cleaned;
