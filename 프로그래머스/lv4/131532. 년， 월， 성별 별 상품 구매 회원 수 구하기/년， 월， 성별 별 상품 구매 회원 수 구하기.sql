-- 코드를 입력하세요


SELECT to_char(sales_date,'yyyy') year,to_number(to_char(sales_date,'mm')) month,gender, count(distinct user_id) users from online_sale join user_info using(user_id)
where gender is not null
group by to_char(sales_date,'yyyy'),to_char(sales_date,'mm'),gender
order by year,month,gender