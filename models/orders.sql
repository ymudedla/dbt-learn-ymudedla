select o.order_id,o.customer_id,sum(p.aud_amount) as order_amount
from {{ ref('stg_orders') }} o
left join
{{ ref('stg_payments') }} p
on o.order_id = p.order_id
where p.payment_status = 'success' or p.payment_status is null
group by o.order_id,o.customer_id

