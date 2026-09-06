-- Q1. Which customers are from Kerala?

select * from customers
where state= 'kerala';

-- Q2. Which customers are aged 18 or below?

select * from customers
where age <= 18;

-- Q3. Which products are priced above ₹10,000?

select * from products
where price > 10000;

-- Q4. What are the 5 most expensive products?

select * from products
order by price desc
limit 5;

-- Q5. Which orders are currently in "Processing" status?

select * from orders
where order_status = 'processing';

-- Q6. Which orders were placed during september 2025?

select * from orders
where order_date between '2025-09-01' and '2025-09-30';

-- Q7. What are the different payment methods used by customers?

select distinct payment_type from payments;

-- Q8. Which customers signed up most recently?

select * from customers
order by signup_date desc
limit 1;