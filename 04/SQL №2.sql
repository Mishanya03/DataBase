UPDATE student_on_course_kn
SET student_rating = CASE
    WHEN student_rating BETWEEN 0 AND 60 THEN student_rating - 5
    WHEN student_rating BETWEEN 61 AND 80 THEN student_rating - 10
    WHEN student_rating BETWEEN 81 AND 90 THEN student_rating - 15
    ELSE student_rating - 20
END;
