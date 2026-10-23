SELECT s.level AS stud_level
FROM student AS s
WHERE s.user_id = 9651;

SELECT email
FROM teacher
WHERE group_id BETWEEN 180 AND 195;

SELECT user_id
FROM users
WHERE user_email LIKE '%43@yahoo.com';