select w year,to_number(e) month,ss puchased_users,round(ss/ff,1) puchased_ratio from

(select to_char(joined,'yyyy') q, to_char(sales_date,'yyyy') w, to_char(sales_date,'mm') e, count(distinct user_id) ss from user_info join online_sale using(user_id) where to_char(joined,'yyyy')=2021 group by to_char(joined,'yyyy'),to_char(sales_date,'yyyy') , to_char(sales_date,'mm'))a
join
(select to_char(joined,'yyyy') cc,count(user_id) ff from user_info group by to_char(joined,'yyyy')) b
on a.q=b.cc
order by w,e