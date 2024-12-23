with base as (
    select
        account_id as account_key,
        account_firstname || ' ' || account_lastname as full_name,
        account_email,
        account_address,
        zip_code,
        account_opened_on,
        plan_id
    from {{ ref('stg_ff_accounts') }}
)
select * from base;
