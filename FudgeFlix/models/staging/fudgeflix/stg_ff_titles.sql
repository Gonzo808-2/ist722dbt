with cleaned as (
  select
    title_id,
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
  from {{ source('fudgeflix_v3', 'ff_titles') }}
)
select * from cleaned;
