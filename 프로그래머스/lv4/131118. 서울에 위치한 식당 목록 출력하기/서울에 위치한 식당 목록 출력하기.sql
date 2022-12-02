-- 코드를 입력하세요
select rest_id, a.rest_name, a.food_type, a.favorites, a.address, b.score 
from rest_info a 
join (SELECT rest_id,round(avg(review_score),2) score 
        from rest_review group by rest_id) b
using(rest_id) 
where a.address like '서울%' 
order by b.score desc, a.favorites desc;