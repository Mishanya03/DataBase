SELECT name, amount_of_students
FROM course
ORDER BY CASE WHEN amount_of_students = 300 THEN 1 END, amount_of_students ASC
LIMIT 3;