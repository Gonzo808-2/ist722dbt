with base as (
    select
        ab_id as billing_key,
        ab_account_id,
        ab_plan_id,
        ab_date,
        ab_billed_amount
    from {{ ref('stg_ff_account_billing') }}
)
select * from base;
