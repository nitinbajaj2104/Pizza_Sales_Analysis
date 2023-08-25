create database db1;

select * from pizza_sales;

select sum(total_price) from pizza_sales;

select sum(total_price)/count(distinct order_id) from pizza_sales;

select sum(quantity) from pizza_sales;

select  count(distinct order_id) from pizza_sales;

select sum(quantity) / count(distinct order_id) from pizza_sales;

desc pizza_sales;

select dayname(order_date),count(distinct order_id) from pizza_sales group by dayname(order_date);

select hour(order_time),count(distinct order_id) from pizza_sales group by hour(order_time);

select pizza_category,sum(total_price)/(select sum(total_price) from pizza_sales)*100 
from pizza_sales group by pizza_category;

select pizza_size,sum(total_price)/(select sum(total_price) from pizza_sales)*100 
from pizza_sales group by pizza_size;

select pizza_category,sum(quantity) from pizza_sales group by pizza_category;

select pizza_name , sum(quantity) from pizza_sales group by pizza_name order by sum(quantity) desc limit 5 ;

select pizza_name , sum(quantity) from pizza_sales group by pizza_name order by sum(quantity)  limit 5 ;


