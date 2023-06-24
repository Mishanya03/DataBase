SELECT id
FROM course
WHERE id NOT IN (SELECT id FROM student_on_course)
UNION ALL
SELECT id
FROM student_on_course
WHERE id NOT IN (SELECT id FROM course)
ORDER BY 1;