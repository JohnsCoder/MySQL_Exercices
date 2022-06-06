SELECT u.id uid, p.id pid,
p.bio, u.first_name 
FROM users u, profiles p
WHERE u.id = p.user_id;
