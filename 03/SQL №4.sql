INSERT INTO course(id, name, is_online, amount_of_students, college_id)
VALUES (60, 'Machine Learning', false, 17, (SELECT college_id FROM course WHERE name = 'Data Mining'));