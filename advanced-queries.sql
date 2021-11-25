/*
Instructions:
1. List each pair of actors that have worked together.
2. For each film, list actor that has acted in more films.
*/

-- 1 
SELECT a1.actor_id AS act_1, a2.actor_id AS act_2 FROM sakila.film_actor AS a1
JOIN sakila.film_actor AS a2
ON a1.actor_id > a2.actor_id
AND a1.film_id = a2.film_id;

-- 2
SELECT * from (
	SELECT film_id, count(actor_id) AS number_of_actors_per_film FROM sakila.film_actor
	GROUP BY film_id
	HAVING number_of_actors_per_film > 1
    )sub1
;

