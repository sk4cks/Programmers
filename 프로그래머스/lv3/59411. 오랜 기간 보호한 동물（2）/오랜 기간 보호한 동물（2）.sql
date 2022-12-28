-- 코드를 입력하세요
(select animal_id,name from
(SELECT animal_id,o.datetime-i.datetime datea,i.name from animal_ins i join animal_outs o using(animal_id) order by datea desc)a where rownum<3)