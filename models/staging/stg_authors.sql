with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_authors') }}

),

renamed as (

    select
        Author_ID as author_id,
        Author_Name as author_name



    from source

)

select * from renamed