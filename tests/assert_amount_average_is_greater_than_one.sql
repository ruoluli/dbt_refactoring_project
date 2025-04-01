select
    customer_id, 
    avg(total_amount_paid) as average_amount
from {{ ref('int_orders') }}
group by 1
having count(customer_id) > 1 and average_amount < 1