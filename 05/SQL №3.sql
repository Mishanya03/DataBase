SELECT
    student.name AS student_name,
    course.name AS course_name
FROM
    student
    JOIN college ON student.college_id = college.id
    JOIN student_on_course ON student.id = student_on_course.student_id
    JOIN course ON student_on_course.course_id = college.id AND course.college_id = college.id
ORDER BY
    student_name;