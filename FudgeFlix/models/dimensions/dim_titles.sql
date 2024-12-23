with base as (
    select
        title_id as title_key,
        title_name,
        title_type,
        title_synopsis,
        title_avg_rating,
        title_release_year,
        title_runtime,
        title_rating,
        title_bluray_available,
        title_dvd_available,
        title_instant_available,
        title_date_modified
    from {{ ref('stg_ff_titles') }}
)

select * from base;
