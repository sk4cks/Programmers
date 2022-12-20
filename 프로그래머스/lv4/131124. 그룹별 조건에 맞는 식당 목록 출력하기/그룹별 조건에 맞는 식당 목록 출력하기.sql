-- 코드를 입력하세요

select member_name,review_text,to_char(review_date,'yyyy-mm-dd') review_date 
from member_profile aa join rest_review bb using(member_id) where member_id in

(select member_id from rest_review a join member_profile b using(member_id) having count(review_id)=
(select max(count) from 
(SELECT member_id,count(review_id) count from rest_review group by member_id) )
group by member_id)


order by review_date,review_text