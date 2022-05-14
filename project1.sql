SELECT count(*) FROM sales.transactions;

SELECT * FROM sales.transactions;

# Mark001 code analysis
select * from sales.transactions
where market_code = "Mark001";

# Show distrinct product codes that were sold in chennai
select distinct(product_code) from sales.transactions a1
join sales.markets a2
on  a1.market_code=a2.markets_code
where a2.markets_name = "Chennai" ;

# Show transactions where currency is US dollars
select distinct(currency) from sales.transactions;
select * from sales.transactions 
where currency = "USD";

#Show transactions in 2020 join by date table
select t.* , d.* from sales.transactions t
join sales.date d 
on t.order_date = d.date;

# Show total revenue in year 2020,
select sum(sales_amount) from sales.transactions
where year(order_date) = "2020";

# Show total revenue in year 2020, January Month,
select sum(sales_amount) from sales.transactions
where year(order_date) = "2020" and month(order_date)=1;

# Show total revenue in year 2020 in Chennai
select sum(t.sales_amount) from sales.transactions t
join sales.markets m
on t.market_code = m.markets_code
join sales.date d
on t.order_date = d.date
where m.markets_name = "Chennai" and year(t.order_date) = "2020";

