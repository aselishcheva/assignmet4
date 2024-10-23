with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('raw_transactions') }}

),

renamed as (

    select
       Transaction_ID as transaction_id,
       Borrower_ID as borrower_id,
       Book_ID as book_id,
       Borrow_Date as borrow_date,
       Return_Date as return_date,
       Status as status




    from source

)

select * from renamed