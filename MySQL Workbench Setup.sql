SELECT * FROM USERS;
SELECT * FROM users WHERE users.created_at < '20100101';
SELECT users.handle AS User, COUNT(faves.id) AS Faves FROM users 
LEFT JOIN faves ON users.id = faves.user_id GROUP BY users.handle;
INSERT INTO USERS (first_name, last_name, handle, birthday, created_at, updated_at)
VALUE("Sebastian", "Chuaqui", "SACC", STR_TO_DATE('12/10/1976', '%m/%d/%Y'), NOW(), NOW());
DELETE FROM USERS WHERE ID = 6;
UPDATE USERS SET handle = 'SCC', last_name = 'Cano' WHERE id = 7;



