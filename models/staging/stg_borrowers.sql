with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_borrowers') }}

),

renamed as (

    select
      Borrower_ID as borrower_id,
      Name	as borrower_name,
      Email as email




    from source

)

select * from renamed