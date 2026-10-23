SELECT gs.user_id, gs.group_id
FROM group_student gs
JOIN teacher t ON gs.group_id = t.group_id
WHERE t.email = 'blanda.jamil@yahoo.com';

SELECT s.level
FROM users u
JOIN student s ON u.user_id = s.user_id
WHERE u.user_email = 'gpagac@jacobs.com';

SELECT COUNT(u.user_id)
FROM users u
LEFT JOIN student s ON u.user_id = s.user_id
WHERE s.user_id IS NULL;

SELECT DISTINCT s.level AS unique_level
FROM student s
JOIN group_student gs ON s.user_id = gs.user_id
WHERE gs.group_id = 10;