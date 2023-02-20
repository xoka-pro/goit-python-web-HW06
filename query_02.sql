-- Знайти студента із найвищим середнім балом з певного предмета
SELECT disciplines.name, students.fullname, ROUND(AVG(grades.grade), 2) AS average_grade
FROM grades
JOIN students ON students.id = grades.student_id
JOIN disciplines ON disciplines.id = grades.discipline_id
WHERE disciplines.id = 3
GROUP BY students.fullname
ORDER BY average_grade DESC
LIMIT 1;