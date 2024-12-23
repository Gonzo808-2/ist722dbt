with cleaned as (
  select
    cast_people_id,
    cast_title_id
  from {{ source('fudgeflix_v3', 'ff_cast') }}
)
select * from cleaned;
