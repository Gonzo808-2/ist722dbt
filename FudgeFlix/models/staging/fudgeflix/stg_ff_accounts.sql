with cleaned as (
  select
    account_id,
    account_email,
    account_firstname,
    account_lastname,
    account_zipcode,
    account_plan_id,
    account_opened_on
  from {{ source('fudgeflix_v3', 'ff_accounts') }}
)
select * from cleaned;
