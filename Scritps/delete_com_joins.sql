DELETE p FROM users u
join profiles p
on p.user_id = u.id
WHERE u.first_name = 'Katelyn';