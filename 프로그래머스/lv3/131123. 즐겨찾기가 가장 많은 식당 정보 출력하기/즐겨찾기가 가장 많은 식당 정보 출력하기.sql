-- 코드를 입력하세요
select a.food_type,b.rest_id,b.rest_name,a.favorites from
(SELECT food_type,max(favorites) favorites from rest_info group by food_type)a
join rest_info b
on a.food_type=b.food_type and a.favorites = b.favorites
order by food_type desc