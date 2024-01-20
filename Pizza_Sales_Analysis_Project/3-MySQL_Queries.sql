select * from pizza_sales;
 
# Total Revenue
select sum(total_price) from pizza_sales;


# Average order value
select sum(total_price)/count(distinct order_id) from pizza_sales;


#Total Pizzas sold
select sum(quantity) from pizza_sales;


# Total orders
select  count(distinct order_id) from pizza_sales;


#Average Pizzas per order
select sum(quantity) / count(distinct order_id) from pizza_sales;


desc pizza_sales;


# Daily trends for total orders
select dayname(order_date),count(distinct order_id) from pizza_sales group by dayname(order_date);


# Hourly Trends for total orders
select hour(order_time),count(distinct order_id) from pizza_sales group by hour(order_time);


# Percentage of sales by pizza category
select pizza_category,sum(total_price)/(select sum(total_price) from pizza_sales)*100 
from pizza_sales group by pizza_category;


#  Percentage of sales by pizza size
select pizza_size,sum(total_price)/(select sum(total_price) from pizza_sales)*100 
from pizza_sales group by pizza_size;


# Total pizzas sold by Pizza category
select pizza_category,sum(quantity) from pizza_sales group by pizza_category;


# Top 5 best sellers by total pizzas sold 
select pizza_name , sum(quantity) from pizza_sales group by pizza_name order by sum(quantity) desc limit 5 ;


# bottom 5 worst sellers by total pizzas sold 
select pizza_name , sum(quantity) from pizza_sales group by pizza_name order by sum(quantity)  limit 5 ;


