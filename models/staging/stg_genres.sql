with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_genres') }}

),

renamed as (

    select
        Genre_ID as genre_id,
        Genre_Name as genre_name


    from source

)

select * from renamed