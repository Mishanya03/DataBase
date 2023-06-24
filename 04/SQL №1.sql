CREATE TABLE student_on_course_kn AS
SELECT *
FROM student_on_course
WHERE student_id IN (SELECT id FROM student WHERE city IN ('Казань','Новосибирск'));