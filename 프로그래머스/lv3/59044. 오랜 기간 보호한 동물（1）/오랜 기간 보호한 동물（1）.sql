-- 코드를 입력하세요
select * from
(SELECT a.name,a.datetime from animal_ins a left join animal_outs b using(animal_id) where b.datetime is null 
 order by a.datetime) where rownum<4