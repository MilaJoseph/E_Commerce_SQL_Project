-- Q1. Which product has been ordered the most by quantity?
select p.product_id , p.product_name , sum(oi.quantity) as total_quantity
from products as p
join order_items as oi
on p.product_id = oi.product_id
group by p.product_id , p.product_name
order by total_quantity desc
limit 1;

-- Q2. Which product has generated the highest revenue in each category?
with 
total_revenue as(
select p.category , p.product_name , sum(p.price * oi.quantity) as tot_revenue 
from products as p
join order_items as oi
on p.product_id = oi.product_id
group by p.category , p.product_name) ,
ranked_products as (
	select category , product_name , tot_revenue , 
    rank() over(partition by category order by tot_revenue desc) as revenue_rank
    from total_revenue
)
select category , product_name , tot_revenue as highest_revenue
from ranked_products
where  revenue_rank = 1;

-- Q3. Which seller has sold the highest number of products?
select s.seller_id ,  s.seller_name , sum(oi.quantity) as quantity_sold
from sellers as s
join products as p
on s.seller_id = p.seller_id
join order_items as oi
on oi.product_id = p.product_id
group by s.seller_id , s.seller_name
order by quantity_sold desc
limit 1;

-- Q4. Which customers have placed the highest number of orders?
with number_of_orders as(
select c.customer_id , c.customer_name , count(o.order_id) as no_of_orders
from customers as c
join orders as o
on c.customer_id = o.customer_id
group by c.customer_id ,c.customer_name)

select customer_id , customer_name , no_of_orders 
from number_of_orders 
where no_of_orders = (select max(no_of_orders) from number_of_orders);

-- Q5. Which month generated the highest revenue?
select monthname(o.order_date) as order_month, sum(p.price * oi.quantity) as revenue
from products as p
join order_items as oi
on p.product_id = oi.product_id
join orders as o
on o.order_id = oi.order_id
group by monthname(o.order_date) 
order by revenue desc
limit 1;