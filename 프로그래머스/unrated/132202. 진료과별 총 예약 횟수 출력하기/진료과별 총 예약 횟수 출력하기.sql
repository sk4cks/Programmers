-- 코드를 입력하세요"
SELECT mcdp_cd 진료과코드,count(*) "5월예약건수" from appointment where to_char(apnt_ymd,'yyyy-mm')='2022-05' 
group by mcdp_cd order by "5월예약건수" asc, 진료과코드 asc