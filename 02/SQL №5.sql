SELECT name, amount_of_students
FROM course
WHERE is_online = 'true' AND amount_of_students BETWEEN 27 AND 310
ORDER BY name ASC, amount_of_students DESC;