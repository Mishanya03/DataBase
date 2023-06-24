SELECT
    course.name AS course_name,
    COALESCE(student.name, 'курс не используется') AS student_name
FROM
    course
    LEFT JOIN student_on_course ON course.id = student_on_course.course_id
    LEFT JOIN student ON student.id = student_on_course.student_id
WHERE
    course.is_online = false
ORDER BY
    course_name, student_name;
