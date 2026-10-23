SELECT level, COUNT(user_id) as count_students
FROM student
WHERE education_form = 'personal'
GROUP BY level
ORDER BY count_students DESC;

SELECT education_form, COUNT(user_id) as count_students
FROM student
WHERE level = 'Advanced'
GROUP BY education_form
ORDER BY count_students ASC;

SELECT MIN(group_id) as min_group_id, MAX(group_id) as max_group_id
FROM group_student;

SELECT group_id, COUNT(user_id) as students_count
FROM group_student
GROUP BY group_id
ORDER BY students_count DESC
LIMIT 1;