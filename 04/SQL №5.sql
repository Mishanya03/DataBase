SELECT
    student.name AS student_name,
    student_on_course_kn.student_rating,
    student_college.name AS student_college_name,
    course.name AS course_name,
    course_college.name AS course_college_name
FROM
    student_on_course_kn
    JOIN student ON student_on_course_kn.student_id = student.id
    JOIN college AS student_college ON student.college_id = student_college.id
    JOIN course ON student_on_course_kn.course_id = course.id
    JOIN college AS course_college ON course.college_id = course_college.id
ORDER BY
    student_name, course_name;
