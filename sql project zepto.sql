
 create table netflix
(
  Category varchar(100),
  name	varchar(100),
mrp	 int,
discountPercent	int,
availableQuantity int,	
discountedSellingPrice int,
weightInGms	int,
outOfStock	varchar(100),
quantity int
)
select * from netflix;
select count(*) from netflix;
select * from netflix
limit 10 ;
select * from netflix
where name is null
or
category is null
or 
mrp is null
or
discountpercent is null
or
availablequantity is null
or
discountedsellingprice is null
or
weightingms is null
or
outofstock is null
or 
quantity is null;
select distinct weightingms
from netflix
order by weightingms;
 
select outofstock, count(name)
from netflix
group by outofstock;

select name,count(name) as "Number of skus"
from netflix 
group by name
having count(name) >1
order by count(name) DESC;

select * from netflix
where mrp = 0 or discountedsellingprice =0;

delete from netflix
where mrp =0;

update  netflix
set mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;

select mrp,discountedsellingprice from netflix;


--- Q1. find the top 10 best value products based on the discount percentage,
select distinct name , mrp,discountpercent
from netflix
order by discountpercent desc
limit 10;
--- Q2. what are the products with high MRP but out of stock,
select distinct name, mrp
from netflix
WHERE outofstock = 'TRUE' and mrp > 300
order by mrp desc;
--- Q3.calculate estimated revenue for each category,
select category,
sum (discountedsellingprice * availableQuantity) as total_revenue
from netflix
group by category
order by total_revenue
----Q4.find all products where mrp is greater than 500 and discount is less than 10%
select distinct name , mrp,discountpercent
from netflix
where mrp > 500 and discountpercent < 10
order by mrp desc, discountpercent desc
---Q5. identify the top 5 categories offering the highest average discount percentage
select category,
round(avg(discountpercent),2) as avg_discount
from netflix
group by category
order by avg_discount desc
limit 5
---Q6.find the price per gram for products above 100g and sort by best value,
select distinct name , weightInGms,discountedsellingprice,
round((discountedsellingprice/weightInGms),3) as price_per_gm
from netflix
where weightInGms >=100
order by price_per_gm
---Q7.group the products into categories like low,medium,Bulk
select distinct name ,weightInGms ,
case when weightInGms < 1000 then 'low'
     when weightInGms < 5000 then 'medium'
     else 'Bulk'
     end as weight_category
from netflix
---Q8.what is the total inventory weight in category
select category,
sum(weightInGms * availableQuantity) as total_weight
from netflix
group by category
order by total_weight;