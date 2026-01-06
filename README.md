# zepto  categories  to selling prices online data analysis with sql
[zepto logo](https://github.com/ramanji567/zepto-sql-project/blob/main/images.jpg)

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
select count(*) from netflix;
select * from netflix
limit 10 ;
