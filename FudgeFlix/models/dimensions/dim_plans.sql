{{ config(materialized='incremental') }}

select
    p.plan_id,
    p.plan_name,
    p.plan_price,
    case
        when p.plan_current = true then 'Active'
        else 'Inactive'
    end as is_current_plan
from {{ source('fudgeflix_v3', 'ff_plans') }} p
