with cleaned as (
  select
    plan_id,
    plan_name,
    plan_price,
    plan_current
  from {{ source('fudgeflix_v3', 'ff_plans') }}
)
select * from cleaned;
