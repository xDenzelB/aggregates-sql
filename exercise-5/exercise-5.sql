-- the total run time of all inventory items if they were all played back to back
SELECT
SUM(film.length)
FROM 
inventory
LEFT JOIN 
film
ON 
film.film_id = inventory.film_id
ORDER BY
SUM DESC 
LIMIT
10;