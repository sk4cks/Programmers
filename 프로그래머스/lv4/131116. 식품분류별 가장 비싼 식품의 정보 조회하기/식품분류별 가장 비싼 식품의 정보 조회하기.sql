select a.category category,max_price,product_name from 
(select category,max(price) max_price from food_product f group by category) a join food_product b
on a.category=b.category and a.max_price = b.price
where a.category in('과자','국','김치','식용유')
order by max_price desc