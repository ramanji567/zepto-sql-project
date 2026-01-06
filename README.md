# zepto  categories  to selling prices online data analysis with sql
[zepto logo](https://github.com/ramanji567/zepto-sql-project/blob/main/images.jpg)
sql questions and anwers
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
