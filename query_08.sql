-- Знайти середній бал, який ставить певний викладач зі своїх предметів.
SELECT teachers.fullname, ROUND(AVG(grades.grade), 2) AS average_grade
FROM grades
JOIN disciplines ON disciplines.id = grades.discipline_id
JOIN teachers ON teachers.id = disciplines.teacher_id
WHERE teachers.id = 5
GROUP BY teachers.fullname;