SELECT
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount/100 as amount, --amount stored in cents to convert into dollars
    created as created_at
FROM
    {{source('stripe','payment')}}