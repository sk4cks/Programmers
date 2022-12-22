-- 코드를 입력하세요
SELECT category,sum(sales) total_sales  from book b join book_sales s using (book_id)
where to_char(sales_date,'yyyy-mm')='2022-01'
group by category
order by category