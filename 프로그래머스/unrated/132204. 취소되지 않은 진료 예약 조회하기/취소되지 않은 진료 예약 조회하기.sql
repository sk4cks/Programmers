-- 코드를 입력하세요
select a.apnt_no,pt_name,pt_no,a.mcdp_cd,dr_name,apnt_ymd from

(SELECT * from patient p join appointment a using(pt_no) where to_char(apnt_ymd,'yyyy-mm-dd')='2022-04-13' and mcdp_cd='CS' and apnt_cncl_yn='N')a join doctor d on a.mddr_id=d.dr_id

order by apnt_ymd