with cleaned as (
  select
    tg_genre_name,
    tg_title_id
  from {{ source('fudgeflix_v3', 'ff_title_genres') }}
)
select * from cleaned;
