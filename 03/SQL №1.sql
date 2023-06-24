SELECT name
FROM student
UNION All
SELECT name
FROM course
ORDER BY name DESC;