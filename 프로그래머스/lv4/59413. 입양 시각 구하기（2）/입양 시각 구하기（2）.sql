select yy hour,nvl(countt,0) count from
(select rownum-1 yy from dual connect by rownum<25) a left join
(select to_char(datetime,'hh24') tt,count(*) countt from animal_outs group by to_char(datetime,'hh24'))b
on a.yy=b.tt
order by yy