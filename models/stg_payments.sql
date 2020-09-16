select id, orderid as order_id,paymentmethod,status as payment_status,amount/100 aud_amount
from raw.stripe.payment