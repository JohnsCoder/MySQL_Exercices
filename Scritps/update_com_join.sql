UPDATE users as u
join profiles as p
on p.user_id = u.id
SET p.bio = concat(p.bio, ' atualizado')
WHERE u.first_name = 'Katelyn';