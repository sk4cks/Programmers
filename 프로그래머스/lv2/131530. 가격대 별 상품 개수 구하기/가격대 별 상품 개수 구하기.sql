select trunc(price,-4) PRICE_GROUP,count(*) PRODUCTS from product group by trunc(price,-4) order by PRICE_GROUP