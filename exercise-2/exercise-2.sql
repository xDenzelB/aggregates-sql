-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT 
city.city, 
SUM(amount)
FROM 
payment 
LEFT JOIN 
customer 
ON 
customer.customer_id = payment.customer_id
LEFT JOIN 
address 
ON 
address.address_id = customer.address_id
LEFT JOIN 
city 
ON 
city.city_id = address.city_id
GROUP BY 
city.city 
ORDER BY 
SUM DESC
LIMIT
10;