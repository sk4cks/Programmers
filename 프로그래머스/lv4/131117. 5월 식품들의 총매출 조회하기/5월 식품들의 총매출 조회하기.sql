-- 코드를 입력하세요
SELECT product_id,product_name,sum(price*amount) total_sales FROM food_product a join food_order b using(product_id) 
where to_char(produce_date,'yyyy-mm') = '2022-05' 
group by product_id,product_name
order by total_sales desc,product_id