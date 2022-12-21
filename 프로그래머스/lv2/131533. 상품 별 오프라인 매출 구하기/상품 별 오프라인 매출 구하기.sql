-- 코드를 입력하세요

select product_code,sum(sales_amount)*price sales from offline_sale a join product b
using(product_id) group by price,product_code
order by sales desc, product_code