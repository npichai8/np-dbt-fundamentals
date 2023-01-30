        with stripe AS (

    select 
        id as payment_id,
        orderid AS order_id,
        paymentmethod AS payment_method,
        status,
        {{ cents_to_dollars('amount', 4)}} as amount,
        created as created_at
    
    from demo_db.stripe.payment

)

SELECT * FROM stripe