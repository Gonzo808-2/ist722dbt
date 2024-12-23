with base as (
    select
        genre_name as genre_key,
        genre_name
    from {{ ref('stg_ff_genres') }}
)

select * from base;
