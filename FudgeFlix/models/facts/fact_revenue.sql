{{ config(materialized='incremental') }}

select
    ab.ab_id as billing_id,
    ab.ab_account_id as account_id,
    ab.ab_plan_id as plan_id,
    ab.ab_billed_amount as billed_amount,
    ab.ab_date as billing_date
from {{ source('fudgeflix_v3', 'ff_account_billing') }} ab
