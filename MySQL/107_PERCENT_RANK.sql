-- Find the products that fall within the highest 40% of the prices
use salesdb;
select 
	*,
    concat(DistRank * 100, '%') as DistRankPercent
    from (
	select
		ProductID, 
		Product, 
		Price,
		percent_rank() over(order by Price desc) as DistRank
	from products) t
where DistRank <= 0.4;