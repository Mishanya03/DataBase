SELECT
    student.name AS student_name,
    course.name AS course_name,
    college.name AS student_college,
    student_on_course.student_rating
FROM
    student_on_course
    JOIN student ON student_on_course.student_id = student.id
    JOIN college ON student.college_id = college.id
    JOIN course ON student_on_course.course_id = course.id
WHERE
    student_on_course.student_rating > 50
    AND college.size > 5000

ORDER BY
    student_name, course_name;
