DELETE FROM student_on_course_kn
WHERE student_id IN (SELECT id FROM student WHERE city = 'Новосибирск') AND course_id IN (SELECT id FROM course WHERE name = 'Цифровая трансформация');
