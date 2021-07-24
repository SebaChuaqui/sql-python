use friendships;

--Ejemplo--
SELECT users.first_name, users.last_name, friend.first_name AS friend_first_name, 
friend.last_name AS friend_last_name FROM users JOIN friendships ON users.id = friendships.user_id
JOIN users as friend ON friend.id = friendships.friend_id;

--1--
SELECT users.first_name, users.last_name FROM users 
JOIN friendships ON users.id = friendships.user_id
JOIN users as friend ON friend.id = friendships.friend_id
WHERE friend.first_name = 'Kermit';

--2--
SELECT users.first_name AS 'Nombre', users.last_name AS 'Apellido', count(friend.id) 
AS Amigos FROM users
LEFT JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS friend ON friendships.friend_id = friend.id
GROUP BY users.id;

--3--
SELECT users.first_name AS 'Nombre', users.last_name as 'Apellido', count(friend.id) AS Amigos FROM users
LEFT JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS friend ON friendships.friend_id = friend.id
GROUP BY users.id
ORDER BY count(friend.id) DESC;

--4--

select * from friendships; 
select * from users; 

INSERT INTO users (first_name, last_name, created_at, updated_at)
VALUES ('Sebastian', 'Chuaqui', NOW(), NOW());

INSERT INTO friendships (user_id, friend_id, created_at, updated_at)
VALUES (6, 2, NOW(), NOW());

INSERT INTO friendships (user_id, friend_id, created_at, updated_at)
VALUES (6, 4, NOW(), NOW());

INSERT INTO friendships (user_id, friend_id, created_at, updated_at)
VALUES (6, 5, NOW(), NOW());

--5--




