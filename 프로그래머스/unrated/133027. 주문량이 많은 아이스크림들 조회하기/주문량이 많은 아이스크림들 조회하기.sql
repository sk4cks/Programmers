-- 코드를 입력하세요
select flavor from
(select * from
(SELECT flavor,sum(total_order) tt from july group by flavor) a join first_half b using(flavor)
order by tt+total_order desc)
where rownum<4