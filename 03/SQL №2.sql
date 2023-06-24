SELECT name, 'университет' AS object_type
FROM college
UNION ALL
SELECT name, 'курс' AS object_type
FROM course
ORDER BY object_type DESC, name;