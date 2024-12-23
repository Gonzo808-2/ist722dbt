with cleaned as (
  select
    ab_id,
    ab_account_id,
    ab_plan_id,
    ab_date,
    ab_billed_amount
  from {{ source('fudgeflix_v3', 'ff_account_billing') }}
)
select * from cleaned;
