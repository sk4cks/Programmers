-- 코드를 입력하세요
select a.user_id user_id, a.product_id product_id from
(SELECT user_id,product_id,row_number() over(partition by user_id,product_id order by sales_date asc) bb from online_sale)a where a.bb=2 order by a.user_id asc, a.product_id desc;