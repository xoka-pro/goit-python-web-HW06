-- Знайти середній бал у групах з певного предмета.
SELECT disciplines.name, grps.name, ROUND(AVG(grades.grade), 2) AS average_grade
FROM grades
JOIN students ON students.id = grades.student_id
JOIN disciplines ON disciplines.id = grades.discipline_id
JOIN grps ON grps.id = students.group_id
WHERE disciplines.id = 3
GROUP BY grps.name, disciplines.name
ORDER BY average_grade DESC;