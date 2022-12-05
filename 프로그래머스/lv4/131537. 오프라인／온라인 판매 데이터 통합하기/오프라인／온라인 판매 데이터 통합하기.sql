-- 코드를 입력하세요
select * from
(
SELECT to_char(sales_date,'yyyy-mm-dd') sales_date, product_id, user_id, sales_amount from online_sale where to_char(sales_date,'yyyy-mm') = '2022-03'
    UNION ALL
SELECT to_char(sales_date,'yyyy-mm-dd') sales_date, product_id, null user_id, sales_amount from offline_sale where to_char(sales_date,'yyyy-mm') = '2022-03'
)
order by sales_date asc, product_id asc, user_id asc