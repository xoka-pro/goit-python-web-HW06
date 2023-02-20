-- Знайти список курсів, які відвідує студент.
SELECT students.fullname, disciplines.name
FROM grades
JOIN students ON students.id = grades.student_id
JOIN disciplines ON disciplines.id = grades.discipline_id
WHERE grades.student_id = 5
GROUP BY disciplines.name;