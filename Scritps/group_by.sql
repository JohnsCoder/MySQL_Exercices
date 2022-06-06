/* 	Agrupa registros de acordo com o que você quer que ele agrupe,	
	Obs. tem que ser algo que se repita para ser agrupado. 			*/
select u.first_name, count(email ) as total from users u
join profiles as p
on p.user_id = u.id
WHERE u.id in (141, 143, 191) 
GROUP BY first_name
order by total desc;

