with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_books') }}

),

renamed as (

    select
        Book_ID	as book_id,
        Title as book_title,
        Author_ID as author_id,
        Genre_ID as genre_id,
        Publication_Year as publication_year,
        Price*41 as price_in_uah,
        Stock as stock



    from source

)

select * from renamed