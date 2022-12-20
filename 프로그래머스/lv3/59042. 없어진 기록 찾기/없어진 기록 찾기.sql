-- 코드를 입력하세요
SELECT animal_id,b.name from animal_ins a right join animal_outs b using(animal_id) where a.datetime is null 
order by animal_id