SELECT
    CASE
        WHEN student_rating < 30 THEN 'неудовлетворительно'
        WHEN student_rating >= 30 AND student_rating < 60 THEN 'удовлетворительно'
        WHEN student_rating >= 60 AND student_rating < 85 THEN 'хорошо'
        ELSE 'отлично'
    END AS "оценка",
    COUNT(*) AS "количество студентов"
FROM
    course
	RIGHT JOIN student_on_course ON course.id = student_on_course.course_id
GROUP BY
    оценка
ORDER BY
    оценка;
